# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config
NULL

#' Amazon WorkLink
#'
#' @description
#' Amazon WorkLink is a cloud-based service that provides secure access to
#' internal websites and web apps from iOS and Android phones. In a single
#' step, your users, such as employees, can access internal websites as
#' efficiently as they access any other public website. They enter a URL in
#' their web browser, or choose a link to an internal website in an email.
#' Amazon WorkLink authenticates the user's access and securely renders
#' authorized internal web content in a secure rendering service in the AWS
#' cloud. Amazon WorkLink doesn't download or store any internal web
#' content on mobile devices.
#'
#' @param
#' config
#' Optional configuration of credentials, endpoint, and/or region.
#' \itemize{
#' \item{\strong{access_key_id}:} {AWS access key ID}
#' \item{\strong{secret_access_key}:} {AWS secret access key}
#' \item{\strong{session_token}:} {AWS temporary session token}
#' \item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
#' \item{\strong{anonymous}:} {Set anonymous credentials.}
#' \item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
#' \item{\strong{region}:} {The AWS Region used in instantiating the client.}
#' \item{\strong{close_connection}:} {Immediately close all HTTP connections.}
#' \item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
#' \item{\strong{s3_force_path_style}:} {Set this to `true` to force the request to use path-style addressing, i.e., `http://s3.amazonaws.com/BUCKET/KEY`.}
#' }
#'
#' @section Service syntax:
#' ```
#' svc <- worklink(
#'   config = list(
#'     credentials = list(
#'       creds = list(
#'         access_key_id = "string",
#'         secret_access_key = "string",
#'         session_token = "string"
#'       ),
#'       profile = "string",
#'       anonymous = "logical"
#'     ),
#'     endpoint = "string",
#'     region = "string",
#'     close_connection = "logical",
#'     timeout = "numeric",
#'     s3_force_path_style = "logical"
#'   )
#' )
#' ```
#'
#' @examples
#' \dontrun{
#' svc <- worklink()
#' svc$associate_domain(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=worklink_associate_domain]{associate_domain} \tab Specifies a domain to be associated to Amazon WorkLink\cr
#'  \link[=worklink_associate_website_authorization_provider]{associate_website_authorization_provider} \tab Associates a website authorization provider with a specified fleet\cr
#'  \link[=worklink_associate_website_certificate_authority]{associate_website_certificate_authority} \tab Imports the root certificate of a certificate authority (CA) used to obtain TLS certificates used by associated websites within the company network\cr
#'  \link[=worklink_create_fleet]{create_fleet} \tab Creates a fleet\cr
#'  \link[=worklink_delete_fleet]{delete_fleet} \tab Deletes a fleet\cr
#'  \link[=worklink_describe_audit_stream_configuration]{describe_audit_stream_configuration} \tab Describes the configuration for delivering audit streams to the customer account\cr
#'  \link[=worklink_describe_company_network_configuration]{describe_company_network_configuration} \tab Describes the networking configuration to access the internal websites associated with the specified fleet\cr
#'  \link[=worklink_describe_device]{describe_device} \tab Provides information about a user's device\cr
#'  \link[=worklink_describe_device_policy_configuration]{describe_device_policy_configuration} \tab Describes the device policy configuration for the specified fleet\cr
#'  \link[=worklink_describe_domain]{describe_domain} \tab Provides information about the domain\cr
#'  \link[=worklink_describe_fleet_metadata]{describe_fleet_metadata} \tab Provides basic information for the specified fleet, excluding identity provider, networking, and device configuration details\cr
#'  \link[=worklink_describe_identity_provider_configuration]{describe_identity_provider_configuration} \tab Describes the identity provider configuration of the specified fleet\cr
#'  \link[=worklink_describe_website_certificate_authority]{describe_website_certificate_authority} \tab Provides information about the certificate authority\cr
#'  \link[=worklink_disassociate_domain]{disassociate_domain} \tab Disassociates a domain from Amazon WorkLink\cr
#'  \link[=worklink_disassociate_website_authorization_provider]{disassociate_website_authorization_provider} \tab Disassociates a website authorization provider from a specified fleet\cr
#'  \link[=worklink_disassociate_website_certificate_authority]{disassociate_website_certificate_authority} \tab Removes a certificate authority (CA)\cr
#'  \link[=worklink_list_devices]{list_devices} \tab Retrieves a list of devices registered with the specified fleet\cr
#'  \link[=worklink_list_domains]{list_domains} \tab Retrieves a list of domains associated to a specified fleet\cr
#'  \link[=worklink_list_fleets]{list_fleets} \tab Retrieves a list of fleets for the current account and Region\cr
#'  \link[=worklink_list_tags_for_resource]{list_tags_for_resource} \tab Retrieves a list of tags for the specified resource\cr
#'  \link[=worklink_list_website_authorization_providers]{list_website_authorization_providers} \tab Retrieves a list of website authorization providers associated with a specified fleet\cr
#'  \link[=worklink_list_website_certificate_authorities]{list_website_certificate_authorities} \tab Retrieves a list of certificate authorities added for the current account and Region\cr
#'  \link[=worklink_restore_domain_access]{restore_domain_access} \tab Moves a domain to ACTIVE status if it was in the INACTIVE status\cr
#'  \link[=worklink_revoke_domain_access]{revoke_domain_access} \tab Moves a domain to INACTIVE status if it was in the ACTIVE status\cr
#'  \link[=worklink_sign_out_user]{sign_out_user} \tab Signs the user out from all of their devices\cr
#'  \link[=worklink_tag_resource]{tag_resource} \tab Adds or overwrites one or more tags for the specified resource, such as a fleet\cr
#'  \link[=worklink_untag_resource]{untag_resource} \tab Removes one or more tags from the specified resource\cr
#'  \link[=worklink_update_audit_stream_configuration]{update_audit_stream_configuration} \tab Updates the audit stream configuration for the fleet\cr
#'  \link[=worklink_update_company_network_configuration]{update_company_network_configuration} \tab Updates the company network configuration for the fleet\cr
#'  \link[=worklink_update_device_policy_configuration]{update_device_policy_configuration} \tab Updates the device policy configuration for the fleet\cr
#'  \link[=worklink_update_domain_metadata]{update_domain_metadata} \tab Updates domain metadata, such as DisplayName\cr
#'  \link[=worklink_update_fleet_metadata]{update_fleet_metadata} \tab Updates fleet metadata, such as DisplayName\cr
#'  \link[=worklink_update_identity_provider_configuration]{update_identity_provider_configuration} \tab Updates the identity provider configuration for the fleet
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname worklink
#' @export
worklink <- function(config = list()) {
  svc <- .worklink$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.worklink <- list()

.worklink$operations <- list()

.worklink$metadata <- list(
  service_name = "worklink",
  endpoints = list("*" = list(endpoint = "worklink.{region}.amazonaws.com", global = FALSE), "cn-*" = list(endpoint = "worklink.{region}.amazonaws.com.cn", global = FALSE), "us-iso-*" = list(endpoint = "worklink.{region}.c2s.ic.gov", global = FALSE), "us-isob-*" = list(endpoint = "worklink.{region}.sc2s.sgov.gov", global = FALSE)),
  service_id = "WorkLink",
  api_version = "2018-09-25",
  signing_name = "worklink",
  json_version = "1.1",
  target_prefix = ""
)

.worklink$service <- function(config = list()) {
  handlers <- new_handlers("restjson", "v4")
  new_service(.worklink$metadata, handlers, config)
}
