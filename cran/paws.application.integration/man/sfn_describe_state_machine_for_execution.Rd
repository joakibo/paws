% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sfn_operations.R
\name{sfn_describe_state_machine_for_execution}
\alias{sfn_describe_state_machine_for_execution}
\title{Provides information about a state machine's definition, its execution
role ARN, and configuration}
\usage{
sfn_describe_state_machine_for_execution(executionArn)
}
\arguments{
\item{executionArn}{[required] The Amazon Resource Name (ARN) of the execution you want state machine
information for.}
}
\description{
Provides information about a state machine's definition, its execution role ARN, and configuration. If an execution was dispatched by a Map Run, the Map Run is returned in the response. Additionally, the state machine returned will be the state machine associated with the Map Run.

See \url{https://www.paws-r-sdk.com/docs/sfn_describe_state_machine_for_execution/} for full documentation.
}
\keyword{internal}
