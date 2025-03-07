% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ivs_operations.R
\name{ivs_delete_playback_key_pair}
\alias{ivs_delete_playback_key_pair}
\title{Deletes a specified authorization key pair}
\usage{
ivs_delete_playback_key_pair(arn)
}
\arguments{
\item{arn}{[required] ARN of the key pair to be deleted.}
}
\description{
Deletes a specified authorization key pair. This invalidates future viewer tokens generated using the key pair’s \code{privateKey}. For more information, see \href{https://docs.aws.amazon.com/ivs/latest/userguide/private-channels.html}{Setting Up Private Channels} in the \emph{Amazon IVS User Guide}.

See \url{https://www.paws-r-sdk.com/docs/ivs_delete_playback_key_pair/} for full documentation.
}
\keyword{internal}
