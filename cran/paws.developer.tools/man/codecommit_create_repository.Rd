% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/codecommit_operations.R
\name{codecommit_create_repository}
\alias{codecommit_create_repository}
\title{Creates a new, empty repository}
\usage{
codecommit_create_repository(
  repositoryName,
  repositoryDescription = NULL,
  tags = NULL
)
}
\arguments{
\item{repositoryName}{[required] The name of the new repository to be created.

The repository name must be unique across the calling AWS account.
Repository names are limited to 100 alphanumeric, dash, and underscore
characters, and cannot include certain characters. For more information
about the limits on repository names, see
\href{https://docs.aws.amazon.com/codecommit/latest/userguide/limits.html}{Limits}
in the \emph{AWS CodeCommit User Guide}. The suffix .git is prohibited.}

\item{repositoryDescription}{A comment or description about the new repository.

The description field for a repository accepts all HTML characters and
all valid Unicode characters. Applications that do not HTML-encode the
description and display it in a webpage can expose users to potentially
malicious code. Make sure that you HTML-encode the description field in
any application that uses this API to display the repository description
on a webpage.}

\item{tags}{One or more tag key-value pairs to use when tagging this repository.}
}
\description{
Creates a new, empty repository.

See \url{https://www.paws-r-sdk.com/docs/codecommit_create_repository/} for full documentation.
}
\keyword{internal}
