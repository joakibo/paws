# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common get_config new_operation new_request send_request
#' @include costandusagereportservice_service.R
NULL

#' Deletes the specified report
#'
#' @description
#' Deletes the specified report.
#'
#' See [https://www.paws-r-sdk.com/docs/costandusagereportservice_delete_report_definition/](https://www.paws-r-sdk.com/docs/costandusagereportservice_delete_report_definition/) for full documentation.
#'
#' @param ReportName The name of the report that you want to delete. The name must be unique,
#' is case sensitive, and can't include spaces.
#'
#' @keywords internal
#'
#' @rdname costandusagereportservice_delete_report_definition
costandusagereportservice_delete_report_definition <- function(ReportName = NULL) {
  op <- new_operation(
    name = "DeleteReportDefinition",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .costandusagereportservice$delete_report_definition_input(ReportName = ReportName)
  output <- .costandusagereportservice$delete_report_definition_output()
  config <- get_config()
  svc <- .costandusagereportservice$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.costandusagereportservice$operations$delete_report_definition <- costandusagereportservice_delete_report_definition

#' Lists the AWS Cost and Usage reports available to this account
#'
#' @description
#' Lists the AWS Cost and Usage reports available to this account.
#'
#' See [https://www.paws-r-sdk.com/docs/costandusagereportservice_describe_report_definitions/](https://www.paws-r-sdk.com/docs/costandusagereportservice_describe_report_definitions/) for full documentation.
#'
#' @param MaxResults 
#' @param NextToken 
#'
#' @keywords internal
#'
#' @rdname costandusagereportservice_describe_report_definitions
costandusagereportservice_describe_report_definitions <- function(MaxResults = NULL, NextToken = NULL) {
  op <- new_operation(
    name = "DescribeReportDefinitions",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .costandusagereportservice$describe_report_definitions_input(MaxResults = MaxResults, NextToken = NextToken)
  output <- .costandusagereportservice$describe_report_definitions_output()
  config <- get_config()
  svc <- .costandusagereportservice$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.costandusagereportservice$operations$describe_report_definitions <- costandusagereportservice_describe_report_definitions

#' Allows you to programatically update your report preferences
#'
#' @description
#' Allows you to programatically update your report preferences.
#'
#' See [https://www.paws-r-sdk.com/docs/costandusagereportservice_modify_report_definition/](https://www.paws-r-sdk.com/docs/costandusagereportservice_modify_report_definition/) for full documentation.
#'
#' @param ReportName &#91;required&#93; 
#' @param ReportDefinition &#91;required&#93; 
#'
#' @keywords internal
#'
#' @rdname costandusagereportservice_modify_report_definition
costandusagereportservice_modify_report_definition <- function(ReportName, ReportDefinition) {
  op <- new_operation(
    name = "ModifyReportDefinition",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .costandusagereportservice$modify_report_definition_input(ReportName = ReportName, ReportDefinition = ReportDefinition)
  output <- .costandusagereportservice$modify_report_definition_output()
  config <- get_config()
  svc <- .costandusagereportservice$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.costandusagereportservice$operations$modify_report_definition <- costandusagereportservice_modify_report_definition

#' Creates a new report using the description that you provide
#'
#' @description
#' Creates a new report using the description that you provide.
#'
#' See [https://www.paws-r-sdk.com/docs/costandusagereportservice_put_report_definition/](https://www.paws-r-sdk.com/docs/costandusagereportservice_put_report_definition/) for full documentation.
#'
#' @param ReportDefinition &#91;required&#93; Represents the output of the PutReportDefinition operation. The content
#' consists of the detailed metadata and data file information.
#'
#' @keywords internal
#'
#' @rdname costandusagereportservice_put_report_definition
costandusagereportservice_put_report_definition <- function(ReportDefinition) {
  op <- new_operation(
    name = "PutReportDefinition",
    http_method = "POST",
    http_path = "/",
    paginator = list()
  )
  input <- .costandusagereportservice$put_report_definition_input(ReportDefinition = ReportDefinition)
  output <- .costandusagereportservice$put_report_definition_output()
  config <- get_config()
  svc <- .costandusagereportservice$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.costandusagereportservice$operations$put_report_definition <- costandusagereportservice_put_report_definition
