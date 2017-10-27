# THIS FILE IS AUTO-GENERATED. DO NOT EDIT.
use v6;

use AWS::SDK::Operation;
use AWS::SDK::Service;
use AWS::SDK::Shape;

class AWS::SDK::Service::Shield does AWS::SDK::Service {

    method api-version() { '2016-06-02' }
    method service() { 'shield' }

    class DescribeSubscriptionResponse { ... }
    class Subscription { ... }
    class AttackVectorDescription { ... }
    class InternalErrorException { ... }
    class Protection { ... }
    class ResourceNotFoundException { ... }
    class AttackDetail { ... }
    class CreateSubscriptionResponse { ... }
    class DescribeAttackRequest { ... }
    class SummarizedCounter { ... }
    class DescribeAttackResponse { ... }
    class Mitigation { ... }
    class SubResourceSummary { ... }
    class DeleteProtectionResponse { ... }
    class ListProtectionsRequest { ... }
    class LockedSubscriptionException { ... }
    class CreateProtectionResponse { ... }
    class DeleteSubscriptionRequest { ... }
    class DescribeProtectionResponse { ... }
    class ListAttacksRequest { ... }
    class CreateProtectionRequest { ... }
    class CreateSubscriptionRequest { ... }
    class DeleteSubscriptionResponse { ... }
    class InvalidParameterException { ... }
    class InvalidResourceException { ... }
    class ListAttacksResponse { ... }
    class ListProtectionsResponse { ... }
    class AttackSummary { ... }
    class DescribeSubscriptionRequest { ... }
    class LimitsExceededException { ... }
    class OptimisticLockException { ... }
    class SummarizedAttackVector { ... }
    class DescribeProtectionRequest { ... }
    class InvalidOperationException { ... }
    class ResourceAlreadyExistsException { ... }
    class TimeRange { ... }
    class DeleteProtectionRequest { ... }

    subset ProtectionId of Str where 1 <= .chars <= 36 && rx:P5/[a-zA-Z0-9\\-]*/;

    subset SubResourceType of Str where $_ eq any('IP', 'URL');

    subset Token of Str where 1 <= .chars;

    subset ResourceArn of Str where 1 <= .chars;

    subset MaxResults of Int where 0 <= * <= 100;

    subset AttackId of Str where 1 <= .chars <= 128 && rx:P5/[a-zA-Z0-9\\-]*/;

    subset ProtectionName of Str where 1 <= .chars <= 128 && rx:P5/[ a-zA-Z0-9_\\.\\-]*/;

    subset DurationInSeconds of Int where 0 <= *;


    class DescribeSubscriptionResponse does AWS::SDK::Shape {
        has Subscription $.subscription is shape-member('Subscription');
    }

    class Subscription does AWS::SDK::Shape {
        has DurationInSeconds $.time-commitment-in-seconds is shape-member('TimeCommitmentInSeconds');
        has DateTime $.start-time is shape-member('StartTime');
    }

    class AttackVectorDescription does AWS::SDK::Shape {
        has Str $.vector-type is required is shape-member('VectorType');
    }

    class InternalErrorException does AWS::SDK::Shape {
        has Str $.message is shape-member('message');
    }

    class Protection does AWS::SDK::Shape {
        has ProtectionId $.id is shape-member('Id');
        has ProtectionName $.name is shape-member('Name');
        has ResourceArn $.resource-arn is shape-member('ResourceArn');
    }

    class ResourceNotFoundException does AWS::SDK::Shape {
        has Str $.message is shape-member('message');
    }

    class AttackDetail does AWS::SDK::Shape {
        has Mitigation @.mitigations is shape-member('Mitigations');
        has DateTime $.end-time is shape-member('EndTime');
        has AttackId $.attack-id is shape-member('AttackId');
        has SummarizedCounter @.attack-counters is shape-member('AttackCounters');
        has DateTime $.start-time is shape-member('StartTime');
        has SubResourceSummary @.sub-resources is shape-member('SubResources');
        has ResourceArn $.resource-arn is shape-member('ResourceArn');
    }

    class CreateSubscriptionResponse does AWS::SDK::Shape {
    }

    class DescribeAttackRequest does AWS::SDK::Shape {
        has AttackId $.attack-id is required is shape-member('AttackId');
    }

    class SummarizedCounter does AWS::SDK::Shape {
        has Str $.unit is shape-member('Unit');
        has Numeric $.sum is shape-member('Sum');
        has Numeric $.average is shape-member('Average');
        has Numeric $.max is shape-member('Max');
        has Int $.n is shape-member('N');
        has Str $.name is shape-member('Name');
    }

    class DescribeAttackResponse does AWS::SDK::Shape {
        has AttackDetail $.attack is shape-member('Attack');
    }

    class Mitigation does AWS::SDK::Shape {
        has Str $.mitigation-name is shape-member('MitigationName');
    }

    class SubResourceSummary does AWS::SDK::Shape {
        has SummarizedAttackVector @.attack-vectors is shape-member('AttackVectors');
        has Str $.id is shape-member('Id');
        has SubResourceType $.type is shape-member('Type');
        has SummarizedCounter @.counters is shape-member('Counters');
    }

    class DeleteProtectionResponse does AWS::SDK::Shape {
    }

    class ListProtectionsRequest does AWS::SDK::Shape {
        has MaxResults $.max-results is shape-member('MaxResults');
        has Token $.next-token is shape-member('NextToken');
    }

    class LockedSubscriptionException does AWS::SDK::Shape {
        has Str $.message is shape-member('message');
    }

    class CreateProtectionResponse does AWS::SDK::Shape {
        has ProtectionId $.protection-id is shape-member('ProtectionId');
    }

    class DeleteSubscriptionRequest does AWS::SDK::Shape {
    }

    class DescribeProtectionResponse does AWS::SDK::Shape {
        has Protection $.protection is shape-member('Protection');
    }

    class ListAttacksRequest does AWS::SDK::Shape {
        has MaxResults $.max-results is shape-member('MaxResults');
        has ResourceArn @.resource-arns is shape-member('ResourceArns');
        has TimeRange $.end-time is shape-member('EndTime');
        has TimeRange $.start-time is shape-member('StartTime');
        has Token $.next-token is shape-member('NextToken');
    }

    class CreateProtectionRequest does AWS::SDK::Shape {
        has ProtectionName $.name is required is shape-member('Name');
        has ResourceArn $.resource-arn is required is shape-member('ResourceArn');
    }

    class CreateSubscriptionRequest does AWS::SDK::Shape {
    }

    class DeleteSubscriptionResponse does AWS::SDK::Shape {
    }

    class InvalidParameterException does AWS::SDK::Shape {
        has Str $.message is shape-member('message');
    }

    class InvalidResourceException does AWS::SDK::Shape {
        has Str $.message is shape-member('message');
    }

    class ListAttacksResponse does AWS::SDK::Shape {
        has AttackSummary @.attack-summaries is shape-member('AttackSummaries');
        has Token $.next-token is shape-member('NextToken');
    }

    class ListProtectionsResponse does AWS::SDK::Shape {
        has Protection @.protections is shape-member('Protections');
        has Token $.next-token is shape-member('NextToken');
    }

    class AttackSummary does AWS::SDK::Shape {
        has AttackVectorDescription @.attack-vectors is shape-member('AttackVectors');
        has DateTime $.end-time is shape-member('EndTime');
        has Str $.attack-id is shape-member('AttackId');
        has DateTime $.start-time is shape-member('StartTime');
        has Str $.resource-arn is shape-member('ResourceArn');
    }

    class DescribeSubscriptionRequest does AWS::SDK::Shape {
    }

    class LimitsExceededException does AWS::SDK::Shape {
        has Int $.limit is shape-member('Limit');
        has Str $.type is shape-member('Type');
        has Str $.message is shape-member('message');
    }

    class OptimisticLockException does AWS::SDK::Shape {
        has Str $.message is shape-member('message');
    }

    class SummarizedAttackVector does AWS::SDK::Shape {
        has Str $.vector-type is required is shape-member('VectorType');
        has SummarizedCounter @.vector-counters is shape-member('VectorCounters');
    }

    class DescribeProtectionRequest does AWS::SDK::Shape {
        has ProtectionId $.protection-id is required is shape-member('ProtectionId');
    }

    class InvalidOperationException does AWS::SDK::Shape {
        has Str $.message is shape-member('message');
    }

    class ResourceAlreadyExistsException does AWS::SDK::Shape {
        has Str $.message is shape-member('message');
    }

    class TimeRange does AWS::SDK::Shape {
        has DateTime $.to-exclusive is shape-member('ToExclusive');
        has DateTime $.from-inclusive is shape-member('FromInclusive');
    }

    class DeleteProtectionRequest does AWS::SDK::Shape {
        has ProtectionId $.protection-id is required is shape-member('ProtectionId');
    }


    method create-protection(
        ProtectionName :$name!,
        ResourceArn :$resource-arn!
    ) returns CreateProtectionResponse is service-operation('CreateProtection') {
        my $request-input = CreateProtectionRequest.new(
            :$name,
            :$resource-arn
        );

        self.perform-operation(
            :api-call<CreateProtection>,
            :$request-input,
        );
    }

    method describe-subscription(

    ) returns DescribeSubscriptionResponse is service-operation('DescribeSubscription') {
        my $request-input = DescribeSubscriptionRequest.new(

        );

        self.perform-operation(
            :api-call<DescribeSubscription>,
            :$request-input,
        );
    }

    method delete-protection(
        ProtectionId :$protection-id!
    ) returns DeleteProtectionResponse is service-operation('DeleteProtection') {
        my $request-input = DeleteProtectionRequest.new(
            :$protection-id
        );

        self.perform-operation(
            :api-call<DeleteProtection>,
            :$request-input,
        );
    }

    method create-subscription(

    ) returns CreateSubscriptionResponse is service-operation('CreateSubscription') {
        my $request-input = CreateSubscriptionRequest.new(

        );

        self.perform-operation(
            :api-call<CreateSubscription>,
            :$request-input,
        );
    }

    method describe-protection(
        ProtectionId :$protection-id!
    ) returns DescribeProtectionResponse is service-operation('DescribeProtection') {
        my $request-input = DescribeProtectionRequest.new(
            :$protection-id
        );

        self.perform-operation(
            :api-call<DescribeProtection>,
            :$request-input,
        );
    }

    method list-protections(
        MaxResults :$max-results,
        Token :$next-token
    ) returns ListProtectionsResponse is service-operation('ListProtections') {
        my $request-input = ListProtectionsRequest.new(
            :$max-results,
            :$next-token
        );

        self.perform-operation(
            :api-call<ListProtections>,
            :$request-input,
        );
    }

    method list-attacks(
        MaxResults :$max-results,
        ResourceArn :@resource-arns,
        TimeRange :$end-time,
        TimeRange :$start-time,
        Token :$next-token
    ) returns ListAttacksResponse is service-operation('ListAttacks') {
        my $request-input = ListAttacksRequest.new(
            :$max-results,
            :@resource-arns,
            :$end-time,
            :$start-time,
            :$next-token
        );

        self.perform-operation(
            :api-call<ListAttacks>,
            :$request-input,
        );
    }

    method describe-attack(
        AttackId :$attack-id!
    ) returns DescribeAttackResponse is service-operation('DescribeAttack') {
        my $request-input = DescribeAttackRequest.new(
            :$attack-id
        );

        self.perform-operation(
            :api-call<DescribeAttack>,
            :$request-input,
        );
    }

    method delete-subscription(

    ) returns DeleteSubscriptionResponse is service-operation('DeleteSubscription') {
        my $request-input = DeleteSubscriptionRequest.new(

        );

        self.perform-operation(
            :api-call<DeleteSubscription>,
            :$request-input,
        );
    }

}


