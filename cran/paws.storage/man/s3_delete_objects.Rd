% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3_operations.R
\name{s3_delete_objects}
\alias{s3_delete_objects}
\title{This action enables you to delete multiple objects from a bucket using a
single HTTP request}
\usage{
s3_delete_objects(
  Bucket,
  Delete,
  MFA = NULL,
  RequestPayer = NULL,
  BypassGovernanceRetention = NULL,
  ExpectedBucketOwner = NULL,
  ChecksumAlgorithm = NULL
)
}
\arguments{
\item{Bucket}{[required] The bucket name containing the objects to delete.

When using this action with an access point, you must direct requests to
the access point hostname. The access point hostname takes the form
\emph{AccessPointName}-\emph{AccountId}.s3-accesspoint.\emph{Region}.amazonaws.com.
When using this action with an access point through the Amazon Web
Services SDKs, you provide the access point ARN in place of the bucket
name. For more information about access point ARNs, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/using-access-points.html}{Using access points}
in the \emph{Amazon S3 User Guide}.

When you use this action with Amazon S3 on Outposts, you must direct
requests to the S3 on Outposts hostname. The S3 on Outposts hostname
takes the form
\code{ AccessPointName-AccountId.outpostID.s3-outposts.Region.amazonaws.com}.
When you use this action with S3 on Outposts through the Amazon Web
Services SDKs, you provide the Outposts access point ARN in place of the
bucket name. For more information about S3 on Outposts ARNs, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/S3onOutposts.html}{What is S3 on Outposts}
in the \emph{Amazon S3 User Guide}.}

\item{Delete}{[required] Container for the request.}

\item{MFA}{The concatenation of the authentication device's serial number, a space,
and the value that is displayed on your authentication device. Required
to permanently delete a versioned object if versioning is configured
with MFA delete enabled.}

\item{RequestPayer}{}

\item{BypassGovernanceRetention}{Specifies whether you want to delete this object even if it has a
Governance-type Object Lock in place. To use this header, you must have
the \code{s3:BypassGovernanceRetention} permission.}

\item{ExpectedBucketOwner}{The account ID of the expected bucket owner. If the bucket is owned by a
different account, the request fails with the HTTP status code
\verb{403 Forbidden} (access denied).}

\item{ChecksumAlgorithm}{Indicates the algorithm used to create the checksum for the object when
using the SDK. This header will not provide any additional functionality
if not using the SDK. When sending this header, there must be a
corresponding \code{x-amz-checksum} or \code{x-amz-trailer} header sent.
Otherwise, Amazon S3 fails the request with the HTTP status code
\verb{400 Bad Request}. For more information, see \href{https://docs.aws.amazon.com/AmazonS3/latest/userguide/checking-object-integrity.html}{Checking object integrity}
in the \emph{Amazon S3 User Guide}.

If you provide an individual checksum, Amazon S3 ignores any provided
\code{ChecksumAlgorithm} parameter.

This checksum algorithm must be the same for all parts and it match the
checksum value supplied in the
\code{\link[=s3_create_multipart_upload]{create_multipart_upload}} request.}
}
\description{
This action enables you to delete multiple objects from a bucket using a single HTTP request. If you know the object keys that you want to delete, then this action provides a suitable alternative to sending individual delete requests, reducing per-request overhead.

See \url{https://www.paws-r-sdk.com/docs/s3_delete_objects/} for full documentation.
}
\keyword{internal}
