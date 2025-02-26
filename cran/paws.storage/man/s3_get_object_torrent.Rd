% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/s3_operations.R
\name{s3_get_object_torrent}
\alias{s3_get_object_torrent}
\title{Returns torrent files from a bucket}
\usage{
s3_get_object_torrent(
  Bucket,
  Key,
  RequestPayer = NULL,
  ExpectedBucketOwner = NULL
)
}
\arguments{
\item{Bucket}{[required] The name of the bucket containing the object for which to get the
torrent files.}

\item{Key}{[required] The object key for which to get the information.}

\item{RequestPayer}{}

\item{ExpectedBucketOwner}{The account ID of the expected bucket owner. If the bucket is owned by a
different account, the request fails with the HTTP status code
\verb{403 Forbidden} (access denied).}
}
\description{
Returns torrent files from a bucket. BitTorrent can save you bandwidth when you're distributing large files.

See \url{https://www.paws-r-sdk.com/docs/s3_get_object_torrent/} for full documentation.
}
\keyword{internal}
