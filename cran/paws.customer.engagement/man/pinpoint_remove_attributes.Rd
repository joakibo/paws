% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pinpoint_operations.R
\name{pinpoint_remove_attributes}
\alias{pinpoint_remove_attributes}
\title{Removes one or more attributes, of the same attribute type, from all the
endpoints that are associated with an application}
\usage{
pinpoint_remove_attributes(
  ApplicationId,
  AttributeType,
  UpdateAttributesRequest
)
}
\arguments{
\item{ApplicationId}{[required] The unique identifier for the application. This identifier is displayed
as the \strong{Project ID} on the Amazon Pinpoint console.}

\item{AttributeType}{[required] The type of attribute or attributes to remove. Valid values are:
\itemize{
\item endpoint-custom-attributes - Custom attributes that describe
endpoints, such as the date when an associated user opted in or out
of receiving communications from you through a specific type of
channel.
\item endpoint-metric-attributes - Custom metrics that your app reports to
Amazon Pinpoint for endpoints, such as the number of app sessions or
the number of items left in a cart.
\item endpoint-user-attributes - Custom attributes that describe users,
such as first name, last name, and age.
}}

\item{UpdateAttributesRequest}{[required]}
}
\description{
Removes one or more attributes, of the same attribute type, from all the endpoints that are associated with an application.

See \url{https://www.paws-r-sdk.com/docs/pinpoint_remove_attributes/} for full documentation.
}
\keyword{internal}
