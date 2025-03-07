% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/eks_operations.R
\name{eks_delete_nodegroup}
\alias{eks_delete_nodegroup}
\title{Deletes an Amazon EKS node group for a cluster}
\usage{
eks_delete_nodegroup(clusterName, nodegroupName)
}
\arguments{
\item{clusterName}{[required] The name of the Amazon EKS cluster that is associated with your node
group.}

\item{nodegroupName}{[required] The name of the node group to delete.}
}
\description{
Deletes an Amazon EKS node group for a cluster.

See \url{https://www.paws-r-sdk.com/docs/eks_delete_nodegroup/} for full documentation.
}
\keyword{internal}
