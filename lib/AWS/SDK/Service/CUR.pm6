# THIS FILE IS AUTO-GENERATED. DO NOT EDIT.
use v6;

use AWS::SDK::Operation;
use AWS::SDK::Service;
use AWS::SDK::Shape;

class AWS::SDK::Service::CUR does AWS::SDK::Service {

    method api-version() { '2017-01-06' }
    method service() { 'cur' }

    class ReportLimitReachedException { ... }
    class InternalErrorException { ... }
    class PutReportDefinitionResponse { ... }
    class ReportDefinition { ... }
    class ValidationException { ... }
    class DescribeReportDefinitionsRequest { ... }
    class PutReportDefinitionRequest { ... }
    class DuplicateReportNameException { ... }
    class DescribeReportDefinitionsResponse { ... }
    class DeleteReportDefinitionResponse { ... }
    class DeleteReportDefinitionRequest { ... }

    subset TimeUnit of Str where $_ eq any('HOURLY', 'DAILY');

    subset SchemaElement of Str where $_ eq any('RESOURCES');

    subset MaxResults of Int where 5 <= * <= 5;

    subset AdditionalArtifact of Str where $_ eq any('REDSHIFT', 'QUICKSIGHT');

    subset S3Prefix of Str where .chars <= 256 && rx:P5/[0-9A-Za-z!\-_.*\'()\/]*/;

    subset ReportName of Str where .chars <= 256 && rx:P5/[0-9A-Za-z!\-_.*\'()]+/;

    subset ReportFormat of Str where $_ eq any('textORcsv');

    subset CompressionFormat of Str where $_ eq any('ZIP', 'GZIP');

    subset S3Bucket of Str where .chars <= 256;

    subset AWSRegion of Str where $_ eq any('us-east-1', 'us-west-1', 'us-west-2', 'eu-central-1', 'eu-west-1', 'ap-southeast-1', 'ap-southeast-2', 'ap-northeast-1');


    class ReportLimitReachedException does AWS::SDK::Shape {
        has Str $.message is shape-member('Message');
    }

    class InternalErrorException does AWS::SDK::Shape {
        has Str $.message is shape-member('Message');
    }

    class PutReportDefinitionResponse does AWS::SDK::Shape {
    }

    class ReportDefinition does AWS::SDK::Shape {
        has AWSRegion $.s3-region is required is shape-member('S3Region');
        has TimeUnit $.time-unit is required is shape-member('TimeUnit');
        has S3Prefix $.s3-prefix is required is shape-member('S3Prefix');
        has SchemaElement @.additional-schema-elements is required is shape-member('AdditionalSchemaElements');
        has ReportName $.report-name is required is shape-member('ReportName');
        has AdditionalArtifact @.additional-artifacts is shape-member('AdditionalArtifacts');
        has ReportFormat $.format is required is shape-member('Format');
        has S3Bucket $.s3-bucket is required is shape-member('S3Bucket');
        has CompressionFormat $.compression is required is shape-member('Compression');
    }

    class ValidationException does AWS::SDK::Shape {
        has Str $.message is shape-member('Message');
    }

    class DescribeReportDefinitionsRequest does AWS::SDK::Shape {
        has MaxResults $.max-results is shape-member('MaxResults');
        has Str $.next-token is shape-member('NextToken');
    }

    class PutReportDefinitionRequest does AWS::SDK::Shape {
        has ReportDefinition $.report-definition is required is shape-member('ReportDefinition');
    }

    class DuplicateReportNameException does AWS::SDK::Shape {
        has Str $.message is shape-member('Message');
    }

    class DescribeReportDefinitionsResponse does AWS::SDK::Shape {
        has ReportDefinition @.report-definitions is shape-member('ReportDefinitions');
        has Str $.next-token is shape-member('NextToken');
    }

    class DeleteReportDefinitionResponse does AWS::SDK::Shape {
        has Str $.response-message is shape-member('ResponseMessage');
    }

    class DeleteReportDefinitionRequest does AWS::SDK::Shape {
        has ReportName $.report-name is shape-member('ReportName');
    }


    method describe-report-definitions(
        MaxResults :$max-results,
        Str :$next-token
    ) returns DescribeReportDefinitionsResponse is service-operation('DescribeReportDefinitions') {
        my $request-input = DescribeReportDefinitionsRequest.new(
            :$max-results,
            :$next-token
        );

        self.perform-operation(
            :api-call<DescribeReportDefinitions>,
            :$request-input,
        );
    }

    method delete-report-definition(
        ReportName :$report-name
    ) returns DeleteReportDefinitionResponse is service-operation('DeleteReportDefinition') {
        my $request-input = DeleteReportDefinitionRequest.new(
            :$report-name
        );

        self.perform-operation(
            :api-call<DeleteReportDefinition>,
            :$request-input,
        );
    }

    method put-report-definition(
        ReportDefinition :$report-definition!
    ) returns PutReportDefinitionResponse is service-operation('PutReportDefinition') {
        my $request-input = PutReportDefinitionRequest.new(
            :$report-definition
        );

        self.perform-operation(
            :api-call<PutReportDefinition>,
            :$request-input,
        );
    }

}


