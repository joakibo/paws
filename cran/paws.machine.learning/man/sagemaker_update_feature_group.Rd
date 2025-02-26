% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/sagemaker_operations.R
\name{sagemaker_update_feature_group}
\alias{sagemaker_update_feature_group}
\title{Updates the feature group}
\usage{
sagemaker_update_feature_group(FeatureGroupName, FeatureAdditions = NULL)
}
\arguments{
\item{FeatureGroupName}{[required] The name of the feature group that you're updating.}

\item{FeatureAdditions}{Updates the feature group. Updating a feature group is an asynchronous
operation. When you get an HTTP 200 response, you've made a valid
request. It takes some time after you've made a valid request for
Feature Store to update the feature group.}
}
\description{
Updates the feature group.

See \url{https://www.paws-r-sdk.com/docs/sagemaker_update_feature_group/} for full documentation.
}
\keyword{internal}
