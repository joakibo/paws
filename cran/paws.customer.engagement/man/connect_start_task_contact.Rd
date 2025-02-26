% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/connect_operations.R
\name{connect_start_task_contact}
\alias{connect_start_task_contact}
\title{Initiates a flow to start a new task}
\usage{
connect_start_task_contact(
  InstanceId,
  PreviousContactId = NULL,
  ContactFlowId = NULL,
  Attributes = NULL,
  Name,
  References = NULL,
  Description = NULL,
  ClientToken = NULL,
  ScheduledTime = NULL,
  TaskTemplateId = NULL,
  QuickConnectId = NULL,
  RelatedContactId = NULL
)
}
\arguments{
\item{InstanceId}{[required] The identifier of the Amazon Connect instance. You can \href{https://docs.aws.amazon.com/connect/latest/adminguide/find-instance-arn.html}{find the instance ID}
in the Amazon Resource Name (ARN) of the instance.}

\item{PreviousContactId}{The identifier of the previous chat, voice, or task contact.}

\item{ContactFlowId}{The identifier of the flow for initiating the tasks. To see the
ContactFlowId in the Amazon Connect console user interface, on the
navigation menu go to \strong{Routing}, \strong{Contact Flows}. Choose the flow.
On the flow page, under the name of the flow, choose \strong{Show additional
flow information}. The ContactFlowId is the last part of the ARN, shown
here in bold:

arn:aws:connect:us-west-2:xxxxxxxxxxxx:instance/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/contact-flow/\strong{846ec553-a005-41c0-8341-xxxxxxxxxxxx}}

\item{Attributes}{A custom key-value pair using an attribute map. The attributes are
standard Amazon Connect attributes, and can be accessed in flows just
like any other contact attributes.

There can be up to 32,768 UTF-8 bytes across all key-value pairs per
contact. Attribute keys can include only alphanumeric, dash, and
underscore characters.}

\item{Name}{[required] The name of a task that is shown to an agent in the Contact Control
Panel (CCP).}

\item{References}{A formatted URL that is shown to an agent in the Contact Control Panel
(CCP).}

\item{Description}{A description of the task that is shown to an agent in the Contact
Control Panel (CCP).}

\item{ClientToken}{A unique, case-sensitive identifier that you provide to ensure the
idempotency of the request. If not provided, the Amazon Web Services SDK
populates this field. For more information about idempotency, see
\href{https://aws.amazon.com/builders-library/making-retries-safe-with-idempotent-APIs/}{Making retries safe with idempotent APIs}.}

\item{ScheduledTime}{The timestamp, in Unix Epoch seconds format, at which to start running
the inbound flow. The scheduled time cannot be in the past. It must be
within up to 6 days in future.}

\item{TaskTemplateId}{A unique identifier for the task template.}

\item{QuickConnectId}{The identifier for the quick connect.}

\item{RelatedContactId}{The contactId that is
\href{https://docs.aws.amazon.com/connect/latest/adminguide/tasks.html#linked-tasks}{related}
to this contact.}
}
\description{
Initiates a flow to start a new task.

See \url{https://www.paws-r-sdk.com/docs/connect_start_task_contact/} for full documentation.
}
\keyword{internal}
