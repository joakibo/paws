% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cloudtrail_operations.R
\name{cloudtrail_update_event_data_store}
\alias{cloudtrail_update_event_data_store}
\title{Updates an event data store}
\usage{
cloudtrail_update_event_data_store(
  EventDataStore,
  Name = NULL,
  AdvancedEventSelectors = NULL,
  MultiRegionEnabled = NULL,
  OrganizationEnabled = NULL,
  RetentionPeriod = NULL,
  TerminationProtectionEnabled = NULL,
  KmsKeyId = NULL
)
}
\arguments{
\item{EventDataStore}{[required] The ARN (or the ID suffix of the ARN) of the event data store that you
want to update.}

\item{Name}{The event data store name.}

\item{AdvancedEventSelectors}{The advanced event selectors used to select events for the event data
store. You can configure up to five advanced event selectors for each
event data store.}

\item{MultiRegionEnabled}{Specifies whether an event data store collects events from all Regions,
or only from the Region in which it was created.}

\item{OrganizationEnabled}{Specifies whether an event data store collects events logged for an
organization in Organizations.}

\item{RetentionPeriod}{The retention period, in days.}

\item{TerminationProtectionEnabled}{Indicates that termination protection is enabled and the event data
store cannot be automatically deleted.}

\item{KmsKeyId}{Specifies the KMS key ID to use to encrypt the events delivered by
CloudTrail. The value can be an alias name prefixed by \verb{alias/}, a fully
specified ARN to an alias, a fully specified ARN to a key, or a globally
unique identifier.

Disabling or deleting the KMS key, or removing CloudTrail permissions on
the key, prevents CloudTrail from logging events to the event data
store, and prevents users from querying the data in the event data store
that was encrypted with the key. After you associate an event data store
with a KMS key, the KMS key cannot be removed or changed. Before you
disable or delete a KMS key that you are using with an event data store,
delete or back up your event data store.

CloudTrail also supports KMS multi-Region keys. For more information
about multi-Region keys, see \href{https://docs.aws.amazon.com/kms/latest/developerguide/multi-region-keys-overview.html}{Using multi-Region keys}
in the \emph{Key Management Service Developer Guide}.

Examples:
\itemize{
\item \code{alias/MyAliasName}
\item \code{arn:aws:kms:us-east-2:123456789012:alias/MyAliasName}
\item \code{arn:aws:kms:us-east-2:123456789012:key/12345678-1234-1234-1234-123456789012}
\item \code{12345678-1234-1234-1234-123456789012}
}}
}
\description{
Updates an event data store. The required \code{EventDataStore} value is an ARN or the ID portion of the ARN. Other parameters are optional, but at least one optional parameter must be specified, or CloudTrail throws an error. \code{RetentionPeriod} is in days, and valid values are integers between 90 and 2557. By default, \code{TerminationProtection} is enabled.

See \url{https://www.paws-r-sdk.com/docs/cloudtrail_update_event_data_store/} for full documentation.
}
\keyword{internal}
