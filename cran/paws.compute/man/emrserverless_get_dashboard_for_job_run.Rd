% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/emrserverless_operations.R
\name{emrserverless_get_dashboard_for_job_run}
\alias{emrserverless_get_dashboard_for_job_run}
\title{Returns a URL to access the job run dashboard}
\usage{
emrserverless_get_dashboard_for_job_run(applicationId, jobRunId)
}
\arguments{
\item{applicationId}{[required] The ID of the application.}

\item{jobRunId}{[required] The ID of the job run.}
}
\description{
Returns a URL to access the job run dashboard. The generated URL is valid for one hour, after which you must invoke the API again to generate a new URL.

See \url{https://www.paws-r-sdk.com/docs/emrserverless_get_dashboard_for_job_run/} for full documentation.
}
\keyword{internal}
