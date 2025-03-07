% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/redshiftserverless_operations.R
\name{redshiftserverless_restore_from_snapshot}
\alias{redshiftserverless_restore_from_snapshot}
\title{Restores a namespace from a snapshot}
\usage{
redshiftserverless_restore_from_snapshot(
  namespaceName,
  ownerAccount = NULL,
  snapshotArn = NULL,
  snapshotName = NULL,
  workgroupName
)
}
\arguments{
\item{namespaceName}{[required] The name of the namespace to restore the snapshot to.}

\item{ownerAccount}{The Amazon Web Services account that owns the snapshot.}

\item{snapshotArn}{The Amazon Resource Name (ARN) of the snapshot to restore from. Required
if restoring from Amazon Redshift Serverless to a provisioned cluster.
Must not be specified at the same time as \code{snapshotName}.

The format of the ARN is
arn:aws:redshift:\<region\>:\<account_id\>:snapshot:\<cluster_identifier\>/\<snapshot_identifier\>.}

\item{snapshotName}{The name of the snapshot to restore from. Must not be specified at the
same time as \code{snapshotArn}.}

\item{workgroupName}{[required] The name of the workgroup used to restore the snapshot.}
}
\description{
Restores a namespace from a snapshot.

See \url{https://www.paws-r-sdk.com/docs/redshiftserverless_restore_from_snapshot/} for full documentation.
}
\keyword{internal}
