# THIS FILE IS AUTO-GENERATED. DO NOT EDIT.
use v6;

use AWS::SDK::Service;

class AWS::Route53Domains does AWS::SDK::Service{

    method api-version() { '2014-05-15' }
    method endpoint-prefix() { 'route53domains' }


    class ResendContactReachabilityEmailRequest { ... }
    class RegisterDomainRequest { ... }
    class GetOperationDetailResponse { ... }
    class OperationSummary { ... }
    class DisableDomainAutoRenewRequest { ... }
    class UpdateTagsForDomainResponse { ... }
    class ListOperationsResponse { ... }
    class ContactDetail { ... }
    class EnableDomainTransferLockRequest { ... }
    class UpdateDomainContactResponse { ... }
    class Nameserver { ... }
    class DeleteTagsForDomainRequest { ... }
    class DisableDomainAutoRenewResponse { ... }
    class DomainLimitExceeded { ... }
    class GetContactReachabilityStatusRequest { ... }
    class ListDomainsResponse { ... }
    class GetDomainSuggestionsRequest { ... }
    class DomainSummary { ... }
    class TransferDomainRequest { ... }
    class RegisterDomainResponse { ... }
    class OperationLimitExceeded { ... }
    class ExtraParam { ... }
    class GetDomainDetailRequest { ... }
    class UnsupportedTLD { ... }
    class TLDRulesViolation { ... }
    class GetOperationDetailRequest { ... }
    class DisableDomainTransferLockRequest { ... }
    class EnableDomainAutoRenewRequest { ... }
    class UpdateDomainNameserversRequest { ... }
    class ResendContactReachabilityEmailResponse { ... }
    class RenewDomainResponse { ... }
    class DuplicateRequest { ... }
    class EnableDomainTransferLockResponse { ... }
    class UpdateTagsForDomainRequest { ... }
    class BillingRecord { ... }
    class RetrieveDomainAuthCodeRequest { ... }
    class UpdateDomainContactPrivacyRequest { ... }
    class RenewDomainRequest { ... }
    class ListOperationsRequest { ... }
    class ListDomainsRequest { ... }
    class CheckDomainAvailabilityResponse { ... }
    class ViewBillingRequest { ... }
    class RetrieveDomainAuthCodeResponse { ... }
    class ListTagsForDomainResponse { ... }
    class GetDomainDetailResponse { ... }
    class CheckDomainAvailabilityRequest { ... }
    class DomainSuggestion { ... }
    class EnableDomainAutoRenewResponse { ... }
    class GetContactReachabilityStatusResponse { ... }
    class UpdateDomainNameserversResponse { ... }
    class TransferDomainResponse { ... }
    class GetDomainSuggestionsResponse { ... }
    class UpdateDomainContactRequest { ... }
    class ListTagsForDomainRequest { ... }
    class DeleteTagsForDomainResponse { ... }
    class DisableDomainTransferLockResponse { ... }
    class ViewBillingResponse { ... }
    class UpdateDomainContactPrivacyResponse { ... }
    class Tag { ... }
    class InvalidInput { ... }

    class ResendContactReachabilityEmailRequest {
        has Str $.domain-name is required;
    }

    class RegisterDomainRequest {
        has Str $.domain-name is required;
        has ContactDetail $.registrant-contact is required;
        has ContactDetail $.admin-contact is required;
        has Bool $.auto-renew;
        has Str $.idn-lang-code;
        has ContactDetail $.tech-contact is required;
        has Bool $.privacy-protect-tech-contact;
        has Bool $.privacy-protect-registrant-contact;
        has Bool $.privacy-protect-admin-contact;
        has Int $.duration-in-years is required;
    }

    class GetOperationDetailResponse {
        has Str $.domain-name is required;
        has DateTime $.submitted-date is required;
        has Str $.operation-id is required;
        has Str $.type is required;
        has Str $.status is required;
        has Str $.message is required;
    }

    class OperationSummary {
        has DateTime $.submitted-date is required;
        has Str $.operation-id is required;
        has Str $.type is required;
        has Str $.status is required;
    }

    class DisableDomainAutoRenewRequest {
        has Str $.domain-name is required;
    }

    class UpdateTagsForDomainResponse {
    }

    class ListOperationsResponse {
        has Str $.next-page-marker;
        has OperationSummaryList $.operations is required;
    }

    subset BillingRecords of List[BillingRecord];

    class ContactDetail {
        has Str $.phone-number is required;
        has Str $.organization-name is required;
        has Str $.fax is required;
        has Str $.last-name is required;
        has Str $.first-name is required;
        has ExtraParamList $.extra-params is required;
        has Str $.email is required;
        has Str $.zip-code is required;
        has Str $.country-code is required;
        has Str $.state is required;
        has Str $.address-line1 is required;
        has Str $.city is required;
        has Str $.contact-type is required;
        has Str $.address-line2 is required;
    }

    class EnableDomainTransferLockRequest {
        has Str $.domain-name is required;
    }

    class UpdateDomainContactResponse {
        has Str $.operation-id is required;
    }

    class Nameserver {
        has GlueIpList $.glue-ips;
        has Str $.name is required;
    }

    subset GlueIpList of List[Str];

    class DeleteTagsForDomainRequest {
        has Str $.domain-name is required;
        has TagKeyList $.tags-to-delete is required;
    }

    class DisableDomainAutoRenewResponse {
    }

    class DomainLimitExceeded {
        has Str $.message is required;
    }

    class GetContactReachabilityStatusRequest {
        has Str $.domain-name is required;
    }

    subset TagList of List[Tag];

    class ListDomainsResponse {
        has DomainSummaryList $.domains is required;
        has Str $.next-page-marker;
    }

    class GetDomainSuggestionsRequest {
        has Str $.domain-name is required;
        has Bool $.only-available is required;
        has Int $.suggestion-count is required;
    }

    subset DomainStatusList of List[Str];

    class DomainSummary {
        has Str $.domain-name is required;
        has Bool $.transfer-lock;
        has Bool $.auto-renew;
        has DateTime $.expiry;
    }

    class TransferDomainRequest {
        has Str $.domain-name is required;
        has ContactDetail $.registrant-contact is required;
        has ContactDetail $.admin-contact is required;
        has Bool $.auto-renew;
        has Str $.idn-lang-code;
        has ContactDetail $.tech-contact is required;
        has Bool $.privacy-protect-tech-contact;
        has Bool $.privacy-protect-registrant-contact;
        has Bool $.privacy-protect-admin-contact;
        has Str $.auth-code;
        has Int $.duration-in-years is required;
        has NameserverList $.nameservers;
    }

    subset TagKeyList of List[Str];

    class RegisterDomainResponse {
        has Str $.operation-id is required;
    }

    class OperationLimitExceeded {
        has Str $.message is required;
    }

    class ExtraParam {
        has Str $.name is required;
        has Str $.value is required;
    }

    class GetDomainDetailRequest {
        has Str $.domain-name is required;
    }

    class UnsupportedTLD {
        has Str $.message is required;
    }

    class TLDRulesViolation {
        has Str $.message is required;
    }

    class GetOperationDetailRequest {
        has Str $.operation-id is required;
    }

    class DisableDomainTransferLockRequest {
        has Str $.domain-name is required;
    }

    class EnableDomainAutoRenewRequest {
        has Str $.domain-name is required;
    }

    class UpdateDomainNameserversRequest {
        has Str $.domain-name is required;
        has NameserverList $.nameservers is required;
        has Str $.fi-auth-key;
    }

    class ResendContactReachabilityEmailResponse {
        has Bool $.is-already-verified is required;
        has Str $.domain-name is required;
        has Str $.email-address is required;
    }

    class RenewDomainResponse {
        has Str $.operation-id is required;
    }

    class DuplicateRequest {
        has Str $.message is required;
    }

    class EnableDomainTransferLockResponse {
        has Str $.operation-id is required;
    }

    class UpdateTagsForDomainRequest {
        has Str $.domain-name is required;
        has TagList $.tags-to-update;
    }

    class BillingRecord {
        has DateTime $.bill-date is required;
        has Str $.domain-name is required;
        has Num $.price is required;
        has Str $.invoice-id is required;
        has Str $.operation is required;
    }

    class RetrieveDomainAuthCodeRequest {
        has Str $.domain-name is required;
    }

    class UpdateDomainContactPrivacyRequest {
        has Bool $.admin-privacy;
        has Str $.domain-name is required;
        has Bool $.tech-privacy;
        has Bool $.registrant-privacy;
    }

    class RenewDomainRequest {
        has Str $.domain-name is required;
        has Int $.current-expiry-year is required;
        has Int $.duration-in-years;
    }

    class ListOperationsRequest {
        has Int $.max-items is required;
        has Str $.marker is required;
    }

    class ListDomainsRequest {
        has Int $.max-items is required;
        has Str $.marker is required;
    }

    class CheckDomainAvailabilityResponse {
        has Str $.availability is required;
    }

    subset DomainSuggestionsList of List[DomainSuggestion];

    subset ExtraParamList of List[ExtraParam];

    class ViewBillingRequest {
        has DateTime $.start is required;
        has DateTime $.end is required;
        has Int $.max-items is required;
        has Str $.marker is required;
    }

    class RetrieveDomainAuthCodeResponse {
        has Str $.auth-code is required;
    }

    subset OperationSummaryList of List[OperationSummary];

    class ListTagsForDomainResponse {
        has TagList $.tag-list is required;
    }

    class GetDomainDetailResponse {
        has DomainStatusList $.status-list;
        has DateTime $.creation-date;
        has Str $.registrar-url;
        has Str $.registrar-name;
        has Bool $.admin-privacy;
        has Str $.domain-name is required;
        has DateTime $.expiration-date;
        has Str $.dns-sec;
        has Str $.abuse-contact-email;
        has ContactDetail $.registrant-contact is required;
        has ContactDetail $.admin-contact is required;
        has Bool $.auto-renew;
        has Str $.abuse-contact-phone;
        has Str $.who-is-server;
        has ContactDetail $.tech-contact is required;
        has Str $.registry-domain-id;
        has Bool $.tech-privacy;
        has Bool $.registrant-privacy;
        has DateTime $.updated-date;
        has Str $.reseller;
        has NameserverList $.nameservers is required;
    }

    class CheckDomainAvailabilityRequest {
        has Str $.domain-name is required;
        has Str $.idn-lang-code;
    }

    class DomainSuggestion {
        has Str $.domain-name is required;
        has Str $.availability is required;
    }

    class EnableDomainAutoRenewResponse {
    }

    class GetContactReachabilityStatusResponse {
        has Str $.status is required;
        has Str $.domain-name is required;
    }

    class UpdateDomainNameserversResponse {
        has Str $.operation-id is required;
    }

    class TransferDomainResponse {
        has Str $.operation-id is required;
    }

    class GetDomainSuggestionsResponse {
        has DomainSuggestionsList $.suggestions-list is required;
    }

    subset DomainSummaryList of List[DomainSummary];

    class UpdateDomainContactRequest {
        has Str $.domain-name is required;
        has ContactDetail $.registrant-contact;
        has ContactDetail $.admin-contact;
        has ContactDetail $.tech-contact;
    }

    class ListTagsForDomainRequest {
        has Str $.domain-name is required;
    }

    class DeleteTagsForDomainResponse {
    }

    class DisableDomainTransferLockResponse {
        has Str $.operation-id is required;
    }

    class ViewBillingResponse {
        has BillingRecords $.billing-records is required;
        has Str $.next-page-marker is required;
    }

    class UpdateDomainContactPrivacyResponse {
        has Str $.operation-id is required;
    }

    class Tag {
        has Str $.value is required;
        has Str $.key is required;
    }

    subset NameserverList of List[Nameserver];

    class InvalidInput {
        has Str $.message is required;
    }

    method update-tags-for-domain(
        Str :$domain-name!,
        TagList :$tags-to-update
    ) returns UpdateTagsForDomainResponse {
        my $request-obj = UpdateTagsForDomainRequest.new(
            :$domain-name,
            :$tags-to-update
        );
        self.perform-operation($request-obj);
    }

    method update-domain-contact(
        Str :$domain-name!,
        ContactDetail :$registrant-contact,
        ContactDetail :$admin-contact,
        ContactDetail :$tech-contact
    ) returns UpdateDomainContactResponse {
        my $request-obj = UpdateDomainContactRequest.new(
            :$domain-name,
            :$registrant-contact,
            :$admin-contact,
            :$tech-contact
        );
        self.perform-operation($request-obj);
    }

    method get-operation-detail(
        Str :$operation-id!
    ) returns GetOperationDetailResponse {
        my $request-obj = GetOperationDetailRequest.new(
            :$operation-id
        );
        self.perform-operation($request-obj);
    }

    method disable-domain-auto-renew(
        Str :$domain-name!
    ) returns DisableDomainAutoRenewResponse {
        my $request-obj = DisableDomainAutoRenewRequest.new(
            :$domain-name
        );
        self.perform-operation($request-obj);
    }

    method transfer-domain(
        Str :$domain-name!,
        ContactDetail :$registrant-contact!,
        ContactDetail :$admin-contact!,
        Bool :$auto-renew,
        Str :$idn-lang-code,
        ContactDetail :$tech-contact!,
        Bool :$privacy-protect-tech-contact,
        Bool :$privacy-protect-registrant-contact,
        Bool :$privacy-protect-admin-contact,
        Str :$auth-code,
        Int :$duration-in-years!,
        NameserverList :$nameservers
    ) returns TransferDomainResponse {
        my $request-obj = TransferDomainRequest.new(
            :$domain-name,
            :$registrant-contact,
            :$admin-contact,
            :$auto-renew,
            :$idn-lang-code,
            :$tech-contact,
            :$privacy-protect-tech-contact,
            :$privacy-protect-registrant-contact,
            :$privacy-protect-admin-contact,
            :$auth-code,
            :$duration-in-years,
            :$nameservers
        );
        self.perform-operation($request-obj);
    }

    method get-domain-detail(
        Str :$domain-name!
    ) returns GetDomainDetailResponse {
        my $request-obj = GetDomainDetailRequest.new(
            :$domain-name
        );
        self.perform-operation($request-obj);
    }

    method view-billing(
        DateTime :$start!,
        DateTime :$end!,
        Int :$max-items!,
        Str :$marker!
    ) returns ViewBillingResponse {
        my $request-obj = ViewBillingRequest.new(
            :$start,
            :$end,
            :$max-items,
            :$marker
        );
        self.perform-operation($request-obj);
    }

    method update-domain-nameservers(
        Str :$domain-name!,
        NameserverList :$nameservers!,
        Str :$fi-auth-key
    ) returns UpdateDomainNameserversResponse {
        my $request-obj = UpdateDomainNameserversRequest.new(
            :$domain-name,
            :$nameservers,
            :$fi-auth-key
        );
        self.perform-operation($request-obj);
    }

    method renew-domain(
        Str :$domain-name!,
        Int :$current-expiry-year!,
        Int :$duration-in-years
    ) returns RenewDomainResponse {
        my $request-obj = RenewDomainRequest.new(
            :$domain-name,
            :$current-expiry-year,
            :$duration-in-years
        );
        self.perform-operation($request-obj);
    }

    method get-contact-reachability-status(
        Str :$domain-name!
    ) returns GetContactReachabilityStatusResponse {
        my $request-obj = GetContactReachabilityStatusRequest.new(
            :$domain-name
        );
        self.perform-operation($request-obj);
    }

    method enable-domain-auto-renew(
        Str :$domain-name!
    ) returns EnableDomainAutoRenewResponse {
        my $request-obj = EnableDomainAutoRenewRequest.new(
            :$domain-name
        );
        self.perform-operation($request-obj);
    }

    method delete-tags-for-domain(
        Str :$domain-name!,
        TagKeyList :$tags-to-delete!
    ) returns DeleteTagsForDomainResponse {
        my $request-obj = DeleteTagsForDomainRequest.new(
            :$domain-name,
            :$tags-to-delete
        );
        self.perform-operation($request-obj);
    }

    method resend-contact-reachability-email(
        Str :$domain-name!
    ) returns ResendContactReachabilityEmailResponse {
        my $request-obj = ResendContactReachabilityEmailRequest.new(
            :$domain-name
        );
        self.perform-operation($request-obj);
    }

    method list-tags-for-domain(
        Str :$domain-name!
    ) returns ListTagsForDomainResponse {
        my $request-obj = ListTagsForDomainRequest.new(
            :$domain-name
        );
        self.perform-operation($request-obj);
    }

    method update-domain-contact-privacy(
        Bool :$admin-privacy,
        Str :$domain-name!,
        Bool :$tech-privacy,
        Bool :$registrant-privacy
    ) returns UpdateDomainContactPrivacyResponse {
        my $request-obj = UpdateDomainContactPrivacyRequest.new(
            :$admin-privacy,
            :$domain-name,
            :$tech-privacy,
            :$registrant-privacy
        );
        self.perform-operation($request-obj);
    }

    method list-operations(
        Int :$max-items!,
        Str :$marker!
    ) returns ListOperationsResponse {
        my $request-obj = ListOperationsRequest.new(
            :$max-items,
            :$marker
        );
        self.perform-operation($request-obj);
    }

    method list-domains(
        Int :$max-items!,
        Str :$marker!
    ) returns ListDomainsResponse {
        my $request-obj = ListDomainsRequest.new(
            :$max-items,
            :$marker
        );
        self.perform-operation($request-obj);
    }

    method enable-domain-transfer-lock(
        Str :$domain-name!
    ) returns EnableDomainTransferLockResponse {
        my $request-obj = EnableDomainTransferLockRequest.new(
            :$domain-name
        );
        self.perform-operation($request-obj);
    }

    method disable-domain-transfer-lock(
        Str :$domain-name!
    ) returns DisableDomainTransferLockResponse {
        my $request-obj = DisableDomainTransferLockRequest.new(
            :$domain-name
        );
        self.perform-operation($request-obj);
    }

    method check-domain-availability(
        Str :$domain-name!,
        Str :$idn-lang-code
    ) returns CheckDomainAvailabilityResponse {
        my $request-obj = CheckDomainAvailabilityRequest.new(
            :$domain-name,
            :$idn-lang-code
        );
        self.perform-operation($request-obj);
    }

    method retrieve-domain-auth-code(
        Str :$domain-name!
    ) returns RetrieveDomainAuthCodeResponse {
        my $request-obj = RetrieveDomainAuthCodeRequest.new(
            :$domain-name
        );
        self.perform-operation($request-obj);
    }

    method register-domain(
        Str :$domain-name!,
        ContactDetail :$registrant-contact!,
        ContactDetail :$admin-contact!,
        Bool :$auto-renew,
        Str :$idn-lang-code,
        ContactDetail :$tech-contact!,
        Bool :$privacy-protect-tech-contact,
        Bool :$privacy-protect-registrant-contact,
        Bool :$privacy-protect-admin-contact,
        Int :$duration-in-years!
    ) returns RegisterDomainResponse {
        my $request-obj = RegisterDomainRequest.new(
            :$domain-name,
            :$registrant-contact,
            :$admin-contact,
            :$auto-renew,
            :$idn-lang-code,
            :$tech-contact,
            :$privacy-protect-tech-contact,
            :$privacy-protect-registrant-contact,
            :$privacy-protect-admin-contact,
            :$duration-in-years
        );
        self.perform-operation($request-obj);
    }

    method get-domain-suggestions(
        Str :$domain-name!,
        Bool :$only-available!,
        Int :$suggestion-count!
    ) returns GetDomainSuggestionsResponse {
        my $request-obj = GetDomainSuggestionsRequest.new(
            :$domain-name,
            :$only-available,
            :$suggestion-count
        );
        self.perform-operation($request-obj);
    }

}

