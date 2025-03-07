% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/eventbridge_operations.R
\name{eventbridge_list_endpoints}
\alias{eventbridge_list_endpoints}
\title{List the global endpoints associated with this account}
\usage{
eventbridge_list_endpoints(
  NamePrefix = NULL,
  HomeRegion = NULL,
  NextToken = NULL,
  MaxResults = NULL
)
}
\arguments{
\item{NamePrefix}{A value that will return a subset of the endpoints associated with this
account. For example, \code{"NamePrefix": "ABC"} will return all endpoints
with "ABC" in the name.}

\item{HomeRegion}{The primary Region of the endpoints associated with this account. For
example \code{"HomeRegion": "us-east-1"}.}

\item{NextToken}{If \code{nextToken} is returned, there are more results available. The value
of \code{nextToken} is a unique pagination token for each page. Make the call
again using the returned token to retrieve the next page. Keep all other
arguments unchanged. Each pagination token expires after 24 hours. Using
an expired pagination token will return an HTTP 400 InvalidToken error.}

\item{MaxResults}{The maximum number of results returned by the call.}
}
\description{
List the global endpoints associated with this account. For more information about global endpoints, see \href{https://docs.aws.amazon.com/eventbridge/latest/userguide/eb-global-endpoints.html}{Making applications Regional-fault tolerant with global endpoints and event replication} in the Amazon EventBridge User Guide..

See \url{https://www.paws-r-sdk.com/docs/eventbridge_list_endpoints/} for full documentation.
}
\keyword{internal}
