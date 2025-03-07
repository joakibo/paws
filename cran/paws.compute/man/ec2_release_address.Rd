% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2_operations.R
\name{ec2_release_address}
\alias{ec2_release_address}
\title{Releases the specified Elastic IP address}
\usage{
ec2_release_address(
  AllocationId = NULL,
  PublicIp = NULL,
  NetworkBorderGroup = NULL,
  DryRun = NULL
)
}
\arguments{
\item{AllocationId}{The allocation ID. This parameter is required.}

\item{PublicIp}{Deprecated.}

\item{NetworkBorderGroup}{The set of Availability Zones, Local Zones, or Wavelength Zones from
which Amazon Web Services advertises IP addresses.

If you provide an incorrect network border group, you receive an
\code{InvalidAddress.NotFound} error.

You cannot use a network border group with EC2 Classic. If you attempt
this operation on EC2 classic, you receive an
\code{InvalidParameterCombination} error.}

\item{DryRun}{Checks whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.}
}
\description{
Releases the specified Elastic IP address.

See \url{https://www.paws-r-sdk.com/docs/ec2_release_address/} for full documentation.
}
\keyword{internal}
