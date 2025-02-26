% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/athena_operations.R
\name{athena_get_database}
\alias{athena_get_database}
\title{Returns a database object for the specified database and data catalog}
\usage{
athena_get_database(CatalogName, DatabaseName)
}
\arguments{
\item{CatalogName}{[required] The name of the data catalog that contains the database to return.}

\item{DatabaseName}{[required] The name of the database to return.}
}
\description{
Returns a database object for the specified database and data catalog.

See \url{https://www.paws-r-sdk.com/docs/athena_get_database/} for full documentation.
}
\keyword{internal}
