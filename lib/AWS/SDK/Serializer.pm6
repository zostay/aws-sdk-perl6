use v6;

use DateTime::Format;

use AWS::SDK::Meta;
use AWS::SDK::Shape;

constant ISO8601       = '%Y-%m-%dT%H:%M:%SZ';
constant ISO8601_MICRO = '%Y-%m-%dT%H:%M:%S.%6NZ';
constant RFC822        = '%a, %d %b %Y %T %z';

my multi format-timestamp('iso8601', $value) {
    if $value.whole-second < $value.second {
        strftime(ISO8601_MICRO, $value.utc);
    }
    else {
        strftime(ISO8601, $value.utc);
    }
}

my multi format-timestamp('unixtimestamp', $value) {
    $value.posix
}

my multi format-timestamp('rfc822', $value) {
    strftime(RFC822, $value.utc);
}

class AWS::SDK::Serializer {
    method serialize(AWS::SDK::Shape $o) returns Hash { ... }
}

class AWS::SDK::QuerySerializer is AWS::SDK::Serializer {
    method TIMESTAMP-FORMAT { 'iso8601' }

    method get-serialized-name(AWS::SDK::Meta::ShapeReference $r, Str $default-name) {
        $r.location-name // $default-name
    }

    method serialize(AWS::SDK::Shape $o) returns Hash {
        my $shape = $.model.shapes{ $o.^name };
        % = flat self.serialize-value($shape, $o);
    }

    multi method serialize-value(
        AWS::SDK::Meta::Shape::Structure $s,
        $object,
        Str :$prefix = '',
    ) {
        for $object.shape-members -> $attr {
            my $key           = $attr.shape-member;
            my $getter        = $attr.name.substr(2);
            my $value         = $object."$getter"();
            my $member-shape  = $s.member{ $attr.shape-member }.shape;
            my $member-prefix = self.get-serialized-name($member-shape, $key);
            $member-prefix = join('.', $prefix, $member-prefix) if $prefix;
            self.serialize-value($member-shape.shape, $value,
                prefix => $member-prefix,
            );
        }
    }

    multi method serialize-value(
        AWS::SDK::Meta::Shape::List $s,
        $object,
        Str :$prefix = '',
    ) {
        return ($prefix => '',) without $object;

        my $list-prefix;
        if $s.flattened {
            $list-prefix = $prefix;
            with self.location-name -> $name {
                $list-prefix = join('.',
                    |$prefix.split('.')[0 .. *-1],
                    $name,
                );
            }
        }
        else {
            my $list-name = self.get-serialized-name($s.member, 'member');
            $list-prefix = join('.', $prefix, $list-name);
        }

        for $object.kv -> $i, $value {
            my $element-prefix = join('.', $list-prefix, $i);
            my $element-shape  = $s.member.shape;
            self.serialize-value($element-shape, $value,
                prefix => $element-prefix,
            );
        }
    }

    multi method serialize-value(
        AWS::SDK::Meta::Shape::Map $s,
        $object,
        Str :$prefix = '',
    ) {
        my $full-prefix;
        if $s.flattened {
            $full-prefix = $prefix;
        }
        else {
            $full-prefix = "$prefix.entry";
        }

        my $key-ref     = $s.key;
        my $value-ref   = $s.value;

        my $key-suffix   = self.get-serialized-name($key-ref, 'key');
        my $value-suffix = self.get-serialized-name($value-ref, 'value');

        for $object.pairs.kv -> $i, $pair {
            my $key-prefix   = "$full-prefix.$i.$key-suffix";
            my $value-prefix = "$full-prefix.$i.$value-suffix";

            (
                self.serialize-value($key-ref.shape, $pair.key,
                    prefix => $key-prefix,
                ),
                self.serialize-value($value-ref.shape, $pair.value,
                    prefix => $value-prefix,
                ),
            );
        }
    }

    multi method serialize-value(
        AWS::SDK::Meta::Shape::Blob $s,
        $object,
        Str :$prefix = '',
    ) {
        use MIME::Base64;
        ($prefix => MIME::Base64.encode($object),)
    }

    multi method serialize-value(
        AWS::SDK::Meta::Shape::Timestamp $s,
        $object,
        Str :$prefix = '',
    ) {
        ($prefix => format-timestamp($.TIMESTAMP-FORMAT, $object),)
    }

    multi method serialize-value(
        AWS::SDK::Meta::Shape::Boolean $s,
        $object,
        Str :$prefix = '',
    ) {
        ($prefix => $object ?? 'true' !! 'false',)
    }

    multi method serialize-value(
        AWS::SDK::Meta::Shape $s,
        $object,
        Str :$prefix = '',
    ) {
        ($prefix => "$object",)
    }
}

class AWS::SDK::EC2Serializer is AWS::SDK::QuerySerializer {
    method get-serialized-name(AWS::SDK::Meta::ShapeReference $r, Str $default-name) {
        with $r.query-name { $r.query-name }
        orwith $r.location-name { $r.location-name.subst(/^(.)/, { $0.uc }) }
        else { $default-name }
    }

    multi method serialize-value(
        AWS::SDK::Meta::Shape::List $s,
        $object,
        Str :$prefix = '',
    ) {
        for $object.kv -> $i, $value {
            my $element-prefix = join('.', $prefix, $i);
            my $element-shape  = $s.member.shape;
            self.serialize-value($element-shape, $value,
                prefix => $element-prefix,
            );
        }
    }
}
