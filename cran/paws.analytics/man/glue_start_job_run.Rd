% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/glue_operations.R
\name{glue_start_job_run}
\alias{glue_start_job_run}
\title{Starts a job run using a job definition}
\usage{
glue_start_job_run(
  JobName,
  JobRunId = NULL,
  Arguments = NULL,
  AllocatedCapacity = NULL,
  Timeout = NULL,
  MaxCapacity = NULL,
  SecurityConfiguration = NULL,
  NotificationProperty = NULL,
  WorkerType = NULL,
  NumberOfWorkers = NULL,
  ExecutionClass = NULL
)
}
\arguments{
\item{JobName}{[required] The name of the job definition to use.}

\item{JobRunId}{The ID of a previous \code{JobRun} to retry.}

\item{Arguments}{The job arguments associated with this run. For this job run, they
replace the default arguments set in the job definition itself.

You can specify arguments here that your own job-execution script
consumes, as well as arguments that Glue itself consumes.

Job arguments may be logged. Do not pass plaintext secrets as arguments.
Retrieve secrets from a Glue Connection, Secrets Manager or other secret
management mechanism if you intend to keep them within the Job.

For information about how to specify and consume your own Job arguments,
see the \href{https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-python-calling.html}{Calling Glue APIs in Python}
topic in the developer guide.

For information about the arguments you can provide to this field when
configuring Spark jobs, see the \href{https://docs.aws.amazon.com/glue/latest/dg/aws-glue-programming-etl-glue-arguments.html}{Special Parameters Used by Glue}
topic in the developer guide.

For information about the arguments you can provide to this field when
configuring Ray jobs, see \href{https://docs.aws.amazon.com/glue/latest/dg/author-job-ray-job-parameters.html}{Using job parameters in Ray jobs}
in the developer guide.}

\item{AllocatedCapacity}{This field is deprecated. Use \code{MaxCapacity} instead.

The number of Glue data processing units (DPUs) to allocate to this
JobRun. You can allocate a minimum of 2 DPUs; the default is 10. A DPU
is a relative measure of processing power that consists of 4 vCPUs of
compute capacity and 16 GB of memory. For more information, see the
\href{https://aws.amazon.com/glue/pricing/}{Glue pricing page}.}

\item{Timeout}{The \code{JobRun} timeout in minutes. This is the maximum time that a job run
can consume resources before it is terminated and enters \code{TIMEOUT}
status. This value overrides the timeout value set in the parent job.

Streaming jobs do not have a timeout. The default for non-streaming jobs
is 2,880 minutes (48 hours).}

\item{MaxCapacity}{For Glue version 1.0 or earlier jobs, using the standard worker type,
the number of Glue data processing units (DPUs) that can be allocated
when this job runs. A DPU is a relative measure of processing power that
consists of 4 vCPUs of compute capacity and 16 GB of memory. For more
information, see the \href{https://aws.amazon.com/glue/pricing/}{Glue pricing page}.

For Glue version 2.0+ jobs, you cannot specify a \verb{Maximum capacity}.
Instead, you should specify a \verb{Worker type} and the \verb{Number of workers}.

Do not set \code{MaxCapacity} if using \code{WorkerType} and \code{NumberOfWorkers}.

The value that can be allocated for \code{MaxCapacity} depends on whether you
are running a Python shell job, an Apache Spark ETL job, or an Apache
Spark streaming ETL job:
\itemize{
\item When you specify a Python shell job
(\code{JobCommand.Name}="pythonshell"), you can allocate either 0.0625 or
1 DPU. The default is 0.0625 DPU.
\item When you specify an Apache Spark ETL job
(\code{JobCommand.Name}="glueetl") or Apache Spark streaming ETL job
(\code{JobCommand.Name}="gluestreaming"), you can allocate from 2 to 100
DPUs. The default is 10 DPUs. This job type cannot have a fractional
DPU allocation.
}}

\item{SecurityConfiguration}{The name of the \code{SecurityConfiguration} structure to be used with this
job run.}

\item{NotificationProperty}{Specifies configuration properties of a job run notification.}

\item{WorkerType}{The type of predefined worker that is allocated when a job runs. Accepts
a value of Standard, G.1X, G.2X, or G.025X for Spark jobs. Accepts the
value Z.2X for Ray jobs.
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
\item For the \code{Z.2X} worker type, each worker maps to 2 DPU (8vCPU, 64 GB
of m emory, 128 GB disk), and provides up to 8 Ray workers (one per
vCPU) based on the autoscaler.
}}

\item{NumberOfWorkers}{The number of workers of a defined \code{workerType} that are allocated when
a job runs.}

\item{ExecutionClass}{Indicates whether the job is run with a standard or flexible execution
class. The standard execution-class is ideal for time-sensitive
workloads that require fast job startup and dedicated resources.

The flexible execution class is appropriate for time-insensitive jobs
whose start and completion times may vary.

Only jobs with Glue version 3.0 and above and command type \code{glueetl}
will be allowed to set \code{ExecutionClass} to \code{FLEX}. The flexible
execution class is available for Spark jobs.}
}
\description{
Starts a job run using a job definition.

See \url{https://www.paws-r-sdk.com/docs/glue_start_job_run/} for full documentation.
}
\keyword{internal}
