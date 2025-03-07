# This file is generated by make.paws. Please do not edit here.
#' @importFrom paws.common get_config new_operation new_request send_request
#' @include backupstorage_service.R
NULL

#' Delete Object from the incremental base Backup
#'
#' @description
#' Delete Object from the incremental base Backup.
#'
#' @usage
#' backupstorage_delete_object(BackupJobId, ObjectName)
#'
#' @param BackupJobId &#91;required&#93; Backup job Id for the in-progress backup.
#' @param ObjectName &#91;required&#93; The name of the Object.
#'
#' @return
#' An empty list.
#'
#' @section Request syntax:
#' ```
#' svc$delete_object(
#'   BackupJobId = "string",
#'   ObjectName = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname backupstorage_delete_object
#'
#' @aliases backupstorage_delete_object
backupstorage_delete_object <- function(BackupJobId, ObjectName) {
  op <- new_operation(
    name = "DeleteObject",
    http_method = "DELETE",
    http_path = "/backup-jobs/{jobId}/object/{objectName}",
    paginator = list()
  )
  input <- .backupstorage$delete_object_input(BackupJobId = BackupJobId, ObjectName = ObjectName)
  output <- .backupstorage$delete_object_output()
  config <- get_config()
  svc <- .backupstorage$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.backupstorage$operations$delete_object <- backupstorage_delete_object

#' Gets the specified object's chunk
#'
#' @description
#' Gets the specified object's chunk.
#'
#' @usage
#' backupstorage_get_chunk(StorageJobId, ChunkToken)
#'
#' @param StorageJobId &#91;required&#93; Storage job id
#' @param ChunkToken &#91;required&#93; Chunk token
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   Data = raw,
#'   Length = 123,
#'   Checksum = "string",
#'   ChecksumAlgorithm = "SHA256"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$get_chunk(
#'   StorageJobId = "string",
#'   ChunkToken = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname backupstorage_get_chunk
#'
#' @aliases backupstorage_get_chunk
backupstorage_get_chunk <- function(StorageJobId, ChunkToken) {
  op <- new_operation(
    name = "GetChunk",
    http_method = "GET",
    http_path = "/restore-jobs/{jobId}/chunk/{chunkToken}",
    paginator = list()
  )
  input <- .backupstorage$get_chunk_input(StorageJobId = StorageJobId, ChunkToken = ChunkToken)
  output <- .backupstorage$get_chunk_output()
  config <- get_config()
  svc <- .backupstorage$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.backupstorage$operations$get_chunk <- backupstorage_get_chunk

#' Get metadata associated with an Object
#'
#' @description
#' Get metadata associated with an Object.
#'
#' @usage
#' backupstorage_get_object_metadata(StorageJobId, ObjectToken)
#'
#' @param StorageJobId &#91;required&#93; Backup job id for the in-progress backup.
#' @param ObjectToken &#91;required&#93; Object token.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   MetadataString = "string",
#'   MetadataBlob = raw,
#'   MetadataBlobLength = 123,
#'   MetadataBlobChecksum = "string",
#'   MetadataBlobChecksumAlgorithm = "SHA256"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$get_object_metadata(
#'   StorageJobId = "string",
#'   ObjectToken = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname backupstorage_get_object_metadata
#'
#' @aliases backupstorage_get_object_metadata
backupstorage_get_object_metadata <- function(StorageJobId, ObjectToken) {
  op <- new_operation(
    name = "GetObjectMetadata",
    http_method = "GET",
    http_path = "/restore-jobs/{jobId}/object/{objectToken}/metadata",
    paginator = list()
  )
  input <- .backupstorage$get_object_metadata_input(StorageJobId = StorageJobId, ObjectToken = ObjectToken)
  output <- .backupstorage$get_object_metadata_output()
  config <- get_config()
  svc <- .backupstorage$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.backupstorage$operations$get_object_metadata <- backupstorage_get_object_metadata

#' List chunks in a given Object
#'
#' @description
#' List chunks in a given Object
#'
#' @usage
#' backupstorage_list_chunks(StorageJobId, ObjectToken, MaxResults,
#'   NextToken)
#'
#' @param StorageJobId &#91;required&#93; Storage job id
#' @param ObjectToken &#91;required&#93; Object token
#' @param MaxResults Maximum number of chunks
#' @param NextToken Pagination token
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   ChunkList = list(
#'     list(
#'       Index = 123,
#'       Length = 123,
#'       Checksum = "string",
#'       ChecksumAlgorithm = "SHA256",
#'       ChunkToken = "string"
#'     )
#'   ),
#'   NextToken = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$list_chunks(
#'   StorageJobId = "string",
#'   ObjectToken = "string",
#'   MaxResults = 123,
#'   NextToken = "string"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname backupstorage_list_chunks
#'
#' @aliases backupstorage_list_chunks
backupstorage_list_chunks <- function(StorageJobId, ObjectToken, MaxResults = NULL, NextToken = NULL) {
  op <- new_operation(
    name = "ListChunks",
    http_method = "GET",
    http_path = "/restore-jobs/{jobId}/chunks/{objectToken}/list",
    paginator = list()
  )
  input <- .backupstorage$list_chunks_input(StorageJobId = StorageJobId, ObjectToken = ObjectToken, MaxResults = MaxResults, NextToken = NextToken)
  output <- .backupstorage$list_chunks_output()
  config <- get_config()
  svc <- .backupstorage$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.backupstorage$operations$list_chunks <- backupstorage_list_chunks

#' List all Objects in a given Backup
#'
#' @description
#' List all Objects in a given Backup.
#'
#' @usage
#' backupstorage_list_objects(StorageJobId, StartingObjectName,
#'   StartingObjectPrefix, MaxResults, NextToken, CreatedBefore,
#'   CreatedAfter)
#'
#' @param StorageJobId &#91;required&#93; Storage job id
#' @param StartingObjectName Optional, specifies the starting Object name to list from. Ignored if
#' NextToken is not NULL
#' @param StartingObjectPrefix Optional, specifies the starting Object prefix to list from. Ignored if
#' NextToken is not NULL
#' @param MaxResults Maximum objects count
#' @param NextToken Pagination token
#' @param CreatedBefore (Optional) Created before filter
#' @param CreatedAfter (Optional) Created after filter
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   ObjectList = list(
#'     list(
#'       Name = "string",
#'       ChunksCount = 123,
#'       MetadataString = "string",
#'       ObjectChecksum = "string",
#'       ObjectChecksumAlgorithm = "SUMMARY",
#'       ObjectToken = "string"
#'     )
#'   ),
#'   NextToken = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$list_objects(
#'   StorageJobId = "string",
#'   StartingObjectName = "string",
#'   StartingObjectPrefix = "string",
#'   MaxResults = 123,
#'   NextToken = "string",
#'   CreatedBefore = as.POSIXct(
#'     "2015-01-01"
#'   ),
#'   CreatedAfter = as.POSIXct(
#'     "2015-01-01"
#'   )
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname backupstorage_list_objects
#'
#' @aliases backupstorage_list_objects
backupstorage_list_objects <- function(StorageJobId, StartingObjectName = NULL, StartingObjectPrefix = NULL, MaxResults = NULL, NextToken = NULL, CreatedBefore = NULL, CreatedAfter = NULL) {
  op <- new_operation(
    name = "ListObjects",
    http_method = "GET",
    http_path = "/restore-jobs/{jobId}/objects/list",
    paginator = list()
  )
  input <- .backupstorage$list_objects_input(StorageJobId = StorageJobId, StartingObjectName = StartingObjectName, StartingObjectPrefix = StartingObjectPrefix, MaxResults = MaxResults, NextToken = NextToken, CreatedBefore = CreatedBefore, CreatedAfter = CreatedAfter)
  output <- .backupstorage$list_objects_output()
  config <- get_config()
  svc <- .backupstorage$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.backupstorage$operations$list_objects <- backupstorage_list_objects

#' Complete upload
#'
#' @description
#' Complete upload
#'
#' @usage
#' backupstorage_notify_object_complete(BackupJobId, UploadId,
#'   ObjectChecksum, ObjectChecksumAlgorithm, MetadataString, MetadataBlob,
#'   MetadataBlobLength, MetadataBlobChecksum, MetadataBlobChecksumAlgorithm)
#'
#' @param BackupJobId &#91;required&#93; Backup job Id for the in-progress backup
#' @param UploadId &#91;required&#93; Upload Id for the in-progress upload
#' @param ObjectChecksum &#91;required&#93; Object checksum
#' @param ObjectChecksumAlgorithm &#91;required&#93; Checksum algorithm
#' @param MetadataString Optional metadata associated with an Object. Maximum string length is
#' 256 bytes.
#' @param MetadataBlob Optional metadata associated with an Object. Maximum length is 4MB.
#' @param MetadataBlobLength The size of MetadataBlob.
#' @param MetadataBlobChecksum Checksum of MetadataBlob.
#' @param MetadataBlobChecksumAlgorithm Checksum algorithm.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   ObjectChecksum = "string",
#'   ObjectChecksumAlgorithm = "SUMMARY"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$notify_object_complete(
#'   BackupJobId = "string",
#'   UploadId = "string",
#'   ObjectChecksum = "string",
#'   ObjectChecksumAlgorithm = "SUMMARY",
#'   MetadataString = "string",
#'   MetadataBlob = raw,
#'   MetadataBlobLength = 123,
#'   MetadataBlobChecksum = "string",
#'   MetadataBlobChecksumAlgorithm = "SHA256"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname backupstorage_notify_object_complete
#'
#' @aliases backupstorage_notify_object_complete
backupstorage_notify_object_complete <- function(BackupJobId, UploadId, ObjectChecksum, ObjectChecksumAlgorithm, MetadataString = NULL, MetadataBlob = NULL, MetadataBlobLength = NULL, MetadataBlobChecksum = NULL, MetadataBlobChecksumAlgorithm = NULL) {
  op <- new_operation(
    name = "NotifyObjectComplete",
    http_method = "PUT",
    http_path = "/backup-jobs/{jobId}/object/{uploadId}/complete",
    paginator = list()
  )
  input <- .backupstorage$notify_object_complete_input(BackupJobId = BackupJobId, UploadId = UploadId, ObjectChecksum = ObjectChecksum, ObjectChecksumAlgorithm = ObjectChecksumAlgorithm, MetadataString = MetadataString, MetadataBlob = MetadataBlob, MetadataBlobLength = MetadataBlobLength, MetadataBlobChecksum = MetadataBlobChecksum, MetadataBlobChecksumAlgorithm = MetadataBlobChecksumAlgorithm)
  output <- .backupstorage$notify_object_complete_output()
  config <- get_config()
  svc <- .backupstorage$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.backupstorage$operations$notify_object_complete <- backupstorage_notify_object_complete

#' Upload chunk
#'
#' @description
#' Upload chunk.
#'
#' @usage
#' backupstorage_put_chunk(BackupJobId, UploadId, ChunkIndex, Data, Length,
#'   Checksum, ChecksumAlgorithm)
#'
#' @param BackupJobId &#91;required&#93; Backup job Id for the in-progress backup.
#' @param UploadId &#91;required&#93; Upload Id for the in-progress upload.
#' @param ChunkIndex &#91;required&#93; Describes this chunk's position relative to the other chunks
#' @param Data &#91;required&#93; Data to be uploaded
#' @param Length &#91;required&#93; Data length
#' @param Checksum &#91;required&#93; Data checksum
#' @param ChecksumAlgorithm &#91;required&#93; Checksum algorithm
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   ChunkChecksum = "string",
#'   ChunkChecksumAlgorithm = "SHA256"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$put_chunk(
#'   BackupJobId = "string",
#'   UploadId = "string",
#'   ChunkIndex = 123,
#'   Data = raw,
#'   Length = 123,
#'   Checksum = "string",
#'   ChecksumAlgorithm = "SHA256"
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname backupstorage_put_chunk
#'
#' @aliases backupstorage_put_chunk
backupstorage_put_chunk <- function(BackupJobId, UploadId, ChunkIndex, Data, Length, Checksum, ChecksumAlgorithm) {
  op <- new_operation(
    name = "PutChunk",
    http_method = "PUT",
    http_path = "/backup-jobs/{jobId}/chunk/{uploadId}/{chunkIndex}",
    paginator = list()
  )
  input <- .backupstorage$put_chunk_input(BackupJobId = BackupJobId, UploadId = UploadId, ChunkIndex = ChunkIndex, Data = Data, Length = Length, Checksum = Checksum, ChecksumAlgorithm = ChecksumAlgorithm)
  output <- .backupstorage$put_chunk_output()
  config <- get_config()
  svc <- .backupstorage$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.backupstorage$operations$put_chunk <- backupstorage_put_chunk

#' Upload object that can store object metadata String and data blob in
#' single API call using inline chunk field
#'
#' @description
#' Upload object that can store object metadata String and data blob in
#' single API call using inline chunk field.
#'
#' @usage
#' backupstorage_put_object(BackupJobId, ObjectName, MetadataString,
#'   InlineChunk, InlineChunkLength, InlineChunkChecksum,
#'   InlineChunkChecksumAlgorithm, ObjectChecksum, ObjectChecksumAlgorithm,
#'   ThrowOnDuplicate)
#'
#' @param BackupJobId &#91;required&#93; Backup job Id for the in-progress backup.
#' @param ObjectName &#91;required&#93; The name of the Object to be uploaded.
#' @param MetadataString Store user defined metadata like backup checksum, disk ids, restore
#' metadata etc.
#' @param InlineChunk Inline chunk data to be uploaded.
#' @param InlineChunkLength Length of the inline chunk data.
#' @param InlineChunkChecksum Inline chunk checksum
#' @param InlineChunkChecksumAlgorithm Inline chunk checksum algorithm
#' @param ObjectChecksum object checksum
#' @param ObjectChecksumAlgorithm object checksum algorithm
#' @param ThrowOnDuplicate Throw an exception if Object name is already exist.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   InlineChunkChecksum = "string",
#'   InlineChunkChecksumAlgorithm = "SHA256",
#'   ObjectChecksum = "string",
#'   ObjectChecksumAlgorithm = "SUMMARY"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$put_object(
#'   BackupJobId = "string",
#'   ObjectName = "string",
#'   MetadataString = "string",
#'   InlineChunk = raw,
#'   InlineChunkLength = 123,
#'   InlineChunkChecksum = "string",
#'   InlineChunkChecksumAlgorithm = "string",
#'   ObjectChecksum = "string",
#'   ObjectChecksumAlgorithm = "SUMMARY",
#'   ThrowOnDuplicate = TRUE|FALSE
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname backupstorage_put_object
#'
#' @aliases backupstorage_put_object
backupstorage_put_object <- function(BackupJobId, ObjectName, MetadataString = NULL, InlineChunk = NULL, InlineChunkLength = NULL, InlineChunkChecksum = NULL, InlineChunkChecksumAlgorithm = NULL, ObjectChecksum = NULL, ObjectChecksumAlgorithm = NULL, ThrowOnDuplicate = NULL) {
  op <- new_operation(
    name = "PutObject",
    http_method = "PUT",
    http_path = "/backup-jobs/{jobId}/object/{objectName}/put-object",
    paginator = list()
  )
  input <- .backupstorage$put_object_input(BackupJobId = BackupJobId, ObjectName = ObjectName, MetadataString = MetadataString, InlineChunk = InlineChunk, InlineChunkLength = InlineChunkLength, InlineChunkChecksum = InlineChunkChecksum, InlineChunkChecksumAlgorithm = InlineChunkChecksumAlgorithm, ObjectChecksum = ObjectChecksum, ObjectChecksumAlgorithm = ObjectChecksumAlgorithm, ThrowOnDuplicate = ThrowOnDuplicate)
  output <- .backupstorage$put_object_output()
  config <- get_config()
  svc <- .backupstorage$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.backupstorage$operations$put_object <- backupstorage_put_object

#' Start upload containing one or many chunks
#'
#' @description
#' Start upload containing one or many chunks.
#'
#' @usage
#' backupstorage_start_object(BackupJobId, ObjectName, ThrowOnDuplicate)
#'
#' @param BackupJobId &#91;required&#93; Backup job Id for the in-progress backup
#' @param ObjectName &#91;required&#93; Name for the object.
#' @param ThrowOnDuplicate Throw an exception if Object name is already exist.
#'
#' @return
#' A list with the following syntax:
#' ```
#' list(
#'   UploadId = "string"
#' )
#' ```
#'
#' @section Request syntax:
#' ```
#' svc$start_object(
#'   BackupJobId = "string",
#'   ObjectName = "string",
#'   ThrowOnDuplicate = TRUE|FALSE
#' )
#' ```
#'
#' @keywords internal
#'
#' @rdname backupstorage_start_object
#'
#' @aliases backupstorage_start_object
backupstorage_start_object <- function(BackupJobId, ObjectName, ThrowOnDuplicate = NULL) {
  op <- new_operation(
    name = "StartObject",
    http_method = "PUT",
    http_path = "/backup-jobs/{jobId}/object/{objectName}",
    paginator = list()
  )
  input <- .backupstorage$start_object_input(BackupJobId = BackupJobId, ObjectName = ObjectName, ThrowOnDuplicate = ThrowOnDuplicate)
  output <- .backupstorage$start_object_output()
  config <- get_config()
  svc <- .backupstorage$service(config)
  request <- new_request(svc, op, input, output)
  response <- send_request(request)
  return(response)
}
.backupstorage$operations$start_object <- backupstorage_start_object
