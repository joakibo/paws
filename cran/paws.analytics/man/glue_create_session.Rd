% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_create_session}
\alias{glue_create_session}
\title{Creates a new session}
\usage{
glue_create_session(
  Id,
  Description = NULL,
  Role,
  Command,
  Timeout = NULL,
  IdleTimeout = NULL,
  DefaultArguments = NULL,
  Connections = NULL,
  MaxCapacity = NULL,
  NumberOfWorkers = NULL,
  WorkerType = NULL,
  SecurityConfiguration = NULL,
  GlueVersion = NULL,
  Tags = NULL,
  RequestOrigin = NULL
)
}
\arguments{
\item{Id}{[required] The ID of the session request.}

\item{Description}{The description of the session.}

\item{Role}{[required] The IAM Role ARN}

\item{Command}{[required] The \code{SessionCommand} that runs the job.}

\item{Timeout}{The number of minutes before session times out. Default for Spark ETL
jobs is 48 hours (2880 minutes), the maximum session lifetime for this
job type. Consult the documentation for other job types.}

\item{IdleTimeout}{The number of minutes when idle before session times out. Default for
Spark ETL jobs is value of Timeout. Consult the documentation for other
job types.}

\item{DefaultArguments}{A map array of key-value pairs. Max is 75 pairs.}

\item{Connections}{The number of connections to use for the session.}

\item{MaxCapacity}{The number of Glue data processing units (DPUs) that can be allocated
when the job runs. A DPU is a relative measure of processing power that
consists of 4 vCPUs of compute capacity and 16 GB memory.}

\item{NumberOfWorkers}{The number of workers of a defined \code{WorkerType} to use for the session.}

\item{WorkerType}{The type of predefined worker that is allocated to use for the session.
Accepts a value of Standard, G.1X, G.2X, or G.025X.
\itemize{
\item For the \code{Standard} worker type, each worker provides 4 vCPU, 16 GB
of memory and a 50GB disk, and 2 executors per worker.
\item For the \code{G.1X} worker type, each worker maps to 1 DPU (4 vCPU, 16 GB
of memory, 64 GB disk), and provides 1 executor per worker. We
recommend this worker type for memory-intensive jobs.
\item For the \code{G.2X} worker type, each worker maps to 2 DPU (8 vCPU, 32 GB
of memory, 128 GB disk), and provides 1 executor per worker. We
recommend this worker type for memory-intensive jobs.
\item For the \code{G.025X} worker type, each worker maps to 0.25 DPU (2 vCPU,
4 GB of memory, 64 GB disk), and provides 1 executor per worker. We
recommend this worker type for low volume streaming jobs. This
worker type is only available for Glue version 3.0 streaming jobs.
}}

\item{SecurityConfiguration}{The name of the SecurityConfiguration structure to be used with the
session}

\item{GlueVersion}{The Glue version determines the versions of Apache Spark and Python that
Glue supports. The GlueVersion must be greater than 2.0.}

\item{Tags}{The map of key value pairs (tags) belonging to the session.}

\item{RequestOrigin}{The origin of the request.}
}
\description{
Creates a new session.

See \url{https://www.paws-r-sdk.com/docs/glue_create_session/} for full documentation.
}
\keyword{internal}
