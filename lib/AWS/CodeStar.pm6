# THIS FILE IS AUTO-GENERATED. DO NOT EDIT.
use v6;

use AWS::SDK::Service;

class AWS::CodeStar does AWS::SDK::Service{

    method api-version() { '2017-04-19' }
    method endpoint-prefix() { 'codestar' }

    class AssociateTeamMemberRequest { ... }
    class DeleteProjectResult { ... }
    class LimitExceededException { ... }
    class CreateUserProfileResult { ... }
    class ListResourcesRequest { ... }
    class ListTeamMembersResult { ... }
    class UpdateUserProfileResult { ... }
    class UntagProjectRequest { ... }
    class ListProjectsRequest { ... }
    class ListTeamMembersRequest { ... }
    class TagProjectRequest { ... }
    class ValidationException { ... }
    class UserProfileNotFoundException { ... }
    class DisassociateTeamMemberResult { ... }
    class ListUserProfilesResult { ... }
    class TagProjectResult { ... }
    class UserProfileAlreadyExistsException { ... }
    class TeamMemberAlreadyAssociatedException { ... }
    class ConcurrentModificationException { ... }
    class DeleteUserProfileResult { ... }
    class DisassociateTeamMemberRequest { ... }
    class ListResourcesResult { ... }
    class ProjectSummary { ... }
    class UserProfileSummary { ... }
    class ListTagsForProjectResult { ... }
    class Resource { ... }
    class UpdateUserProfileRequest { ... }
    class UpdateTeamMemberResult { ... }
    class UpdateTeamMemberRequest { ... }
    class UpdateProjectResult { ... }
    class DescribeProjectResult { ... }
    class UntagProjectResult { ... }
    class ListUserProfilesRequest { ... }
    class ProjectConfigurationException { ... }
    class DeleteProjectRequest { ... }
    class UpdateProjectRequest { ... }
    class TeamMemberNotFoundException { ... }
    class CreateUserProfileRequest { ... }
    class DescribeUserProfileRequest { ... }
    class DescribeUserProfileResult { ... }
    class ListProjectsResult { ... }
    class ProjectNotFoundException { ... }
    class InvalidNextTokenException { ... }
    class ProjectAlreadyExistsException { ... }
    class TeamMember { ... }
    class DeleteUserProfileRequest { ... }
    class InvalidServiceRoleException { ... }
    class AssociateTeamMemberResult { ... }
    class CreateProjectResult { ... }
    class CreateProjectRequest { ... }
    class DescribeProjectRequest { ... }
    class ListTagsForProjectRequest { ... }
    class ProjectCreationFailedException { ... }

    class AssociateTeamMemberRequest {
        has Str $.user-arn is required;
        has Str $.project-id is required;
        has Str $.client-request-token;
        has Str $.project-role is required;
        has Bool $.remote-access-allowed;
    }

    class DeleteProjectResult {
        has Str $.stack-id is required;
        has Str $.project-arn is required;
    }

    class LimitExceededException {
    }

    subset TeamMemberResult of List[TeamMember];

    class CreateUserProfileResult {
        has DateTime $.last-modified-timestamp;
        has Str $.user-arn is required;
        has Str $.email-address;
        has Str $.ssh-public-key;
        has Str $.display-name;
        has DateTime $.created-timestamp;
    }

    class ListResourcesRequest {
        has Str $.project-id is required;
        has Int $.max-results;
        has Str $.next-token;
    }

    class ListTeamMembersResult {
        has TeamMemberResult $.team-members is required;
        has Str $.next-token;
    }

    class UpdateUserProfileResult {
        has DateTime $.last-modified-timestamp;
        has Str $.user-arn is required;
        has Str $.email-address;
        has Str $.ssh-public-key;
        has Str $.display-name;
        has DateTime $.created-timestamp;
    }

    class UntagProjectRequest {
        has Str $.id is required;
        has TagKeys $.tags is required;
    }

    class ListProjectsRequest {
        has Int $.max-results is required;
        has Str $.next-token is required;
    }

    class ListTeamMembersRequest {
        has Str $.project-id is required;
        has Int $.max-results;
        has Str $.next-token;
    }

    class TagProjectRequest {
        has Str $.id is required;
        has Tags $.tags is required;
    }

    class ValidationException {
    }

    class UserProfileNotFoundException {
    }

    class DisassociateTeamMemberResult {
    }

    class ListUserProfilesResult {
        has UserProfilesList $.user-profiles is required;
        has Str $.next-token;
    }

    subset TagKeys of List[Str];

    class TagProjectResult {
        has Tags $.tags is required;
    }

    class UserProfileAlreadyExistsException {
    }

    class TeamMemberAlreadyAssociatedException {
    }

    class ConcurrentModificationException {
    }

    class DeleteUserProfileResult {
        has Str $.user-arn is required;
    }

    class DisassociateTeamMemberRequest {
        has Str $.user-arn is required;
        has Str $.project-id is required;
    }

    class ListResourcesResult {
        has Str $.next-token is required;
        has ResourcesResult $.resources is required;
    }

    class ProjectSummary {
        has Str $.project-arn is required;
        has Str $.project-id is required;
    }

    class UserProfileSummary {
        has Str $.user-arn is required;
        has Str $.email-address is required;
        has Str $.ssh-public-key is required;
        has Str $.display-name is required;
    }

    class ListTagsForProjectResult {
        has Str $.next-token is required;
        has Tags $.tags is required;
    }

    class Resource {
        has Str $.id is required;
    }

    class UpdateUserProfileRequest {
        has Str $.user-arn is required;
        has Str $.email-address;
        has Str $.ssh-public-key;
        has Str $.display-name;
    }

    class UpdateTeamMemberResult {
        has Str $.user-arn is required;
        has Str $.project-role is required;
        has Bool $.remote-access-allowed is required;
    }

    class UpdateTeamMemberRequest {
        has Str $.user-arn is required;
        has Str $.project-id is required;
        has Str $.project-role;
        has Bool $.remote-access-allowed;
    }

    class UpdateProjectResult {
    }

    class DescribeProjectResult {
        has Str $.stack-id is required;
        has Str $.arn is required;
        has Str $.name is required;
        has Str $.project-template-id is required;
        has DateTime $.created-time-stamp is required;
        has Str $.client-request-token is required;
        has Str $.id is required;
        has Str $.description is required;
    }

    class UntagProjectResult {
    }

    class ListUserProfilesRequest {
        has Int $.max-results is required;
        has Str $.next-token is required;
    }

    class ProjectConfigurationException {
    }

    subset ProjectsList of List[ProjectSummary];

    class DeleteProjectRequest {
        has Bool $.delete-stack;
        has Str $.client-request-token;
        has Str $.id is required;
    }

    class UpdateProjectRequest {
        has Str $.name;
        has Str $.id is required;
        has Str $.description;
    }

    class TeamMemberNotFoundException {
    }

    class CreateUserProfileRequest {
        has Str $.user-arn is required;
        has Str $.email-address is required;
        has Str $.ssh-public-key;
        has Str $.display-name is required;
    }

    class DescribeUserProfileRequest {
        has Str $.user-arn is required;
    }

    class DescribeUserProfileResult {
        has DateTime $.last-modified-timestamp is required;
        has Str $.user-arn is required;
        has Str $.email-address;
        has Str $.ssh-public-key;
        has Str $.display-name;
        has DateTime $.created-timestamp is required;
    }

    class ListProjectsResult {
        has Str $.next-token;
        has ProjectsList $.projects is required;
    }

    class ProjectNotFoundException {
    }

    class InvalidNextTokenException {
    }

    class ProjectAlreadyExistsException {
    }

    class TeamMember {
        has Str $.user-arn is required;
        has Str $.project-role is required;
        has Bool $.remote-access-allowed;
    }

    subset Tags of Map[Str, Str];

    class DeleteUserProfileRequest {
        has Str $.user-arn is required;
    }

    class InvalidServiceRoleException {
    }

    subset UserProfilesList of List[UserProfileSummary];

    class AssociateTeamMemberResult {
        has Str $.client-request-token is required;
    }

    class CreateProjectResult {
        has Str $.arn is required;
        has Str $.project-template-id;
        has Str $.client-request-token;
        has Str $.id is required;
    }

    class CreateProjectRequest {
        has Str $.name is required;
        has Str $.client-request-token;
        has Str $.id is required;
        has Str $.description;
    }

    subset ResourcesResult of List[Resource];

    class DescribeProjectRequest {
        has Str $.id is required;
    }

    class ListTagsForProjectRequest {
        has Int $.max-results;
        has Str $.next-token;
        has Str $.id is required;
    }

    class ProjectCreationFailedException {
    }

    method update-team-member(
        Str :$user-arn!,
        Str :$project-id!,
        Str :$project-role,
        Bool :$remote-access-allowed
    ) returns UpdateTeamMemberResult {
        my $request-input =         UpdateTeamMemberRequest.new(
            :$user-arn,
            :$project-id,
            :$project-role,
            :$remote-access-allowed
        );
;
        self.perform-operation(
            :api-call<UpdateTeamMember>,
            :return-type(UpdateTeamMemberResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method delete-user-profile(
        Str :$user-arn!
    ) returns DeleteUserProfileResult {
        my $request-input =         DeleteUserProfileRequest.new(
            :$user-arn
        );
;
        self.perform-operation(
            :api-call<DeleteUserProfile>,
            :return-type(DeleteUserProfileResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method delete-project(
        Bool :$delete-stack,
        Str :$client-request-token,
        Str :$id!
    ) returns DeleteProjectResult {
        my $request-input =         DeleteProjectRequest.new(
            :$delete-stack,
            :$client-request-token,
            :$id
        );
;
        self.perform-operation(
            :api-call<DeleteProject>,
            :return-type(DeleteProjectResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method create-project(
        Str :$name!,
        Str :$client-request-token,
        Str :$id!,
        Str :$description
    ) returns CreateProjectResult {
        my $request-input =         CreateProjectRequest.new(
            :$name,
            :$client-request-token,
            :$id,
            :$description
        );
;
        self.perform-operation(
            :api-call<CreateProject>,
            :return-type(CreateProjectResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method update-project(
        Str :$name,
        Str :$id!,
        Str :$description
    ) returns UpdateProjectResult {
        my $request-input =         UpdateProjectRequest.new(
            :$name,
            :$id,
            :$description
        );
;
        self.perform-operation(
            :api-call<UpdateProject>,
            :return-type(UpdateProjectResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method list-user-profiles(
        Int :$max-results!,
        Str :$next-token!
    ) returns ListUserProfilesResult {
        my $request-input =         ListUserProfilesRequest.new(
            :$max-results,
            :$next-token
        );
;
        self.perform-operation(
            :api-call<ListUserProfiles>,
            :return-type(ListUserProfilesResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method untag-project(
        Str :$id!,
        TagKeys :$tags!
    ) returns UntagProjectResult {
        my $request-input =         UntagProjectRequest.new(
            :$id,
            :$tags
        );
;
        self.perform-operation(
            :api-call<UntagProject>,
            :return-type(UntagProjectResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method tag-project(
        Str :$id!,
        Tags :$tags!
    ) returns TagProjectResult {
        my $request-input =         TagProjectRequest.new(
            :$id,
            :$tags
        );
;
        self.perform-operation(
            :api-call<TagProject>,
            :return-type(TagProjectResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method list-tags-for-project(
        Int :$max-results,
        Str :$next-token,
        Str :$id!
    ) returns ListTagsForProjectResult {
        my $request-input =         ListTagsForProjectRequest.new(
            :$max-results,
            :$next-token,
            :$id
        );
;
        self.perform-operation(
            :api-call<ListTagsForProject>,
            :return-type(ListTagsForProjectResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method list-resources(
        Str :$project-id!,
        Int :$max-results,
        Str :$next-token
    ) returns ListResourcesResult {
        my $request-input =         ListResourcesRequest.new(
            :$project-id,
            :$max-results,
            :$next-token
        );
;
        self.perform-operation(
            :api-call<ListResources>,
            :return-type(ListResourcesResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method disassociate-team-member(
        Str :$user-arn!,
        Str :$project-id!
    ) returns DisassociateTeamMemberResult {
        my $request-input =         DisassociateTeamMemberRequest.new(
            :$user-arn,
            :$project-id
        );
;
        self.perform-operation(
            :api-call<DisassociateTeamMember>,
            :return-type(DisassociateTeamMemberResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method describe-user-profile(
        Str :$user-arn!
    ) returns DescribeUserProfileResult {
        my $request-input =         DescribeUserProfileRequest.new(
            :$user-arn
        );
;
        self.perform-operation(
            :api-call<DescribeUserProfile>,
            :return-type(DescribeUserProfileResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method update-user-profile(
        Str :$user-arn!,
        Str :$email-address,
        Str :$ssh-public-key,
        Str :$display-name
    ) returns UpdateUserProfileResult {
        my $request-input =         UpdateUserProfileRequest.new(
            :$user-arn,
            :$email-address,
            :$ssh-public-key,
            :$display-name
        );
;
        self.perform-operation(
            :api-call<UpdateUserProfile>,
            :return-type(UpdateUserProfileResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method list-projects(
        Int :$max-results!,
        Str :$next-token!
    ) returns ListProjectsResult {
        my $request-input =         ListProjectsRequest.new(
            :$max-results,
            :$next-token
        );
;
        self.perform-operation(
            :api-call<ListProjects>,
            :return-type(ListProjectsResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method associate-team-member(
        Str :$user-arn!,
        Str :$project-id!,
        Str :$client-request-token,
        Str :$project-role!,
        Bool :$remote-access-allowed
    ) returns AssociateTeamMemberResult {
        my $request-input =         AssociateTeamMemberRequest.new(
            :$user-arn,
            :$project-id,
            :$client-request-token,
            :$project-role,
            :$remote-access-allowed
        );
;
        self.perform-operation(
            :api-call<AssociateTeamMember>,
            :return-type(AssociateTeamMemberResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method list-team-members(
        Str :$project-id!,
        Int :$max-results,
        Str :$next-token
    ) returns ListTeamMembersResult {
        my $request-input =         ListTeamMembersRequest.new(
            :$project-id,
            :$max-results,
            :$next-token
        );
;
        self.perform-operation(
            :api-call<ListTeamMembers>,
            :return-type(ListTeamMembersResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method describe-project(
        Str :$id!
    ) returns DescribeProjectResult {
        my $request-input =         DescribeProjectRequest.new(
            :$id
        );
;
        self.perform-operation(
            :api-call<DescribeProject>,
            :return-type(DescribeProjectResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

    method create-user-profile(
        Str :$user-arn!,
        Str :$email-address!,
        Str :$ssh-public-key,
        Str :$display-name!
    ) returns CreateUserProfileResult {
        my $request-input =         CreateUserProfileRequest.new(
            :$user-arn,
            :$email-address,
            :$ssh-public-key,
            :$display-name
        );
;
        self.perform-operation(
            :api-call<CreateUserProfile>,
            :return-type(CreateUserProfileResult),
            :result-wrapper(Nil),
            :$request-input,
        );
    }

}


