# THIS FILE IS AUTO-GENERATED. DO NOT EDIT.
use v6;

use AWS::SDK::Service;

class AWS::DataPipeline does AWS::SDK::Service{

    method api-version() { '2012-10-29' }
    method endpoint-prefix() { 'datapipeline' }


    class ParameterValue { ... }
    class DeactivatePipelineOutput { ... }
    class PipelineNotFoundException { ... }
    class SetTaskStatusInput { ... }
    class GetPipelineDefinitionInput { ... }
    class PipelineObject { ... }
    class PollForTaskOutput { ... }
    class TaskObject { ... }
    class ReportTaskProgressOutput { ... }
    class RemoveTagsInput { ... }
    class InstanceIdentity { ... }
    class PutPipelineDefinitionInput { ... }
    class QueryObjectsInput { ... }
    class Field { ... }
    class PipelineDescription { ... }
    class DescribePipelinesOutput { ... }
    class ListPipelinesOutput { ... }
    class PollForTaskInput { ... }
    class TaskNotFoundException { ... }
    class ReportTaskRunnerHeartbeatInput { ... }
    class GetPipelineDefinitionOutput { ... }
    class PipelineDeletedException { ... }
    class ValidatePipelineDefinitionInput { ... }
    class ReportTaskProgressInput { ... }
    class PutPipelineDefinitionOutput { ... }
    class ActivatePipelineInput { ... }
    class DeletePipelineInput { ... }
    class PipelineIdName { ... }
    class AddTagsOutput { ... }
    class EvaluateExpressionInput { ... }
    class InvalidRequestException { ... }
    class DescribeObjectsInput { ... }
    class ParameterAttribute { ... }
    class ValidatePipelineDefinitionOutput { ... }
    class Selector { ... }
    class AddTagsInput { ... }
    class CreatePipelineInput { ... }
    class ValidationWarning { ... }
    class SetStatusInput { ... }
    class SetTaskStatusOutput { ... }
    class ReportTaskRunnerHeartbeatOutput { ... }
    class QueryObjectsOutput { ... }
    class ValidationError { ... }
    class ActivatePipelineOutput { ... }
    class CreatePipelineOutput { ... }
    class Operator { ... }
    class ParameterObject { ... }
    class Tag { ... }
    class RemoveTagsOutput { ... }
    class DeactivatePipelineInput { ... }
    class DescribeObjectsOutput { ... }
    class DescribePipelinesInput { ... }
    class EvaluateExpressionOutput { ... }
    class InternalServiceError { ... }
    class ListPipelinesInput { ... }
    class Query { ... }

    class ParameterValue {
        has Str $.string-value is required;
        has Str $.id is required;
    }

    class DeactivatePipelineOutput {
    }

    class PipelineNotFoundException {
        has Str $.message is required;
    }

    class SetTaskStatusInput {
        has Str $.error-message;
        has Str $.task-id is required;
        has Str $.error-stack-trace;
        has Str $.task-status is required;
        has Str $.error-id;
    }

    class GetPipelineDefinitionInput {
        has Str $.pipeline-id is required;
        has Str $.version;
    }

    class PipelineObject {
        has Str $.name is required;
        has fieldList $.fields is required;
        has Str $.id is required;
    }

    class PollForTaskOutput {
        has TaskObject $.task-object is required;
    }

    subset validationMessages of List[Str];

    class TaskObject {
        has Str $.task-id is required;
        has Str $.pipeline-id is required;
        has PipelineObjectMap $.objects is required;
        has Str $.attempt-id is required;
    }

    subset SelectorList of List[Selector];

    class ReportTaskProgressOutput {
        has Bool $.canceled is required;
    }

    class RemoveTagsInput {
        has Str $.pipeline-id is required;
        has stringList $.tag-keys is required;
    }

    class InstanceIdentity {
        has Str $.signature is required;
        has Str $.document is required;
    }

    subset ParameterAttributeList of List[ParameterAttribute];

    class PutPipelineDefinitionInput {
        has ParameterObjectList $.parameter-objects;
        has PipelineObjectList $.pipeline-objects is required;
        has Str $.pipeline-id is required;
        has ParameterValueList $.parameter-values;
    }

    class QueryObjectsInput {
        has Int $.limit;
        has Str $.marker;
        has Query $.query;
        has Str $.pipeline-id is required;
        has Str $.sphere is required;
    }

    class Field {
        has Str $.string-value;
        has Str $.key is required;
        has Str $.ref-value;
    }

    class PipelineDescription {
        has Str $.name is required;
        has fieldList $.fields is required;
        has Str $.pipeline-id is required;
        has tagList $.tags;
        has Str $.description;
    }

    class DescribePipelinesOutput {
        has PipelineDescriptionList $.pipeline-description-list is required;
    }

    class ListPipelinesOutput {
        has Bool $.has-more-results;
        has Str $.marker;
        has pipelineList $.pipeline-id-list is required;
    }

    class PollForTaskInput {
        has Str $.hostname;
        has Str $.worker-group is required;
        has InstanceIdentity $.instance-identity;
    }

    class TaskNotFoundException {
        has Str $.message is required;
    }

    class ReportTaskRunnerHeartbeatInput {
        has Str $.taskrunner-id is required;
        has Str $.hostname;
        has Str $.worker-group;
    }

    class GetPipelineDefinitionOutput {
        has ParameterObjectList $.parameter-objects is required;
        has PipelineObjectList $.pipeline-objects is required;
        has ParameterValueList $.parameter-values is required;
    }

    class PipelineDeletedException {
        has Str $.message is required;
    }

    subset pipelineList of List[PipelineIdName];

    class ValidatePipelineDefinitionInput {
        has ParameterObjectList $.parameter-objects;
        has PipelineObjectList $.pipeline-objects is required;
        has Str $.pipeline-id is required;
        has ParameterValueList $.parameter-values;
    }

    class ReportTaskProgressInput {
        has Str $.task-id is required;
        has fieldList $.fields;
    }

    subset PipelineObjectMap of Map[Str, PipelineObject];

    class PutPipelineDefinitionOutput {
        has Bool $.errored is required;
        has ValidationErrors $.validation-errors;
        has ValidationWarnings $.validation-warnings;
    }

    class ActivatePipelineInput {
        has Str $.pipeline-id is required;
        has ParameterValueList $.parameter-values;
        has DateTime $.start-timestamp;
    }

    class DeletePipelineInput {
        has Str $.pipeline-id is required;
    }

    subset ParameterObjectList of List[ParameterObject];

    class PipelineIdName {
        has Str $.name is required;
        has Str $.id is required;
    }

    subset PipelineObjectList of List[PipelineObject];

    class AddTagsOutput {
    }

    class EvaluateExpressionInput {
        has Str $.pipeline-id is required;
        has Str $.expression is required;
        has Str $.object-id is required;
    }

    class InvalidRequestException {
        has Str $.message is required;
    }

    class DescribeObjectsInput {
        has Str $.marker;
        has idList $.object-ids is required;
        has Str $.pipeline-id is required;
        has Bool $.evaluate-expressions;
    }

    class ParameterAttribute {
        has Str $.string-value is required;
        has Str $.key is required;
    }

    class ValidatePipelineDefinitionOutput {
        has Bool $.errored is required;
        has ValidationErrors $.validation-errors;
        has ValidationWarnings $.validation-warnings;
    }

    class Selector {
        has Str $.field-name is required;
        has Operator $.operator is required;
    }

    class AddTagsInput {
        has Str $.pipeline-id is required;
        has tagList $.tags is required;
    }

    class CreatePipelineInput {
        has Str $.name is required;
        has Str $.unique-id is required;
        has tagList $.tags;
        has Str $.description;
    }

    subset tagList of List[Tag] where 0 <= *.elems <= 10;

    subset stringList of List[Str];

    subset fieldList of List[Field];

    subset ValidationWarnings of List[ValidationWarning];

    class ValidationWarning {
        has validationMessages $.warnings is required;
        has Str $.id is required;
    }

    class SetStatusInput {
        has Str $.status is required;
        has idList $.object-ids is required;
        has Str $.pipeline-id is required;
    }

    class SetTaskStatusOutput {
    }

    class ReportTaskRunnerHeartbeatOutput {
        has Bool $.terminate is required;
    }

    class QueryObjectsOutput {
        has Bool $.has-more-results is required;
        has idList $.ids is required;
        has Str $.marker is required;
    }

    subset ValidationErrors of List[ValidationError];

    class ValidationError {
        has Str $.id is required;
        has validationMessages $.errors is required;
    }

    class ActivatePipelineOutput {
    }

    class CreatePipelineOutput {
        has Str $.pipeline-id is required;
    }

    class Operator {
        has Str $.type is required;
        has stringList $.values is required;
    }

    class ParameterObject {
        has ParameterAttributeList $.attributes is required;
        has Str $.id is required;
    }

    subset ParameterValueList of List[ParameterValue];

    subset idList of List[Str];

    class Tag {
        has Str $.value is required;
        has Str $.key is required;
    }

    class RemoveTagsOutput {
    }

    class DeactivatePipelineInput {
        has Bool $.cancel-active;
        has Str $.pipeline-id is required;
    }

    class DescribeObjectsOutput {
        has Bool $.has-more-results;
        has Str $.marker;
        has PipelineObjectList $.pipeline-objects is required;
    }

    class DescribePipelinesInput {
        has idList $.pipeline-ids is required;
    }

    class EvaluateExpressionOutput {
        has Str $.evaluated-expression is required;
    }

    class InternalServiceError {
        has Str $.message is required;
    }

    class ListPipelinesInput {
        has Str $.marker is required;
    }

    subset PipelineDescriptionList of List[PipelineDescription];

    class Query {
        has SelectorList $.selectors is required;
    }

    method validate-pipeline-definition(
        ParameterObjectList :$parameter-objects,
        PipelineObjectList :$pipeline-objects!,
        Str :$pipeline-id!,
        ParameterValueList :$parameter-values
    ) returns ValidatePipelineDefinitionOutput {
        my $request-obj = ValidatePipelineDefinitionInput.new(
            :$parameter-objects,
            :$pipeline-objects,
            :$pipeline-id,
            :$parameter-values
        );
        self.perform-operation($request-obj);
    }

    method evaluate-expression(
        Str :$pipeline-id!,
        Str :$expression!,
        Str :$object-id!
    ) returns EvaluateExpressionOutput {
        my $request-obj = EvaluateExpressionInput.new(
            :$pipeline-id,
            :$expression,
            :$object-id
        );
        self.perform-operation($request-obj);
    }

    method describe-pipelines(
        idList :$pipeline-ids!
    ) returns DescribePipelinesOutput {
        my $request-obj = DescribePipelinesInput.new(
            :$pipeline-ids
        );
        self.perform-operation($request-obj);
    }

    method describe-objects(
        Str :$marker,
        idList :$object-ids!,
        Str :$pipeline-id!,
        Bool :$evaluate-expressions
    ) returns DescribeObjectsOutput {
        my $request-obj = DescribeObjectsInput.new(
            :$marker,
            :$object-ids,
            :$pipeline-id,
            :$evaluate-expressions
        );
        self.perform-operation($request-obj);
    }

    method create-pipeline(
        Str :$name!,
        Str :$unique-id!,
        tagList :$tags,
        Str :$description
    ) returns CreatePipelineOutput {
        my $request-obj = CreatePipelineInput.new(
            :$name,
            :$unique-id,
            :$tags,
            :$description
        );
        self.perform-operation($request-obj);
    }

    method add-tags(
        Str :$pipeline-id!,
        tagList :$tags!
    ) returns AddTagsOutput {
        my $request-obj = AddTagsInput.new(
            :$pipeline-id,
            :$tags
        );
        self.perform-operation($request-obj);
    }

    method activate-pipeline(
        Str :$pipeline-id!,
        ParameterValueList :$parameter-values,
        DateTime :$start-timestamp
    ) returns ActivatePipelineOutput {
        my $request-obj = ActivatePipelineInput.new(
            :$pipeline-id,
            :$parameter-values,
            :$start-timestamp
        );
        self.perform-operation($request-obj);
    }

    method report-task-progress(
        Str :$task-id!,
        fieldList :$fields
    ) returns ReportTaskProgressOutput {
        my $request-obj = ReportTaskProgressInput.new(
            :$task-id,
            :$fields
        );
        self.perform-operation($request-obj);
    }

    method poll-for-task(
        Str :$hostname,
        Str :$worker-group!,
        InstanceIdentity :$instance-identity
    ) returns PollForTaskOutput {
        my $request-obj = PollForTaskInput.new(
            :$hostname,
            :$worker-group,
            :$instance-identity
        );
        self.perform-operation($request-obj);
    }

    method set-task-status(
        Str :$error-message,
        Str :$task-id!,
        Str :$error-stack-trace,
        Str :$task-status!,
        Str :$error-id
    ) returns SetTaskStatusOutput {
        my $request-obj = SetTaskStatusInput.new(
            :$error-message,
            :$task-id,
            :$error-stack-trace,
            :$task-status,
            :$error-id
        );
        self.perform-operation($request-obj);
    }

    method put-pipeline-definition(
        ParameterObjectList :$parameter-objects,
        PipelineObjectList :$pipeline-objects!,
        Str :$pipeline-id!,
        ParameterValueList :$parameter-values
    ) returns PutPipelineDefinitionOutput {
        my $request-obj = PutPipelineDefinitionInput.new(
            :$parameter-objects,
            :$pipeline-objects,
            :$pipeline-id,
            :$parameter-values
        );
        self.perform-operation($request-obj);
    }

    method set-status(
        Str :$status!,
        idList :$object-ids!,
        Str :$pipeline-id!
    ) {
        my $request-obj = SetStatusInput.new(
            :$status,
            :$object-ids,
            :$pipeline-id
        );
        self.perform-operation($request-obj);
    }

    method get-pipeline-definition(
        Str :$pipeline-id!,
        Str :$version
    ) returns GetPipelineDefinitionOutput {
        my $request-obj = GetPipelineDefinitionInput.new(
            :$pipeline-id,
            :$version
        );
        self.perform-operation($request-obj);
    }

    method delete-pipeline(
        Str :$pipeline-id!
    ) {
        my $request-obj = DeletePipelineInput.new(
            :$pipeline-id
        );
        self.perform-operation($request-obj);
    }

    method report-task-runner-heartbeat(
        Str :$taskrunner-id!,
        Str :$hostname,
        Str :$worker-group
    ) returns ReportTaskRunnerHeartbeatOutput {
        my $request-obj = ReportTaskRunnerHeartbeatInput.new(
            :$taskrunner-id,
            :$hostname,
            :$worker-group
        );
        self.perform-operation($request-obj);
    }

    method remove-tags(
        Str :$pipeline-id!,
        stringList :$tag-keys!
    ) returns RemoveTagsOutput {
        my $request-obj = RemoveTagsInput.new(
            :$pipeline-id,
            :$tag-keys
        );
        self.perform-operation($request-obj);
    }

    method deactivate-pipeline(
        Bool :$cancel-active,
        Str :$pipeline-id!
    ) returns DeactivatePipelineOutput {
        my $request-obj = DeactivatePipelineInput.new(
            :$cancel-active,
            :$pipeline-id
        );
        self.perform-operation($request-obj);
    }

    method list-pipelines(
        Str :$marker!
    ) returns ListPipelinesOutput {
        my $request-obj = ListPipelinesInput.new(
            :$marker
        );
        self.perform-operation($request-obj);
    }

    method query-objects(
        Int :$limit,
        Str :$marker,
        Query :$query,
        Str :$pipeline-id!,
        Str :$sphere!
    ) returns QueryObjectsOutput {
        my $request-obj = QueryObjectsInput.new(
            :$limit,
            :$marker,
            :$query,
            :$pipeline-id,
            :$sphere
        );
        self.perform-operation($request-obj);
    }

}

