% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ses_operations.R
\name{ses_list_receipt_rule_sets}
\alias{ses_list_receipt_rule_sets}
\title{Lists the receipt rule sets that exist under your AWS account in the
current AWS Region}
\usage{
ses_list_receipt_rule_sets(NextToken = NULL)
}
\arguments{
\item{NextToken}{A token returned from a previous call to
\code{\link[=ses_list_receipt_rule_sets]{list_receipt_rule_sets}} to indicate the
position in the receipt rule set list.}
}
\description{
Lists the receipt rule sets that exist under your AWS account in the current AWS Region. If there are additional receipt rule sets to be retrieved, you will receive a \code{NextToken} that you can provide to the next call to \code{\link[=ses_list_receipt_rule_sets]{list_receipt_rule_sets}} to retrieve the additional entries.

See \url{https://www.paws-r-sdk.com/docs/ses_list_receipt_rule_sets/} for full documentation.
}
\keyword{internal}
