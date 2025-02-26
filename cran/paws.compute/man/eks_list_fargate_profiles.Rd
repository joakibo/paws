% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/eks_operations.R
\name{eks_list_fargate_profiles}
\alias{eks_list_fargate_profiles}
\title{Lists the Fargate profiles associated with the specified cluster in your
Amazon Web Services account in the specified Region}
\usage{
eks_list_fargate_profiles(clusterName, maxResults = NULL, nextToken = NULL)
}
\arguments{
\item{clusterName}{[required] The name of the Amazon EKS cluster that you would like to list Fargate
profiles in.}

\item{maxResults}{The maximum number of Fargate profile results returned by
\code{\link[=eks_list_fargate_profiles]{list_fargate_profiles}} in paginated
output. When you use this parameter,
\code{\link[=eks_list_fargate_profiles]{list_fargate_profiles}} returns only
\code{maxResults} results in a single page along with a \code{nextToken} response
element. You can see the remaining results of the initial request by
sending another \code{\link[=eks_list_fargate_profiles]{list_fargate_profiles}}
request with the returned \code{nextToken} value. This value can be between 1
and 100. If you don't use this parameter,
\code{\link[=eks_list_fargate_profiles]{list_fargate_profiles}} returns up to 100
results and a \code{nextToken} value if applicable.}

\item{nextToken}{The \code{nextToken} value returned from a previous paginated
\code{\link[=eks_list_fargate_profiles]{list_fargate_profiles}} request where
\code{maxResults} was used and the results exceeded the value of that
parameter. Pagination continues from the end of the previous results
that returned the \code{nextToken} value.}
}
\description{
Lists the Fargate profiles associated with the specified cluster in your Amazon Web Services account in the specified Region.

See \url{https://www.paws-r-sdk.com/docs/eks_list_fargate_profiles/} for full documentation.
}
\keyword{internal}
