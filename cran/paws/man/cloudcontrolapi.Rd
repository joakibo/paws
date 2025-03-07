% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paws.R
\name{cloudcontrolapi}
\alias{cloudcontrolapi}
\title{AWS Cloud Control API}
\usage{
cloudcontrolapi(config = list())
}
\arguments{
\item{config}{Optional configuration of credentials, endpoint, and/or region.
\itemize{
\item{\strong{access_key_id}:} {AWS access key ID}
\item{\strong{secret_access_key}:} {AWS secret access key}
\item{\strong{session_token}:} {AWS temporary session token}
\item{\strong{profile}:} {The name of a profile to use. If not given, then the default profile is used.}
\item{\strong{anonymous}:} {Set anonymous credentials.}
\item{\strong{endpoint}:} {The complete URL to use for the constructed client.}
\item{\strong{region}:} {The AWS Region used in instantiating the client.}
\item{\strong{close_connection}:} {Immediately close all HTTP connections.}
\item{\strong{timeout}:} {The time in seconds till a timeout exception is thrown when attempting to make a connection. The default is 60 seconds.}
\item{\strong{s3_force_path_style}:} {Set this to \code{true} to force the request to use path-style addressing, i.e., \verb{http://s3.amazonaws.com/BUCKET/KEY}.}
}}
}
\value{
A client for the service. You can call the service's operations using
syntax like \code{svc$operation(...)}, where \code{svc} is the name you've assigned
to the client. The available operations are listed in the
Operations section.
}
\description{
For more information about Amazon Web Services Cloud Control API, see
the \href{https://docs.aws.amazon.com/cloudcontrolapi/latest/userguide/what-is-cloudcontrolapi.html}{Amazon Web Services Cloud Control API User Guide}.
}
\section{Service syntax}{


\if{html}{\out{<div class="sourceCode">}}\preformatted{svc <- cloudcontrolapi(
  config = list(
    credentials = list(
      creds = list(
        access_key_id = "string",
        secret_access_key = "string",
        session_token = "string"
      ),
      profile = "string",
      anonymous = "logical"
    ),
    endpoint = "string",
    region = "string",
    close_connection = "logical",
    timeout = "numeric",
    s3_force_path_style = "logical"
  )
)
}\if{html}{\out{</div>}}
}

\section{Operations}{

\tabular{ll}{
\link[paws.developer.tools:cloudcontrolapi_cancel_resource_request]{cancel_resource_request} \tab Cancels the specified resource operation request\cr
\link[paws.developer.tools:cloudcontrolapi_create_resource]{create_resource} \tab Creates the specified resource\cr
\link[paws.developer.tools:cloudcontrolapi_delete_resource]{delete_resource} \tab Deletes the specified resource\cr
\link[paws.developer.tools:cloudcontrolapi_get_resource]{get_resource} \tab Returns information about the current state of the specified resource\cr
\link[paws.developer.tools:cloudcontrolapi_get_resource_request_status]{get_resource_request_status} \tab Returns the current status of a resource operation request\cr
\link[paws.developer.tools:cloudcontrolapi_list_resource_requests]{list_resource_requests} \tab Returns existing resource operation requests\cr
\link[paws.developer.tools:cloudcontrolapi_list_resources]{list_resources} \tab Returns information about the specified resources\cr
\link[paws.developer.tools:cloudcontrolapi_update_resource]{update_resource} \tab Updates the specified property values in the resource
}
}

\examples{
\dontrun{
svc <- cloudcontrolapi()
svc$cancel_resource_request(
  Foo = 123
)
}

}
