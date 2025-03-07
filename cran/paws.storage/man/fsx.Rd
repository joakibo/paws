% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fsx_service.R
\name{fsx}
\alias{fsx}
\title{Amazon FSx}
\usage{
fsx(config = list())
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
Amazon FSx is a fully managed service that makes it easy for storage and
application administrators to launch and use shared file storage.
}
\section{Service syntax}{


\if{html}{\out{<div class="sourceCode">}}\preformatted{svc <- fsx(
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
\link[=fsx_associate_file_system_aliases]{associate_file_system_aliases} \tab Use this action to associate one or more Domain Name Server (DNS) aliases with an existing Amazon FSx for Windows File Server file system\cr
\link[=fsx_cancel_data_repository_task]{cancel_data_repository_task} \tab Cancels an existing Amazon FSx for Lustre data repository task if that task is in either the PENDING or EXECUTING state\cr
\link[=fsx_copy_backup]{copy_backup} \tab Copies an existing backup within the same Amazon Web Services account to another Amazon Web Services Region (cross-Region copy) or within the same Amazon Web Services Region (in-Region copy)\cr
\link[=fsx_create_backup]{create_backup} \tab Creates a backup of an existing Amazon FSx for Windows File Server file system, Amazon FSx for Lustre file system, Amazon FSx for NetApp ONTAP volume, or Amazon FSx for OpenZFS file system\cr
\link[=fsx_create_data_repository_association]{create_data_repository_association} \tab Creates an Amazon FSx for Lustre data repository association (DRA)\cr
\link[=fsx_create_data_repository_task]{create_data_repository_task} \tab Creates an Amazon FSx for Lustre data repository task\cr
\link[=fsx_create_file_cache]{create_file_cache} \tab Creates a new Amazon File Cache resource\cr
\link[=fsx_create_file_system]{create_file_system} \tab Creates a new, empty Amazon FSx file system\cr
\link[=fsx_create_file_system_from_backup]{create_file_system_from_backup} \tab Creates a new Amazon FSx for Lustre, Amazon FSx for Windows File Server, or Amazon FSx for OpenZFS file system from an existing Amazon FSx backup\cr
\link[=fsx_create_snapshot]{create_snapshot} \tab Creates a snapshot of an existing Amazon FSx for OpenZFS volume\cr
\link[=fsx_create_storage_virtual_machine]{create_storage_virtual_machine} \tab Creates a storage virtual machine (SVM) for an Amazon FSx for ONTAP file system\cr
\link[=fsx_create_volume]{create_volume} \tab Creates an FSx for ONTAP or Amazon FSx for OpenZFS storage volume\cr
\link[=fsx_create_volume_from_backup]{create_volume_from_backup} \tab Creates a new Amazon FSx for NetApp ONTAP volume from an existing Amazon FSx volume backup\cr
\link[=fsx_delete_backup]{delete_backup} \tab Deletes an Amazon FSx backup\cr
\link[=fsx_delete_data_repository_association]{delete_data_repository_association} \tab Deletes a data repository association on an Amazon FSx for Lustre file system\cr
\link[=fsx_delete_file_cache]{delete_file_cache} \tab Deletes an Amazon File Cache resource\cr
\link[=fsx_delete_file_system]{delete_file_system} \tab Deletes a file system\cr
\link[=fsx_delete_snapshot]{delete_snapshot} \tab Deletes an Amazon FSx for OpenZFS snapshot\cr
\link[=fsx_delete_storage_virtual_machine]{delete_storage_virtual_machine} \tab Deletes an existing Amazon FSx for ONTAP storage virtual machine (SVM)\cr
\link[=fsx_delete_volume]{delete_volume} \tab Deletes an Amazon FSx for NetApp ONTAP or Amazon FSx for OpenZFS volume\cr
\link[=fsx_describe_backups]{describe_backups} \tab Returns the description of a specific Amazon FSx backup, if a BackupIds value is provided for that backup\cr
\link[=fsx_describe_data_repository_associations]{describe_data_repository_associations} \tab Returns the description of specific Amazon FSx for Lustre or Amazon File Cache data repository associations, if one or more AssociationIds values are provided in the request, or if filters are used in the request\cr
\link[=fsx_describe_data_repository_tasks]{describe_data_repository_tasks} \tab Returns the description of specific Amazon FSx for Lustre or Amazon File Cache data repository tasks, if one or more TaskIds values are provided in the request, or if filters are used in the request\cr
\link[=fsx_describe_file_caches]{describe_file_caches} \tab Returns the description of a specific Amazon File Cache resource, if a FileCacheIds value is provided for that cache\cr
\link[=fsx_describe_file_system_aliases]{describe_file_system_aliases} \tab Returns the DNS aliases that are associated with the specified Amazon FSx for Windows File Server file system\cr
\link[=fsx_describe_file_systems]{describe_file_systems} \tab Returns the description of specific Amazon FSx file systems, if a FileSystemIds value is provided for that file system\cr
\link[=fsx_describe_snapshots]{describe_snapshots} \tab Returns the description of specific Amazon FSx for OpenZFS snapshots, if a SnapshotIds value is provided\cr
\link[=fsx_describe_storage_virtual_machines]{describe_storage_virtual_machines} \tab Describes one or more Amazon FSx for NetApp ONTAP storage virtual machines (SVMs)\cr
\link[=fsx_describe_volumes]{describe_volumes} \tab Describes one or more Amazon FSx for NetApp ONTAP or Amazon FSx for OpenZFS volumes\cr
\link[=fsx_disassociate_file_system_aliases]{disassociate_file_system_aliases} \tab Use this action to disassociate, or remove, one or more Domain Name Service (DNS) aliases from an Amazon FSx for Windows File Server file system\cr
\link[=fsx_list_tags_for_resource]{list_tags_for_resource} \tab Lists tags for Amazon FSx resources\cr
\link[=fsx_release_file_system_nfs_v3_locks]{release_file_system_nfs_v3_locks} \tab Releases the file system lock from an Amazon FSx for OpenZFS file system\cr
\link[=fsx_restore_volume_from_snapshot]{restore_volume_from_snapshot} \tab Returns an Amazon FSx for OpenZFS volume to the state saved by the specified snapshot\cr
\link[=fsx_tag_resource]{tag_resource} \tab Tags an Amazon FSx resource\cr
\link[=fsx_untag_resource]{untag_resource} \tab This action removes a tag from an Amazon FSx resource\cr
\link[=fsx_update_data_repository_association]{update_data_repository_association} \tab Updates the configuration of an existing data repository association on an Amazon FSx for Lustre file system\cr
\link[=fsx_update_file_cache]{update_file_cache} \tab Updates the configuration of an existing Amazon File Cache resource\cr
\link[=fsx_update_file_system]{update_file_system} \tab Use this operation to update the configuration of an existing Amazon FSx file system\cr
\link[=fsx_update_snapshot]{update_snapshot} \tab Updates the name of an Amazon FSx for OpenZFS snapshot\cr
\link[=fsx_update_storage_virtual_machine]{update_storage_virtual_machine} \tab Updates an FSx for ONTAP storage virtual machine (SVM)\cr
\link[=fsx_update_volume]{update_volume} \tab Updates the configuration of an Amazon FSx for NetApp ONTAP or Amazon FSx for OpenZFS volume
}
}

\examples{
\dontrun{
svc <- fsx()
# This operation copies an Amazon FSx backup.
svc$copy_backup(
  SourceBackupId = "backup-03e3c82e0183b7b6b",
  SourceRegion = "us-east-2"
)
}

}
