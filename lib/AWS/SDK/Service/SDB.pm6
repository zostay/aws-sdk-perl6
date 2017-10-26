# THIS FILE IS AUTO-GENERATED. DO NOT EDIT.
use v6;

use AWS::SDK::Service;
use AWS::SDK::Shape;

class AWS::SDK::Service::SDB:ver<2009-04-15.0> does AWS::SDK::Service {

    method api-version() { '2009-04-15' }
    method service() { 'sdb' }

    class ReplaceableAttribute { ... }
    class NoSuchDomain { ... }
    class MissingParameter { ... }
    class ListDomainsResult { ... }
    class InvalidQueryExpression { ... }
    class DomainMetadataRequest { ... }
    class Item { ... }
    class CreateDomainRequest { ... }
    class RequestTimeout { ... }
    class ReplaceableItem { ... }
    class NumberSubmittedAttributesExceeded { ... }
    class NumberItemAttributesExceeded { ... }
    class NumberDomainAttributesExceeded { ... }
    class InvalidNumberPredicates { ... }
    class SelectResult { ... }
    class NumberDomainBytesExceeded { ... }
    class ListDomainsRequest { ... }
    class InvalidNextToken { ... }
    class NumberDomainsExceeded { ... }
    class InvalidNumberValueTests { ... }
    class DuplicateItemName { ... }
    class DomainMetadataResult { ... }
    class BatchPutAttributesRequest { ... }
    class BatchDeleteAttributesRequest { ... }
    class GetAttributesRequest { ... }
    class Attribute { ... }
    class UpdateCondition { ... }
    class TooManyRequestedAttributes { ... }
    class PutAttributesRequest { ... }
    class InvalidParameterValue { ... }
    class GetAttributesResult { ... }
    class DeleteDomainRequest { ... }
    class DeletableItem { ... }
    class SelectRequest { ... }
    class NumberSubmittedItemsExceeded { ... }
    class DeleteAttributesRequest { ... }
    class AttributeDoesNotExist { ... }

    class ReplaceableAttribute:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Bool $.replace is aws-parameter('Replace');
        has Str $.name is required is aws-parameter('Name');
        has Str $.value is required is aws-parameter('Value');
    }

    class NoSuchDomain:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Num $.box-usage is required is aws-parameter('BoxUsage');
    }

    class MissingParameter:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Num $.box-usage is required is aws-parameter('BoxUsage');
    }

    class ListDomainsResult:ver<2009-04-15.0> does AWS::SDK::Shape {
        has DomainNameList $.domain-names is required is aws-parameter('DomainNames');
        has Str $.next-token is required is aws-parameter('NextToken');
    }

    class InvalidQueryExpression:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Num $.box-usage is required is aws-parameter('BoxUsage');
    }

    class DomainMetadataRequest:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Str $.domain-name is required is aws-parameter('DomainName');
    }

    class Item:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Str $.alternate-name-encoding is aws-parameter('AlternateNameEncoding');
        has Str $.name is required is aws-parameter('Name');
        has AttributeList $.attributes is required is aws-parameter('Attributes');
    }

    subset DeletableItemList of List[DeletableItem];

    class CreateDomainRequest:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Str $.domain-name is required is aws-parameter('DomainName');
    }

    class RequestTimeout:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Num $.box-usage is required is aws-parameter('BoxUsage');
    }

    class ReplaceableItem:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Str $.name is required is aws-parameter('Name');
        has ReplaceableAttributeList $.attributes is required is aws-parameter('Attributes');
    }

    subset ReplaceableAttributeList of List[ReplaceableAttribute];

    class NumberSubmittedAttributesExceeded:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Num $.box-usage is required is aws-parameter('BoxUsage');
    }

    class NumberItemAttributesExceeded:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Num $.box-usage is required is aws-parameter('BoxUsage');
    }

    class NumberDomainAttributesExceeded:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Num $.box-usage is required is aws-parameter('BoxUsage');
    }

    class InvalidNumberPredicates:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Num $.box-usage is required is aws-parameter('BoxUsage');
    }

    subset AttributeNameList of List[Str];

    class SelectResult:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Str $.next-token is required is aws-parameter('NextToken');
        has ItemList $.items is required is aws-parameter('Items');
    }

    class NumberDomainBytesExceeded:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Num $.box-usage is required is aws-parameter('BoxUsage');
    }

    class ListDomainsRequest:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Int $.max-number-of-domains is required is aws-parameter('MaxNumberOfDomains');
        has Str $.next-token is required is aws-parameter('NextToken');
    }

    class InvalidNextToken:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Num $.box-usage is required is aws-parameter('BoxUsage');
    }

    class NumberDomainsExceeded:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Num $.box-usage is required is aws-parameter('BoxUsage');
    }

    class InvalidNumberValueTests:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Num $.box-usage is required is aws-parameter('BoxUsage');
    }

    class DuplicateItemName:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Num $.box-usage is required is aws-parameter('BoxUsage');
    }

    class DomainMetadataResult:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Int $.attribute-value-count is required is aws-parameter('AttributeValueCount');
        has Int $.attribute-name-count is required is aws-parameter('AttributeNameCount');
        has Int $.item-names-size-bytes is required is aws-parameter('ItemNamesSizeBytes');
        has Int $.attribute-names-size-bytes is required is aws-parameter('AttributeNamesSizeBytes');
        has Int $.timestamp is required is aws-parameter('Timestamp');
        has Int $.attribute-values-size-bytes is required is aws-parameter('AttributeValuesSizeBytes');
        has Int $.item-count is required is aws-parameter('ItemCount');
    }

    class BatchPutAttributesRequest:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Str $.domain-name is required is aws-parameter('DomainName');
        has ReplaceableItemList $.items is required is aws-parameter('Items');
    }

    class BatchDeleteAttributesRequest:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Str $.domain-name is required is aws-parameter('DomainName');
        has DeletableItemList $.items is required is aws-parameter('Items');
    }

    subset AttributeList of List[Attribute];

    subset ReplaceableItemList of List[ReplaceableItem];

    class GetAttributesRequest:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Bool $.consistent-read is aws-parameter('ConsistentRead');
        has Str $.domain-name is required is aws-parameter('DomainName');
        has Str $.item-name is required is aws-parameter('ItemName');
        has AttributeNameList $.attribute-names is aws-parameter('AttributeNames');
    }

    class Attribute:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Str $.alternate-value-encoding is aws-parameter('AlternateValueEncoding');
        has Str $.alternate-name-encoding is aws-parameter('AlternateNameEncoding');
        has Str $.name is required is aws-parameter('Name');
        has Str $.value is required is aws-parameter('Value');
    }

    class UpdateCondition:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Str $.name is required is aws-parameter('Name');
        has Bool $.exists is required is aws-parameter('Exists');
        has Str $.value is required is aws-parameter('Value');
    }

    class TooManyRequestedAttributes:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Num $.box-usage is required is aws-parameter('BoxUsage');
    }

    class PutAttributesRequest:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Str $.domain-name is required is aws-parameter('DomainName');
        has UpdateCondition $.expected is aws-parameter('Expected');
        has Str $.item-name is required is aws-parameter('ItemName');
        has ReplaceableAttributeList $.attributes is required is aws-parameter('Attributes');
    }

    class InvalidParameterValue:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Num $.box-usage is required is aws-parameter('BoxUsage');
    }

    class GetAttributesResult:ver<2009-04-15.0> does AWS::SDK::Shape {
        has AttributeList $.attributes is required is aws-parameter('Attributes');
    }

    subset DomainNameList of List[Str];

    class DeleteDomainRequest:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Str $.domain-name is required is aws-parameter('DomainName');
    }

    class DeletableItem:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Str $.name is required is aws-parameter('Name');
        has AttributeList $.attributes is aws-parameter('Attributes');
    }

    class SelectRequest:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Bool $.consistent-read is aws-parameter('ConsistentRead');
        has Str $.next-token is aws-parameter('NextToken');
        has Str $.select-expression is required is aws-parameter('SelectExpression');
    }

    class NumberSubmittedItemsExceeded:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Num $.box-usage is required is aws-parameter('BoxUsage');
    }

    subset ItemList of List[Item];

    class DeleteAttributesRequest:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Str $.domain-name is required is aws-parameter('DomainName');
        has UpdateCondition $.expected is aws-parameter('Expected');
        has Str $.item-name is required is aws-parameter('ItemName');
        has AttributeList $.attributes is aws-parameter('Attributes');
    }

    class AttributeDoesNotExist:ver<2009-04-15.0> does AWS::SDK::Shape {
        has Num $.box-usage is required is aws-parameter('BoxUsage');
    }

    method put-attributes(
        Str :$domain-name!,
        UpdateCondition :$expected,
        Str :$item-name!,
        ReplaceableAttributeList :$attributes!
    ) {
        my $request-input = PutAttributesRequest.new(
            :$domain-name,
            :$expected,
            :$item-name,
            :$attributes
        );
;
        self.perform-operation(
            :api-call<PutAttributes>,
            :return-type(Nil),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method batch-put-attributes(
        Str :$domain-name!,
        ReplaceableItemList :$items!
    ) {
        my $request-input = BatchPutAttributesRequest.new(
            :$domain-name,
            :$items
        );
;
        self.perform-operation(
            :api-call<BatchPutAttributes>,
            :return-type(Nil),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method select(
        Bool :$consistent-read,
        Str :$next-token,
        Str :$select-expression!
    ) returns SelectResult {
        my $request-input = SelectRequest.new(
            :$consistent-read,
            :$next-token,
            :$select-expression
        );
;
        self.perform-operation(
            :api-call<Select>,
            :return-type(SelectResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method delete-domain(
        Str :$domain-name!
    ) {
        my $request-input = DeleteDomainRequest.new(
            :$domain-name
        );
;
        self.perform-operation(
            :api-call<DeleteDomain>,
            :return-type(Nil),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method create-domain(
        Str :$domain-name!
    ) {
        my $request-input = CreateDomainRequest.new(
            :$domain-name
        );
;
        self.perform-operation(
            :api-call<CreateDomain>,
            :return-type(Nil),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method batch-delete-attributes(
        Str :$domain-name!,
        DeletableItemList :$items!
    ) {
        my $request-input = BatchDeleteAttributesRequest.new(
            :$domain-name,
            :$items
        );
;
        self.perform-operation(
            :api-call<BatchDeleteAttributes>,
            :return-type(Nil),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method delete-attributes(
        Str :$domain-name!,
        UpdateCondition :$expected,
        Str :$item-name!,
        AttributeList :$attributes
    ) {
        my $request-input = DeleteAttributesRequest.new(
            :$domain-name,
            :$expected,
            :$item-name,
            :$attributes
        );
;
        self.perform-operation(
            :api-call<DeleteAttributes>,
            :return-type(Nil),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method list-domains(
        Int :$max-number-of-domains!,
        Str :$next-token!
    ) returns ListDomainsResult {
        my $request-input = ListDomainsRequest.new(
            :$max-number-of-domains,
            :$next-token
        );
;
        self.perform-operation(
            :api-call<ListDomains>,
            :return-type(ListDomainsResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method get-attributes(
        Bool :$consistent-read,
        Str :$domain-name!,
        Str :$item-name!,
        AttributeNameList :$attribute-names
    ) returns GetAttributesResult {
        my $request-input = GetAttributesRequest.new(
            :$consistent-read,
            :$domain-name,
            :$item-name,
            :$attribute-names
        );
;
        self.perform-operation(
            :api-call<GetAttributes>,
            :return-type(GetAttributesResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method domain-metadata(
        Str :$domain-name!
    ) returns DomainMetadataResult {
        my $request-input = DomainMetadataRequest.new(
            :$domain-name
        );
;
        self.perform-operation(
            :api-call<DomainMetadata>,
            :return-type(DomainMetadataResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

}

