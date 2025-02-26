% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/rekognition_operations.R
\name{rekognition_delete_project_policy}
\alias{rekognition_delete_project_policy}
\title{Deletes an existing project policy}
\usage{
rekognition_delete_project_policy(
  ProjectArn,
  PolicyName,
  PolicyRevisionId = NULL
)
}
\arguments{
\item{ProjectArn}{[required] The Amazon Resource Name (ARN) of the project that the project policy
you want to delete is attached to.}

\item{PolicyName}{[required] The name of the policy that you want to delete.}

\item{PolicyRevisionId}{The ID of the project policy revision that you want to delete.}
}
\description{
Deletes an existing project policy.

See \url{https://www.paws-r-sdk.com/docs/rekognition_delete_project_policy/} for full documentation.
}
\keyword{internal}
