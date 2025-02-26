% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codepipeline_operations.R
\name{codepipeline_retry_stage_execution}
\alias{codepipeline_retry_stage_execution}
\title{Resumes the pipeline execution by retrying the last failed actions in a
stage}
\usage{
codepipeline_retry_stage_execution(
  pipelineName,
  stageName,
  pipelineExecutionId,
  retryMode
)
}
\arguments{
\item{pipelineName}{[required] The name of the pipeline that contains the failed stage.}

\item{stageName}{[required] The name of the failed stage to be retried.}

\item{pipelineExecutionId}{[required] The ID of the pipeline execution in the failed stage to be retried. Use
the \code{\link[=codepipeline_get_pipeline_state]{get_pipeline_state}} action to
retrieve the current pipelineExecutionId of the failed stage}

\item{retryMode}{[required] The scope of the retry attempt. Currently, the only supported value is
FAILED_ACTIONS.}
}
\description{
Resumes the pipeline execution by retrying the last failed actions in a stage. You can retry a stage immediately if any of the actions in the stage fail. When you retry, all actions that are still in progress continue working, and failed actions are triggered again.

See \url{https://www.paws-r-sdk.com/docs/codepipeline_retry_stage_execution/} for full documentation.
}
\keyword{internal}
