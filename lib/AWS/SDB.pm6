# THIS FILE IS AUTO-GENERATED. DO NOT EDIT.
use v6;

use AWS::SDK::Service;

class AWS::SDB does AWS::SDK::Service{

    method api-version() { '2009-04-15' }
    method endpoint-prefix() { 'sdb' }


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

    class ReplaceableAttribute {
        has Bool $.replace;
        has Str $.name is required;
        has Str $.value is required;
    }

    class NoSuchDomain {
        has Num $.box-usage is required;
    }

    class MissingParameter {
        has Num $.box-usage is required;
    }

    class ListDomainsResult {
        has DomainNameList $.domain-names is required;
        has Str $.next-token is required;
    }

    class InvalidQueryExpression {
        has Num $.box-usage is required;
    }

    class DomainMetadataRequest {
        has Str $.domain-name is required;
    }

    class Item {
        has Str $.alternate-name-encoding;
        has Str $.name is required;
        has AttributeList $.attributes is required;
    }

    subset DeletableItemList of List[DeletableItem];

    class CreateDomainRequest {
        has Str $.domain-name is required;
    }

    class RequestTimeout {
        has Num $.box-usage is required;
    }

    class ReplaceableItem {
        has Str $.name is required;
        has ReplaceableAttributeList $.attributes is required;
    }

    subset ReplaceableAttributeList of List[ReplaceableAttribute];

    class NumberSubmittedAttributesExceeded {
        has Num $.box-usage is required;
    }

    class NumberItemAttributesExceeded {
        has Num $.box-usage is required;
    }

    class NumberDomainAttributesExceeded {
        has Num $.box-usage is required;
    }

    class InvalidNumberPredicates {
        has Num $.box-usage is required;
    }

    subset AttributeNameList of List[Str];

    class SelectResult {
        has Str $.next-token is required;
        has ItemList $.items is required;
    }

    class NumberDomainBytesExceeded {
        has Num $.box-usage is required;
    }

    class ListDomainsRequest {
        has Int $.max-number-of-domains is required;
        has Str $.next-token is required;
    }

    class InvalidNextToken {
        has Num $.box-usage is required;
    }

    class NumberDomainsExceeded {
        has Num $.box-usage is required;
    }

    class InvalidNumberValueTests {
        has Num $.box-usage is required;
    }

    class DuplicateItemName {
        has Num $.box-usage is required;
    }

    class DomainMetadataResult {
        has Int $.attribute-value-count is required;
        has Int $.attribute-name-count is required;
        has Int $.item-names-size-bytes is required;
        has Int $.attribute-names-size-bytes is required;
        has Int $.timestamp is required;
        has Int $.attribute-values-size-bytes is required;
        has Int $.item-count is required;
    }

    class BatchPutAttributesRequest {
        has Str $.domain-name is required;
        has ReplaceableItemList $.items is required;
    }

    class BatchDeleteAttributesRequest {
        has Str $.domain-name is required;
        has DeletableItemList $.items is required;
    }

    subset AttributeList of List[Attribute];

    subset ReplaceableItemList of List[ReplaceableItem];

    class GetAttributesRequest {
        has Bool $.consistent-read;
        has Str $.domain-name is required;
        has Str $.item-name is required;
        has AttributeNameList $.attribute-names;
    }

    class Attribute {
        has Str $.alternate-value-encoding;
        has Str $.alternate-name-encoding;
        has Str $.name is required;
        has Str $.value is required;
    }

    class UpdateCondition {
        has Str $.name is required;
        has Bool $.exists is required;
        has Str $.value is required;
    }

    class TooManyRequestedAttributes {
        has Num $.box-usage is required;
    }

    class PutAttributesRequest {
        has Str $.domain-name is required;
        has UpdateCondition $.expected;
        has Str $.item-name is required;
        has ReplaceableAttributeList $.attributes is required;
    }

    class InvalidParameterValue {
        has Num $.box-usage is required;
    }

    class GetAttributesResult {
        has AttributeList $.attributes is required;
    }

    subset DomainNameList of List[Str];

    class DeleteDomainRequest {
        has Str $.domain-name is required;
    }

    class DeletableItem {
        has Str $.name is required;
        has AttributeList $.attributes;
    }

    class SelectRequest {
        has Bool $.consistent-read;
        has Str $.next-token;
        has Str $.select-expression is required;
    }

    class NumberSubmittedItemsExceeded {
        has Num $.box-usage is required;
    }

    subset ItemList of List[Item];

    class DeleteAttributesRequest {
        has Str $.domain-name is required;
        has UpdateCondition $.expected;
        has Str $.item-name is required;
        has AttributeList $.attributes;
    }

    class AttributeDoesNotExist {
        has Num $.box-usage is required;
    }

    method put-attributes(
        Str :$domain-name!,
        UpdateCondition :$expected,
        Str :$item-name!,
        ReplaceableAttributeList :$attributes!
    ) {
        my $request-obj = PutAttributesRequest.new(
            :$domain-name,
            :$expected,
            :$item-name,
            :$attributes
        );
        self.perform-operation($request-obj);
    }

    method batch-put-attributes(
        Str :$domain-name!,
        ReplaceableItemList :$items!
    ) {
        my $request-obj = BatchPutAttributesRequest.new(
            :$domain-name,
            :$items
        );
        self.perform-operation($request-obj);
    }

    method select(
        Bool :$consistent-read,
        Str :$next-token,
        Str :$select-expression!
    ) returns SelectResult {
        my $request-obj = SelectRequest.new(
            :$consistent-read,
            :$next-token,
            :$select-expression
        );
        self.perform-operation($request-obj);
    }

    method delete-domain(
        Str :$domain-name!
    ) {
        my $request-obj = DeleteDomainRequest.new(
            :$domain-name
        );
        self.perform-operation($request-obj);
    }

    method create-domain(
        Str :$domain-name!
    ) {
        my $request-obj = CreateDomainRequest.new(
            :$domain-name
        );
        self.perform-operation($request-obj);
    }

    method batch-delete-attributes(
        Str :$domain-name!,
        DeletableItemList :$items!
    ) {
        my $request-obj = BatchDeleteAttributesRequest.new(
            :$domain-name,
            :$items
        );
        self.perform-operation($request-obj);
    }

    method delete-attributes(
        Str :$domain-name!,
        UpdateCondition :$expected,
        Str :$item-name!,
        AttributeList :$attributes
    ) {
        my $request-obj = DeleteAttributesRequest.new(
            :$domain-name,
            :$expected,
            :$item-name,
            :$attributes
        );
        self.perform-operation($request-obj);
    }

    method list-domains(
        Int :$max-number-of-domains!,
        Str :$next-token!
    ) returns ListDomainsResult {
        my $request-obj = ListDomainsRequest.new(
            :$max-number-of-domains,
            :$next-token
        );
        self.perform-operation($request-obj);
    }

    method get-attributes(
        Bool :$consistent-read,
        Str :$domain-name!,
        Str :$item-name!,
        AttributeNameList :$attribute-names
    ) returns GetAttributesResult {
        my $request-obj = GetAttributesRequest.new(
            :$consistent-read,
            :$domain-name,
            :$item-name,
            :$attribute-names
        );
        self.perform-operation($request-obj);
    }

    method domain-metadata(
        Str :$domain-name!
    ) returns DomainMetadataResult {
        my $request-obj = DomainMetadataRequest.new(
            :$domain-name
        );
        self.perform-operation($request-obj);
    }

}

