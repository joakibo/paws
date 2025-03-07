# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common new_handlers new_service set_config
NULL

#' AWS Panorama
#'
#' @description
#' **Overview**
#' 
#' This is the *AWS Panorama API Reference*. For an introduction to the
#' service, see [What is AWS
#' Panorama?](https://docs.aws.amazon.com/panorama/latest/dev/panorama-welcome.html)
#' in the *AWS Panorama Developer Guide*.
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
#' svc <- panorama(
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
#' svc <- panorama()
#' svc$create_application_instance(
#'   Foo = 123
#' )
#' }
#'
#' @section Operations:
#' \tabular{ll}{
#'  \link[=panorama_create_application_instance]{create_application_instance} \tab Creates an application instance and deploys it to a device\cr
#'  \link[=panorama_create_job_for_devices]{create_job_for_devices} \tab Creates a job to run on a device\cr
#'  \link[=panorama_create_node_from_template_job]{create_node_from_template_job} \tab Creates a camera stream node\cr
#'  \link[=panorama_create_package]{create_package} \tab Creates a package and storage location in an Amazon S3 access point\cr
#'  \link[=panorama_create_package_import_job]{create_package_import_job} \tab Imports a node package\cr
#'  \link[=panorama_delete_device]{delete_device} \tab Deletes a device\cr
#'  \link[=panorama_delete_package]{delete_package} \tab Deletes a package\cr
#'  \link[=panorama_deregister_package_version]{deregister_package_version} \tab Deregisters a package version\cr
#'  \link[=panorama_describe_application_instance]{describe_application_instance} \tab Returns information about an application instance on a device\cr
#'  \link[=panorama_describe_application_instance_details]{describe_application_instance_details} \tab Returns information about an application instance's configuration manifest\cr
#'  \link[=panorama_describe_device]{describe_device} \tab Returns information about a device\cr
#'  \link[=panorama_describe_device_job]{describe_device_job} \tab Returns information about a device job\cr
#'  \link[=panorama_describe_node]{describe_node} \tab Returns information about a node\cr
#'  \link[=panorama_describe_node_from_template_job]{describe_node_from_template_job} \tab Returns information about a job to create a camera stream node\cr
#'  \link[=panorama_describe_package]{describe_package} \tab Returns information about a package\cr
#'  \link[=panorama_describe_package_import_job]{describe_package_import_job} \tab Returns information about a package import job\cr
#'  \link[=panorama_describe_package_version]{describe_package_version} \tab Returns information about a package version\cr
#'  \link[=panorama_list_application_instance_dependencies]{list_application_instance_dependencies} \tab Returns a list of application instance dependencies\cr
#'  \link[=panorama_list_application_instance_node_instances]{list_application_instance_node_instances} \tab Returns a list of application node instances\cr
#'  \link[=panorama_list_application_instances]{list_application_instances} \tab Returns a list of application instances\cr
#'  \link[=panorama_list_devices]{list_devices} \tab Returns a list of devices\cr
#'  \link[=panorama_list_devices_jobs]{list_devices_jobs} \tab Returns a list of jobs\cr
#'  \link[=panorama_list_node_from_template_jobs]{list_node_from_template_jobs} \tab Returns a list of camera stream node jobs\cr
#'  \link[=panorama_list_nodes]{list_nodes} \tab Returns a list of nodes\cr
#'  \link[=panorama_list_package_import_jobs]{list_package_import_jobs} \tab Returns a list of package import jobs\cr
#'  \link[=panorama_list_packages]{list_packages} \tab Returns a list of packages\cr
#'  \link[=panorama_list_tags_for_resource]{list_tags_for_resource} \tab Returns a list of tags for a resource\cr
#'  \link[=panorama_provision_device]{provision_device} \tab Creates a device and returns a configuration archive\cr
#'  \link[=panorama_register_package_version]{register_package_version} \tab Registers a package version\cr
#'  \link[=panorama_remove_application_instance]{remove_application_instance} \tab Removes an application instance\cr
#'  \link[=panorama_signal_application_instance_node_instances]{signal_application_instance_node_instances} \tab Signal camera nodes to stop or resume\cr
#'  \link[=panorama_tag_resource]{tag_resource} \tab Tags a resource\cr
#'  \link[=panorama_untag_resource]{untag_resource} \tab Removes tags from a resource\cr
#'  \link[=panorama_update_device_metadata]{update_device_metadata} \tab Updates a device's metadata
#' }
#'
#' @return
#' A client for the service. You can call the service's operations using
#' syntax like `svc$operation(...)`, where `svc` is the name you've assigned
#' to the client. The available operations are listed in the
#' Operations section.
#'
#' @rdname panorama
#' @export
panorama <- function(config = list()) {
  svc <- .panorama$operations
  svc <- set_config(svc, config)
  return(svc)
}

# Private API objects: metadata, handlers, interfaces, etc.
.panorama <- list()

.panorama$operations <- list()

.panorama$metadata <- list(
  service_name = "panorama",
  endpoints = list("*" = list(endpoint = "panorama.{region}.amazonaws.com", global = FALSE), "cn-*" = list(endpoint = "panorama.{region}.amazonaws.com.cn", global = FALSE), "us-iso-*" = list(endpoint = "panorama.{region}.c2s.ic.gov", global = FALSE), "us-isob-*" = list(endpoint = "panorama.{region}.sc2s.sgov.gov", global = FALSE)),
  service_id = "Panorama",
  api_version = "2019-07-24",
  signing_name = "panorama",
  json_version = "1.1",
  target_prefix = ""
)

.panorama$service <- function(config = list()) {
  handlers <- new_handlers("restjson", "v4")
  new_service(.panorama$metadata, handlers, config)
}
