% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sqs_operations.R
\name{sqs_purge_queue}
\alias{sqs_purge_queue}
\title{Deletes the messages in a queue specified by the QueueURL parameter}
\usage{
sqs_purge_queue(QueueUrl)
}
\arguments{
\item{QueueUrl}{[required] The URL of the queue from which the \code{\link[=sqs_purge_queue]{purge_queue}}
action deletes messages.

Queue URLs and names are case-sensitive.}
}
\description{
Deletes the messages in a queue specified by the \code{QueueURL} parameter.

See \url{https://www.paws-r-sdk.com/docs/sqs_purge_queue/} for full documentation.
}
\keyword{internal}
