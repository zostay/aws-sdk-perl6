# THIS FILE IS AUTO-GENERATED. DO NOT EDIT.
use v6;

use AWS::SDK::Service;

class AWS::WAFRegional does AWS::SDK::Service{

    method api-version() { '2016-11-28' }
    method endpoint-prefix() { 'waf-regional' }


    class WAFInvalidAccountException { ... }
    class SqlInjectionMatchSetUpdate { ... }
    class SqlInjectionMatchSetSummary { ... }
    class SqlInjectionMatchSet { ... }
    class CreateRuleResponse { ... }
    class WebACLSummary { ... }
    class WAFInvalidParameterException { ... }
    class DeleteRateBasedRuleRequest { ... }
    class GetRateBasedRuleResponse { ... }
    class GetXssMatchSetRequest { ... }
    class GetXssMatchSetResponse { ... }
    class CreateSqlInjectionMatchSetResponse { ... }
    class CreateRuleRequest { ... }
    class GetSizeConstraintSetResponse { ... }
    class DeleteXssMatchSetRequest { ... }
    class DeleteSizeConstraintSetRequest { ... }
    class ListSizeConstraintSetsResponse { ... }
    class ListWebACLsResponse { ... }
    class UpdateSqlInjectionMatchSetRequest { ... }
    class UpdateRateBasedRuleResponse { ... }
    class SizeConstraint { ... }
    class CreateSqlInjectionMatchSetRequest { ... }
    class ActivatedRule { ... }
    class GetChangeTokenResponse { ... }
    class GetIPSetResponse { ... }
    class GetSqlInjectionMatchSetResponse { ... }
    class RateBasedRule { ... }
    class XssMatchTuple { ... }
    class GetByteMatchSetRequest { ... }
    class UpdateIPSetResponse { ... }
    class GetChangeTokenRequest { ... }
    class GetChangeTokenStatusRequest { ... }
    class GetSampledRequestsRequest { ... }
    class WafAction { ... }
    class WAFStaleDataException { ... }
    class GetRateBasedRuleManagedKeysRequest { ... }
    class WebACL { ... }
    class CreateIPSetRequest { ... }
    class GetRuleRequest { ... }
    class ListByteMatchSetsRequest { ... }
    class ListSizeConstraintSetsRequest { ... }
    class WAFUnavailableEntityException { ... }
    class WAFNonEmptyEntityException { ... }
    class DisassociateWebACLResponse { ... }
    class DeleteSqlInjectionMatchSetResponse { ... }
    class DeleteIPSetResponse { ... }
    class CreateRateBasedRuleRequest { ... }
    class ListRateBasedRulesResponse { ... }
    class UpdateByteMatchSetResponse { ... }
    class UpdateByteMatchSetRequest { ... }
    class GetChangeTokenStatusResponse { ... }
    class GetRateBasedRuleRequest { ... }
    class RuleSummary { ... }
    class XssMatchSet { ... }
    class WAFNonexistentContainerException { ... }
    class DeleteWebACLResponse { ... }
    class CreateIPSetResponse { ... }
    class IPSetDescriptor { ... }
    class ListXssMatchSetsRequest { ... }
    class UpdateIPSetRequest { ... }
    class CreateWebACLResponse { ... }
    class HTTPHeader { ... }
    class HTTPRequest { ... }
    class UpdateSqlInjectionMatchSetResponse { ... }
    class SqlInjectionMatchTuple { ... }
    class ByteMatchSet { ... }
    class DeleteWebACLRequest { ... }
    class GetWebACLForResourceRequest { ... }
    class ListWebACLsRequest { ... }
    class XssMatchSetSummary { ... }
    class Predicate { ... }
    class DisassociateWebACLRequest { ... }
    class AssociateWebACLResponse { ... }
    class ListByteMatchSetsResponse { ... }
    class ListIPSetsResponse { ... }
    class ListSqlInjectionMatchSetsResponse { ... }
    class SizeConstraintSetUpdate { ... }
    class CreateRateBasedRuleResponse { ... }
    class CreateByteMatchSetResponse { ... }
    class ByteMatchSetUpdate { ... }
    class ListRateBasedRulesRequest { ... }
    class ListResourcesForWebACLRequest { ... }
    class WAFDisallowedNameException { ... }
    class DeleteRuleRequest { ... }
    class GetByteMatchSetResponse { ... }
    class ListIPSetsRequest { ... }
    class WAFInternalErrorException { ... }
    class UpdateRuleResponse { ... }
    class TimeWindow { ... }
    class ListRulesRequest { ... }
    class ListSqlInjectionMatchSetsRequest { ... }
    class WAFReferencedItemException { ... }
    class WAFInvalidOperationException { ... }
    class RuleUpdate { ... }
    class GetSampledRequestsResponse { ... }
    class IPSetSummary { ... }
    class WebACLUpdate { ... }
    class DeleteXssMatchSetResponse { ... }
    class CreateByteMatchSetRequest { ... }
    class ListRulesResponse { ... }
    class ListXssMatchSetsResponse { ... }
    class CreateWebACLRequest { ... }
    class GetWebACLRequest { ... }
    class XssMatchSetUpdate { ... }
    class UpdateWebACLResponse { ... }
    class SizeConstraintSetSummary { ... }
    class SampledHTTPRequest { ... }
    class GetWebACLResponse { ... }
    class ListResourcesForWebACLResponse { ... }
    class UpdateWebACLRequest { ... }
    class UpdateRateBasedRuleRequest { ... }
    class DeleteRuleResponse { ... }
    class AssociateWebACLRequest { ... }
    class UpdateRuleRequest { ... }
    class DeleteByteMatchSetResponse { ... }
    class FieldToMatch { ... }
    class GetIPSetRequest { ... }
    class WAFLimitsExceededException { ... }
    class CreateXssMatchSetResponse { ... }
    class ByteMatchTuple { ... }
    class ByteMatchSetSummary { ... }
    class GetRateBasedRuleManagedKeysResponse { ... }
    class GetSqlInjectionMatchSetRequest { ... }
    class IPSet { ... }
    class UpdateSizeConstraintSetRequest { ... }
    class CreateSizeConstraintSetRequest { ... }
    class UpdateXssMatchSetRequest { ... }
    class DeleteSqlInjectionMatchSetRequest { ... }
    class DeleteByteMatchSetRequest { ... }
    class GetWebACLForResourceResponse { ... }
    class WAFNonexistentItemException { ... }
    class DeleteSizeConstraintSetResponse { ... }
    class CreateXssMatchSetRequest { ... }
    class GetSizeConstraintSetRequest { ... }
    class IPSetUpdate { ... }
    class UpdateSizeConstraintSetResponse { ... }
    class SizeConstraintSet { ... }
    class DeleteRateBasedRuleResponse { ... }
    class CreateSizeConstraintSetResponse { ... }
    class Rule { ... }
    class UpdateXssMatchSetResponse { ... }
    class DeleteIPSetRequest { ... }
    class GetRuleResponse { ... }

    subset WebACLSummaries of List[WebACLSummary];

    class WAFInvalidAccountException {
    }

    class SqlInjectionMatchSetUpdate {
        has Str $.action is required;
        has SqlInjectionMatchTuple $.sql-injection-match-tuple is required;
    }

    class SqlInjectionMatchSetSummary {
        has Str $.name is required;
        has Str $.sql-injection-match-set-id is required;
    }

    class SqlInjectionMatchSet {
        has Str $.name;
        has Str $.sql-injection-match-set-id is required;
        has SqlInjectionMatchTuples $.sql-injection-match-tuples is required;
    }

    class CreateRuleResponse {
        has Str $.change-token is required;
        has Rule $.rule is required;
    }

    class WebACLSummary {
        has Str $.web-acl-id is required;
        has Str $.name is required;
    }

    class WAFInvalidParameterException {
        has Str $.field is required;
        has Str $.parameter is required;
        has Str $.reason is required;
    }

    subset SqlInjectionMatchSetUpdates of List[SqlInjectionMatchSetUpdate];

    class DeleteRateBasedRuleRequest {
        has Str $.rule-id is required;
        has Str $.change-token is required;
    }

    class GetRateBasedRuleResponse {
        has RateBasedRule $.rule is required;
    }

    class GetXssMatchSetRequest {
        has Str $.xss-match-set-id is required;
    }

    class GetXssMatchSetResponse {
        has XssMatchSet $.xss-match-set is required;
    }

    subset RuleSummaries of List[RuleSummary];

    subset XssMatchSetUpdates of List[XssMatchSetUpdate];

    class CreateSqlInjectionMatchSetResponse {
        has SqlInjectionMatchSet $.sql-injection-match-set is required;
        has Str $.change-token is required;
    }

    class CreateRuleRequest {
        has Str $.metric-name is required;
        has Str $.name is required;
        has Str $.change-token is required;
    }

    class GetSizeConstraintSetResponse {
        has SizeConstraintSet $.size-constraint-set is required;
    }

    subset SizeConstraints of List[SizeConstraint];

    class DeleteXssMatchSetRequest {
        has Str $.xss-match-set-id is required;
        has Str $.change-token is required;
    }

    class DeleteSizeConstraintSetRequest {
        has Str $.size-constraint-set-id is required;
        has Str $.change-token is required;
    }

    class ListSizeConstraintSetsResponse {
        has SizeConstraintSetSummaries $.size-constraint-sets is required;
        has Str $.next-marker is required;
    }

    class ListWebACLsResponse {
        has WebACLSummaries $.web-acls is required;
        has Str $.next-marker is required;
    }

    class UpdateSqlInjectionMatchSetRequest {
        has SqlInjectionMatchSetUpdates $.updates is required;
        has Str $.change-token is required;
        has Str $.sql-injection-match-set-id is required;
    }

    class UpdateRateBasedRuleResponse {
        has Str $.change-token is required;
    }

    class SizeConstraint {
        has Str $.text-transformation is required;
        has FieldToMatch $.field-to-match is required;
        has Int $.size is required;
        has Str $.comparison-operator is required;
    }

    class CreateSqlInjectionMatchSetRequest {
        has Str $.name is required;
        has Str $.change-token is required;
    }

    class ActivatedRule {
        has Str $.rule-id is required;
        has WafAction $.action is required;
        has Str $.type;
        has Int $.priority is required;
    }

    class GetChangeTokenResponse {
        has Str $.change-token is required;
    }

    class GetIPSetResponse {
        has IPSet $.ip-set is required;
    }

    class GetSqlInjectionMatchSetResponse {
        has SqlInjectionMatchSet $.sql-injection-match-set is required;
    }

    class RateBasedRule {
        has Str $.rule-id is required;
        has Str $.rate-key is required;
        has Str $.metric-name;
        has Str $.name;
        has Int $.rate-limit is required;
        has Predicates $.match-predicates is required;
    }

    class XssMatchTuple {
        has Str $.text-transformation is required;
        has FieldToMatch $.field-to-match is required;
    }

    subset SizeConstraintSetSummaries of List[SizeConstraintSetSummary];

    class GetByteMatchSetRequest {
        has Str $.byte-match-set-id is required;
    }

    subset IPSetDescriptors of List[IPSetDescriptor];

    class UpdateIPSetResponse {
        has Str $.change-token is required;
    }

    class GetChangeTokenRequest {
    }

    class GetChangeTokenStatusRequest {
        has Str $.change-token is required;
    }

    class GetSampledRequestsRequest {
        has Str $.rule-id is required;
        has Str $.web-acl-id is required;
        has TimeWindow $.time-window is required;
        has Int $.max-items is required;
    }

    class WafAction {
        has Str $.type is required;
    }

    class WAFStaleDataException {
        has Str $.message is required;
    }

    class GetRateBasedRuleManagedKeysRequest {
        has Str $.rule-id is required;
        has Str $.next-marker;
    }

    class WebACL {
        has Str $.web-acl-id is required;
        has Str $.metric-name;
        has Str $.name;
        has ActivatedRules $.rules is required;
        has WafAction $.default-action is required;
    }

    class CreateIPSetRequest {
        has Str $.name is required;
        has Str $.change-token is required;
    }

    class GetRuleRequest {
        has Str $.rule-id is required;
    }

    class ListByteMatchSetsRequest {
        has Int $.limit is required;
        has Str $.next-marker is required;
    }

    class ListSizeConstraintSetsRequest {
        has Int $.limit is required;
        has Str $.next-marker is required;
    }

    class WAFUnavailableEntityException {
        has Str $.message is required;
    }

    class WAFNonEmptyEntityException {
        has Str $.message is required;
    }

    class DisassociateWebACLResponse {
    }

    class DeleteSqlInjectionMatchSetResponse {
        has Str $.change-token is required;
    }

    class DeleteIPSetResponse {
        has Str $.change-token is required;
    }

    class CreateRateBasedRuleRequest {
        has Str $.rate-key is required;
        has Str $.metric-name is required;
        has Str $.name is required;
        has Str $.change-token is required;
        has Int $.rate-limit is required;
    }

    class ListRateBasedRulesResponse {
        has RuleSummaries $.rules is required;
        has Str $.next-marker is required;
    }

    class UpdateByteMatchSetResponse {
        has Str $.change-token is required;
    }

    class UpdateByteMatchSetRequest {
        has Str $.byte-match-set-id is required;
        has ByteMatchSetUpdates $.updates is required;
        has Str $.change-token is required;
    }

    class GetChangeTokenStatusResponse {
        has Str $.change-token-status is required;
    }

    class GetRateBasedRuleRequest {
        has Str $.rule-id is required;
    }

    class RuleSummary {
        has Str $.rule-id is required;
        has Str $.name is required;
    }

    class XssMatchSet {
        has XssMatchTuples $.xss-match-tuples is required;
        has Str $.name;
        has Str $.xss-match-set-id is required;
    }

    class WAFNonexistentContainerException {
        has Str $.message is required;
    }

    class DeleteWebACLResponse {
        has Str $.change-token is required;
    }

    class CreateIPSetResponse {
        has IPSet $.ip-set is required;
        has Str $.change-token is required;
    }

    class IPSetDescriptor {
        has Str $.value is required;
        has Str $.type is required;
    }

    class ListXssMatchSetsRequest {
        has Int $.limit is required;
        has Str $.next-marker is required;
    }

    class UpdateIPSetRequest {
        has IPSetUpdates $.updates is required;
        has Str $.change-token is required;
        has Str $.ip-set-id is required;
    }

    class CreateWebACLResponse {
        has WebACL $.web-acl is required;
        has Str $.change-token is required;
    }

    class HTTPHeader {
        has Str $.name is required;
        has Str $.value is required;
    }

    class HTTPRequest {
        has Str $.method is required;
        has HTTPHeaders $.headers is required;
        has Str $.http-version is required;
        has Str $.uri is required;
        has Str $.country is required;
        has Str $.client-ip is required;
    }

    class UpdateSqlInjectionMatchSetResponse {
        has Str $.change-token is required;
    }

    class SqlInjectionMatchTuple {
        has Str $.text-transformation is required;
        has FieldToMatch $.field-to-match is required;
    }

    class ByteMatchSet {
        has Str $.name;
        has ByteMatchTuples $.byte-match-tuples is required;
        has Str $.byte-match-set-id is required;
    }

    subset Predicates of List[Predicate];

    subset SampledHTTPRequests of List[SampledHTTPRequest];

    class DeleteWebACLRequest {
        has Str $.web-acl-id is required;
        has Str $.change-token is required;
    }

    class GetWebACLForResourceRequest {
        has Str $.resource-arn is required;
    }

    class ListWebACLsRequest {
        has Int $.limit is required;
        has Str $.next-marker is required;
    }

    class XssMatchSetSummary {
        has Str $.name is required;
        has Str $.xss-match-set-id is required;
    }

    class Predicate {
        has Str $.data-id is required;
        has Str $.type is required;
        has Bool $.negated is required;
    }

    subset SqlInjectionMatchSetSummaries of List[SqlInjectionMatchSetSummary];

    class DisassociateWebACLRequest {
        has Str $.resource-arn is required;
    }

    class AssociateWebACLResponse {
    }

    subset IPSetSummaries of List[IPSetSummary];

    class ListByteMatchSetsResponse {
        has ByteMatchSetSummaries $.byte-match-sets is required;
        has Str $.next-marker is required;
    }

    class ListIPSetsResponse {
        has IPSetSummaries $.ip-sets is required;
        has Str $.next-marker is required;
    }

    class ListSqlInjectionMatchSetsResponse {
        has SqlInjectionMatchSetSummaries $.sql-injection-match-sets is required;
        has Str $.next-marker is required;
    }

    class SizeConstraintSetUpdate {
        has SizeConstraint $.size-constraint is required;
        has Str $.action is required;
    }

    class CreateRateBasedRuleResponse {
        has Str $.change-token is required;
        has RateBasedRule $.rule is required;
    }

    class CreateByteMatchSetResponse {
        has ByteMatchSet $.byte-match-set is required;
        has Str $.change-token is required;
    }

    class ByteMatchSetUpdate {
        has ByteMatchTuple $.byte-match-tuple is required;
        has Str $.action is required;
    }

    class ListRateBasedRulesRequest {
        has Int $.limit is required;
        has Str $.next-marker is required;
    }

    class ListResourcesForWebACLRequest {
        has Str $.web-acl-id is required;
    }

    class WAFDisallowedNameException {
        has Str $.message is required;
    }

    class DeleteRuleRequest {
        has Str $.rule-id is required;
        has Str $.change-token is required;
    }

    class GetByteMatchSetResponse {
        has ByteMatchSet $.byte-match-set is required;
    }

    class ListIPSetsRequest {
        has Int $.limit is required;
        has Str $.next-marker is required;
    }

    class WAFInternalErrorException {
        has Str $.message is required;
    }

    class UpdateRuleResponse {
        has Str $.change-token is required;
    }

    class TimeWindow {
        has DateTime $.end-time is required;
        has DateTime $.start-time is required;
    }

    class ListRulesRequest {
        has Int $.limit is required;
        has Str $.next-marker is required;
    }

    class ListSqlInjectionMatchSetsRequest {
        has Int $.limit is required;
        has Str $.next-marker is required;
    }

    class WAFReferencedItemException {
        has Str $.message is required;
    }

    class WAFInvalidOperationException {
        has Str $.message is required;
    }

    class RuleUpdate {
        has Str $.action is required;
        has Predicate $.predicate is required;
    }

    class GetSampledRequestsResponse {
        has Int $.population-size is required;
        has TimeWindow $.time-window is required;
        has SampledHTTPRequests $.sampled-requests is required;
    }

    class IPSetSummary {
        has Str $.name is required;
        has Str $.ip-set-id is required;
    }

    subset WebACLUpdates of List[WebACLUpdate];

    class WebACLUpdate {
        has ActivatedRule $.activated-rule is required;
        has Str $.action is required;
    }

    class DeleteXssMatchSetResponse {
        has Str $.change-token is required;
    }

    class CreateByteMatchSetRequest {
        has Str $.name is required;
        has Str $.change-token is required;
    }

    subset ByteMatchTuples of List[ByteMatchTuple];

    subset ByteMatchSetSummaries of List[ByteMatchSetSummary];

    class ListRulesResponse {
        has RuleSummaries $.rules is required;
        has Str $.next-marker is required;
    }

    class ListXssMatchSetsResponse {
        has XssMatchSetSummaries $.xss-match-sets is required;
        has Str $.next-marker is required;
    }

    class CreateWebACLRequest {
        has Str $.metric-name is required;
        has Str $.name is required;
        has WafAction $.default-action is required;
        has Str $.change-token is required;
    }

    class GetWebACLRequest {
        has Str $.web-acl-id is required;
    }

    subset HTTPHeaders of List[HTTPHeader];

    subset IPSetUpdates of List[IPSetUpdate];

    class XssMatchSetUpdate {
        has Str $.action is required;
        has XssMatchTuple $.xss-match-tuple is required;
    }

    subset XssMatchSetSummaries of List[XssMatchSetSummary];

    class UpdateWebACLResponse {
        has Str $.change-token is required;
    }

    class SizeConstraintSetSummary {
        has Str $.size-constraint-set-id is required;
        has Str $.name is required;
    }

    class SampledHTTPRequest {
        has Int $.weight is required;
        has Str $.action;
        has DateTime $.timestamp;
        has HTTPRequest $.request is required;
    }

    class GetWebACLResponse {
        has WebACL $.web-acl is required;
    }

    class ListResourcesForWebACLResponse {
        has ResourceArns $.resource-arns is required;
    }

    class UpdateWebACLRequest {
        has Str $.web-acl-id is required;
        has WafAction $.default-action;
        has WebACLUpdates $.updates;
        has Str $.change-token is required;
    }

    class UpdateRateBasedRuleRequest {
        has Str $.rule-id is required;
        has Int $.rate-limit is required;
        has RuleUpdates $.updates is required;
        has Str $.change-token is required;
    }

    class DeleteRuleResponse {
        has Str $.change-token is required;
    }

    class AssociateWebACLRequest {
        has Str $.web-acl-id is required;
        has Str $.resource-arn is required;
    }

    subset ResourceArns of List[Str];

    class UpdateRuleRequest {
        has Str $.rule-id is required;
        has RuleUpdates $.updates is required;
        has Str $.change-token is required;
    }

    class DeleteByteMatchSetResponse {
        has Str $.change-token is required;
    }

    class FieldToMatch {
        has Str $.data;
        has Str $.type is required;
    }

    class GetIPSetRequest {
        has Str $.ip-set-id is required;
    }

    subset ManagedKeys of List[Str];

    subset XssMatchTuples of List[XssMatchTuple];

    class WAFLimitsExceededException {
        has Str $.message is required;
    }

    class CreateXssMatchSetResponse {
        has XssMatchSet $.xss-match-set is required;
        has Str $.change-token is required;
    }

    class ByteMatchTuple {
        has Str $.positional-constraint is required;
        has Str $.text-transformation is required;
        has FieldToMatch $.field-to-match is required;
        has Blob $.target-string is required;
    }

    class ByteMatchSetSummary {
        has Str $.name is required;
        has Str $.byte-match-set-id is required;
    }

    class GetRateBasedRuleManagedKeysResponse {
        has ManagedKeys $.managed-keys is required;
        has Str $.next-marker is required;
    }

    class GetSqlInjectionMatchSetRequest {
        has Str $.sql-injection-match-set-id is required;
    }

    class IPSet {
        has Str $.name;
        has IPSetDescriptors $.ip-set-descriptors is required;
        has Str $.ip-set-id is required;
    }

    class UpdateSizeConstraintSetRequest {
        has Str $.size-constraint-set-id is required;
        has SizeConstraintSetUpdates $.updates is required;
        has Str $.change-token is required;
    }

    subset SizeConstraintSetUpdates of List[SizeConstraintSetUpdate];

    subset RuleUpdates of List[RuleUpdate];

    class CreateSizeConstraintSetRequest {
        has Str $.name is required;
        has Str $.change-token is required;
    }

    class UpdateXssMatchSetRequest {
        has Str $.xss-match-set-id is required;
        has XssMatchSetUpdates $.updates is required;
        has Str $.change-token is required;
    }

    class DeleteSqlInjectionMatchSetRequest {
        has Str $.change-token is required;
        has Str $.sql-injection-match-set-id is required;
    }

    class DeleteByteMatchSetRequest {
        has Str $.byte-match-set-id is required;
        has Str $.change-token is required;
    }

    subset ByteMatchSetUpdates of List[ByteMatchSetUpdate];

    class GetWebACLForResourceResponse {
        has WebACLSummary $.web-acl-summary is required;
    }

    class WAFNonexistentItemException {
        has Str $.message is required;
    }

    class DeleteSizeConstraintSetResponse {
        has Str $.change-token is required;
    }

    class CreateXssMatchSetRequest {
        has Str $.name is required;
        has Str $.change-token is required;
    }

    class GetSizeConstraintSetRequest {
        has Str $.size-constraint-set-id is required;
    }

    class IPSetUpdate {
        has IPSetDescriptor $.ip-set-descriptor is required;
        has Str $.action is required;
    }

    class UpdateSizeConstraintSetResponse {
        has Str $.change-token is required;
    }

    class SizeConstraintSet {
        has Str $.size-constraint-set-id is required;
        has SizeConstraints $.size-constraints is required;
        has Str $.name;
    }

    class DeleteRateBasedRuleResponse {
        has Str $.change-token is required;
    }

    class CreateSizeConstraintSetResponse {
        has Str $.change-token is required;
        has SizeConstraintSet $.size-constraint-set is required;
    }

    class Rule {
        has Str $.rule-id is required;
        has Str $.metric-name;
        has Str $.name;
        has Predicates $.predicates is required;
    }

    class UpdateXssMatchSetResponse {
        has Str $.change-token is required;
    }

    subset SqlInjectionMatchTuples of List[SqlInjectionMatchTuple];

    class DeleteIPSetRequest {
        has Str $.change-token is required;
        has Str $.ip-set-id is required;
    }

    subset ActivatedRules of List[ActivatedRule];

    class GetRuleResponse {
        has Rule $.rule is required;
    }

    method update-web-acl(
        Str :$web-acl-id!,
        WafAction :$default-action,
        WebACLUpdates :$updates,
        Str :$change-token!
    ) returns UpdateWebACLResponse {
        my $request-obj = UpdateWebACLRequest.new(
            :$web-acl-id,
            :$default-action,
            :$updates,
            :$change-token
        );
        self.perform-operation($request-obj);
    }

    method update-rate-based-rule(
        Str :$rule-id!,
        Int :$rate-limit!,
        RuleUpdates :$updates!,
        Str :$change-token!
    ) returns UpdateRateBasedRuleResponse {
        my $request-obj = UpdateRateBasedRuleRequest.new(
            :$rule-id,
            :$rate-limit,
            :$updates,
            :$change-token
        );
        self.perform-operation($request-obj);
    }

    method update-ip-set(
        IPSetUpdates :$updates!,
        Str :$change-token!,
        Str :$ip-set-id!
    ) returns UpdateIPSetResponse {
        my $request-obj = UpdateIPSetRequest.new(
            :$updates,
            :$change-token,
            :$ip-set-id
        );
        self.perform-operation($request-obj);
    }

    method list-size-constraint-sets(
        Int :$limit!,
        Str :$next-marker!
    ) returns ListSizeConstraintSetsResponse {
        my $request-obj = ListSizeConstraintSetsRequest.new(
            :$limit,
            :$next-marker
        );
        self.perform-operation($request-obj);
    }

    method get-sql-injection-match-set(
        Str :$sql-injection-match-set-id!
    ) returns GetSqlInjectionMatchSetResponse {
        my $request-obj = GetSqlInjectionMatchSetRequest.new(
            :$sql-injection-match-set-id
        );
        self.perform-operation($request-obj);
    }

    method get-change-token(

    ) returns GetChangeTokenResponse {
        my $request-obj = GetChangeTokenRequest.new(

        );
        self.perform-operation($request-obj);
    }

    method delete-xss-match-set(
        Str :$xss-match-set-id!,
        Str :$change-token!
    ) returns DeleteXssMatchSetResponse {
        my $request-obj = DeleteXssMatchSetRequest.new(
            :$xss-match-set-id,
            :$change-token
        );
        self.perform-operation($request-obj);
    }

    method create-byte-match-set(
        Str :$name!,
        Str :$change-token!
    ) returns CreateByteMatchSetResponse {
        my $request-obj = CreateByteMatchSetRequest.new(
            :$name,
            :$change-token
        );
        self.perform-operation($request-obj);
    }

    method get-rule(
        Str :$rule-id!
    ) returns GetRuleResponse {
        my $request-obj = GetRuleRequest.new(
            :$rule-id
        );
        self.perform-operation($request-obj);
    }

    method get-ip-set(
        Str :$ip-set-id!
    ) returns GetIPSetResponse {
        my $request-obj = GetIPSetRequest.new(
            :$ip-set-id
        );
        self.perform-operation($request-obj);
    }

    method delete-rule(
        Str :$rule-id!,
        Str :$change-token!
    ) returns DeleteRuleResponse {
        my $request-obj = DeleteRuleRequest.new(
            :$rule-id,
            :$change-token
        );
        self.perform-operation($request-obj);
    }

    method create-sql-injection-match-set(
        Str :$name!,
        Str :$change-token!
    ) returns CreateSqlInjectionMatchSetResponse {
        my $request-obj = CreateSqlInjectionMatchSetRequest.new(
            :$name,
            :$change-token
        );
        self.perform-operation($request-obj);
    }

    method create-size-constraint-set(
        Str :$name!,
        Str :$change-token!
    ) returns CreateSizeConstraintSetResponse {
        my $request-obj = CreateSizeConstraintSetRequest.new(
            :$name,
            :$change-token
        );
        self.perform-operation($request-obj);
    }

    method list-web-acls(
        Int :$limit!,
        Str :$next-marker!
    ) returns ListWebACLsResponse {
        my $request-obj = ListWebACLsRequest.new(
            :$limit,
            :$next-marker
        );
        self.perform-operation($request-obj);
    }

    method list-sql-injection-match-sets(
        Int :$limit!,
        Str :$next-marker!
    ) returns ListSqlInjectionMatchSetsResponse {
        my $request-obj = ListSqlInjectionMatchSetsRequest.new(
            :$limit,
            :$next-marker
        );
        self.perform-operation($request-obj);
    }

    method get-rate-based-rule-managed-keys(
        Str :$rule-id!,
        Str :$next-marker
    ) returns GetRateBasedRuleManagedKeysResponse {
        my $request-obj = GetRateBasedRuleManagedKeysRequest.new(
            :$rule-id,
            :$next-marker
        );
        self.perform-operation($request-obj);
    }

    method get-change-token-status(
        Str :$change-token!
    ) returns GetChangeTokenStatusResponse {
        my $request-obj = GetChangeTokenStatusRequest.new(
            :$change-token
        );
        self.perform-operation($request-obj);
    }

    method delete-byte-match-set(
        Str :$byte-match-set-id!,
        Str :$change-token!
    ) returns DeleteByteMatchSetResponse {
        my $request-obj = DeleteByteMatchSetRequest.new(
            :$byte-match-set-id,
            :$change-token
        );
        self.perform-operation($request-obj);
    }

    method create-rate-based-rule(
        Str :$rate-key!,
        Str :$metric-name!,
        Str :$name!,
        Str :$change-token!,
        Int :$rate-limit!
    ) returns CreateRateBasedRuleResponse {
        my $request-obj = CreateRateBasedRuleRequest.new(
            :$rate-key,
            :$metric-name,
            :$name,
            :$change-token,
            :$rate-limit
        );
        self.perform-operation($request-obj);
    }

    method update-sql-injection-match-set(
        SqlInjectionMatchSetUpdates :$updates!,
        Str :$change-token!,
        Str :$sql-injection-match-set-id!
    ) returns UpdateSqlInjectionMatchSetResponse {
        my $request-obj = UpdateSqlInjectionMatchSetRequest.new(
            :$updates,
            :$change-token,
            :$sql-injection-match-set-id
        );
        self.perform-operation($request-obj);
    }

    method disassociate-web-acl(
        Str :$resource-arn!
    ) returns DisassociateWebACLResponse {
        my $request-obj = DisassociateWebACLRequest.new(
            :$resource-arn
        );
        self.perform-operation($request-obj);
    }

    method delete-web-acl(
        Str :$web-acl-id!,
        Str :$change-token!
    ) returns DeleteWebACLResponse {
        my $request-obj = DeleteWebACLRequest.new(
            :$web-acl-id,
            :$change-token
        );
        self.perform-operation($request-obj);
    }

    method delete-size-constraint-set(
        Str :$size-constraint-set-id!,
        Str :$change-token!
    ) returns DeleteSizeConstraintSetResponse {
        my $request-obj = DeleteSizeConstraintSetRequest.new(
            :$size-constraint-set-id,
            :$change-token
        );
        self.perform-operation($request-obj);
    }

    method delete-rate-based-rule(
        Str :$rule-id!,
        Str :$change-token!
    ) returns DeleteRateBasedRuleResponse {
        my $request-obj = DeleteRateBasedRuleRequest.new(
            :$rule-id,
            :$change-token
        );
        self.perform-operation($request-obj);
    }

    method associate-web-acl(
        Str :$web-acl-id!,
        Str :$resource-arn!
    ) returns AssociateWebACLResponse {
        my $request-obj = AssociateWebACLRequest.new(
            :$web-acl-id,
            :$resource-arn
        );
        self.perform-operation($request-obj);
    }

    method list-rules(
        Int :$limit!,
        Str :$next-marker!
    ) returns ListRulesResponse {
        my $request-obj = ListRulesRequest.new(
            :$limit,
            :$next-marker
        );
        self.perform-operation($request-obj);
    }

    method get-web-acl-for-resource(
        Str :$resource-arn!
    ) returns GetWebACLForResourceResponse {
        my $request-obj = GetWebACLForResourceRequest.new(
            :$resource-arn
        );
        self.perform-operation($request-obj);
    }

    method get-web-acl(
        Str :$web-acl-id!
    ) returns GetWebACLResponse {
        my $request-obj = GetWebACLRequest.new(
            :$web-acl-id
        );
        self.perform-operation($request-obj);
    }

    method update-size-constraint-set(
        Str :$size-constraint-set-id!,
        SizeConstraintSetUpdates :$updates!,
        Str :$change-token!
    ) returns UpdateSizeConstraintSetResponse {
        my $request-obj = UpdateSizeConstraintSetRequest.new(
            :$size-constraint-set-id,
            :$updates,
            :$change-token
        );
        self.perform-operation($request-obj);
    }

    method list-resources-for-web-acl(
        Str :$web-acl-id!
    ) returns ListResourcesForWebACLResponse {
        my $request-obj = ListResourcesForWebACLRequest.new(
            :$web-acl-id
        );
        self.perform-operation($request-obj);
    }

    method list-rate-based-rules(
        Int :$limit!,
        Str :$next-marker!
    ) returns ListRateBasedRulesResponse {
        my $request-obj = ListRateBasedRulesRequest.new(
            :$limit,
            :$next-marker
        );
        self.perform-operation($request-obj);
    }

    method list-ip-sets(
        Int :$limit!,
        Str :$next-marker!
    ) returns ListIPSetsResponse {
        my $request-obj = ListIPSetsRequest.new(
            :$limit,
            :$next-marker
        );
        self.perform-operation($request-obj);
    }

    method get-size-constraint-set(
        Str :$size-constraint-set-id!
    ) returns GetSizeConstraintSetResponse {
        my $request-obj = GetSizeConstraintSetRequest.new(
            :$size-constraint-set-id
        );
        self.perform-operation($request-obj);
    }

    method create-xss-match-set(
        Str :$name!,
        Str :$change-token!
    ) returns CreateXssMatchSetResponse {
        my $request-obj = CreateXssMatchSetRequest.new(
            :$name,
            :$change-token
        );
        self.perform-operation($request-obj);
    }

    method update-xss-match-set(
        Str :$xss-match-set-id!,
        XssMatchSetUpdates :$updates!,
        Str :$change-token!
    ) returns UpdateXssMatchSetResponse {
        my $request-obj = UpdateXssMatchSetRequest.new(
            :$xss-match-set-id,
            :$updates,
            :$change-token
        );
        self.perform-operation($request-obj);
    }

    method update-rule(
        Str :$rule-id!,
        RuleUpdates :$updates!,
        Str :$change-token!
    ) returns UpdateRuleResponse {
        my $request-obj = UpdateRuleRequest.new(
            :$rule-id,
            :$updates,
            :$change-token
        );
        self.perform-operation($request-obj);
    }

    method list-xss-match-sets(
        Int :$limit!,
        Str :$next-marker!
    ) returns ListXssMatchSetsResponse {
        my $request-obj = ListXssMatchSetsRequest.new(
            :$limit,
            :$next-marker
        );
        self.perform-operation($request-obj);
    }

    method get-xss-match-set(
        Str :$xss-match-set-id!
    ) returns GetXssMatchSetResponse {
        my $request-obj = GetXssMatchSetRequest.new(
            :$xss-match-set-id
        );
        self.perform-operation($request-obj);
    }

    method get-sampled-requests(
        Str :$rule-id!,
        Str :$web-acl-id!,
        TimeWindow :$time-window!,
        Int :$max-items!
    ) returns GetSampledRequestsResponse {
        my $request-obj = GetSampledRequestsRequest.new(
            :$rule-id,
            :$web-acl-id,
            :$time-window,
            :$max-items
        );
        self.perform-operation($request-obj);
    }

    method get-rate-based-rule(
        Str :$rule-id!
    ) returns GetRateBasedRuleResponse {
        my $request-obj = GetRateBasedRuleRequest.new(
            :$rule-id
        );
        self.perform-operation($request-obj);
    }

    method delete-ip-set(
        Str :$change-token!,
        Str :$ip-set-id!
    ) returns DeleteIPSetResponse {
        my $request-obj = DeleteIPSetRequest.new(
            :$change-token,
            :$ip-set-id
        );
        self.perform-operation($request-obj);
    }

    method update-byte-match-set(
        Str :$byte-match-set-id!,
        ByteMatchSetUpdates :$updates!,
        Str :$change-token!
    ) returns UpdateByteMatchSetResponse {
        my $request-obj = UpdateByteMatchSetRequest.new(
            :$byte-match-set-id,
            :$updates,
            :$change-token
        );
        self.perform-operation($request-obj);
    }

    method list-byte-match-sets(
        Int :$limit!,
        Str :$next-marker!
    ) returns ListByteMatchSetsResponse {
        my $request-obj = ListByteMatchSetsRequest.new(
            :$limit,
            :$next-marker
        );
        self.perform-operation($request-obj);
    }

    method get-byte-match-set(
        Str :$byte-match-set-id!
    ) returns GetByteMatchSetResponse {
        my $request-obj = GetByteMatchSetRequest.new(
            :$byte-match-set-id
        );
        self.perform-operation($request-obj);
    }

    method delete-sql-injection-match-set(
        Str :$change-token!,
        Str :$sql-injection-match-set-id!
    ) returns DeleteSqlInjectionMatchSetResponse {
        my $request-obj = DeleteSqlInjectionMatchSetRequest.new(
            :$change-token,
            :$sql-injection-match-set-id
        );
        self.perform-operation($request-obj);
    }

    method create-web-acl(
        Str :$metric-name!,
        Str :$name!,
        WafAction :$default-action!,
        Str :$change-token!
    ) returns CreateWebACLResponse {
        my $request-obj = CreateWebACLRequest.new(
            :$metric-name,
            :$name,
            :$default-action,
            :$change-token
        );
        self.perform-operation($request-obj);
    }

    method create-rule(
        Str :$metric-name!,
        Str :$name!,
        Str :$change-token!
    ) returns CreateRuleResponse {
        my $request-obj = CreateRuleRequest.new(
            :$metric-name,
            :$name,
            :$change-token
        );
        self.perform-operation($request-obj);
    }

    method create-ip-set(
        Str :$name!,
        Str :$change-token!
    ) returns CreateIPSetResponse {
        my $request-obj = CreateIPSetRequest.new(
            :$name,
            :$change-token
        );
        self.perform-operation($request-obj);
    }

}


