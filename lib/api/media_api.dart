//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MediaApi {
  MediaApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Complete a chunked upload
  ///
  /// Turns a fully received chunked upload into a media file the receiver can download. Only the sender may complete it, and only once every byte is in.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> completeMediaUploadWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/media/uploads/{id}/complete'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Complete a chunked upload
  ///
  /// Turns a fully received chunked upload into a media file the receiver can download. Only the sender may complete it, and only once every byte is in.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<ModelsMediaUploadResponse?> completeMediaUpload(String id,) async {
    final response = await completeMediaUploadWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsMediaUploadResponse',) as ModelsMediaUploadResponse;
    
    }
    return null;
  }

  /// Confirm media download and delete it
  ///
  /// Confirms the encrypted media file has been downloaded and deletes it from the server. Only the intended receiver may confirm. Idempotent.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> confirmMediaDownloadWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/media/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'DELETE',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Confirm media download and delete it
  ///
  /// Confirms the encrypted media file has been downloaded and deletes it from the server. Only the intended receiver may confirm. Idempotent.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> confirmMediaDownload(String id,) async {
    final response = await confirmMediaDownloadWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Start a chunked upload
  ///
  /// Starts a resumable upload of an end-to-end encrypted media file bound to the receiver. Returns the upload id and the offset the server holds.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateMediaUploadInput] createMediaUploadInput:
  Future<Response> createMediaUploadWithHttpInfo({ CreateMediaUploadInput? createMediaUploadInput, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/media/uploads';

    // ignore: prefer_final_locals
    Object? postBody = createMediaUploadInput;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Start a chunked upload
  ///
  /// Starts a resumable upload of an end-to-end encrypted media file bound to the receiver. Returns the upload id and the offset the server holds.
  ///
  /// Parameters:
  ///
  /// * [CreateMediaUploadInput] createMediaUploadInput:
  Future<ModelsMediaUploadSessionResponse?> createMediaUpload({ CreateMediaUploadInput? createMediaUploadInput, }) async {
    final response = await createMediaUploadWithHttpInfo( createMediaUploadInput: createMediaUploadInput, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsMediaUploadSessionResponse',) as ModelsMediaUploadSessionResponse;
    
    }
    return null;
  }

  /// Download encrypted media file by id
  ///
  /// Downloads the encrypted media file. Only the intended receiver may download it. The file is retained until the client confirms the download or its TTL expires.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> downloadMediaWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/media/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Download encrypted media file by id
  ///
  /// Downloads the encrypted media file. Only the intended receiver may download it. The file is retained until the client confirms the download or its TTL expires.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<MultipartFile?> downloadMedia(String id,) async {
    final response = await downloadMediaWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MultipartFile',) as MultipartFile;
    
    }
    return null;
  }

  /// Get chunked upload state
  ///
  /// Returns how much of the encrypted media file the server holds, so a client can resume a broken upload.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getMediaUploadWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/media/uploads/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


    return apiClient.invokeAPI(
      path,
      'GET',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Get chunked upload state
  ///
  /// Returns how much of the encrypted media file the server holds, so a client can resume a broken upload.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<ModelsMediaUploadSessionResponse?> getMediaUpload(String id,) async {
    final response = await getMediaUploadWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsMediaUploadSessionResponse',) as ModelsMediaUploadSessionResponse;
    
    }
    return null;
  }

  /// Upload encrypted media file
  ///
  /// Uploads an end-to-end encrypted media file bound to the receiver. The server stores only the ciphertext. Returns the media id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] file (required):
  ///   The encrypted media blob (nonce || mac || ciphertext). Its field name must be file.
  ///
  /// * [String] receiverId (required):
  ///   Id of the user the media is sent to.
  Future<Response> uploadMediaWithHttpInfo(MultipartFile file, String receiverId,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/media';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse(path));
    hasFields = true;
    mp.fields[r'file'] = file.field;
    mp.files.add(file);
    hasFields = true;
    mp.fields[r'receiverId'] = parameterToString(receiverId);
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Upload encrypted media file
  ///
  /// Uploads an end-to-end encrypted media file bound to the receiver. The server stores only the ciphertext. Returns the media id.
  ///
  /// Parameters:
  ///
  /// * [MultipartFile] file (required):
  ///   The encrypted media blob (nonce || mac || ciphertext). Its field name must be file.
  ///
  /// * [String] receiverId (required):
  ///   Id of the user the media is sent to.
  Future<ModelsMediaUploadResponse?> uploadMedia(MultipartFile file, String receiverId,) async {
    final response = await uploadMediaWithHttpInfo(file, receiverId,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsMediaUploadResponse',) as ModelsMediaUploadResponse;
    
    }
    return null;
  }

  /// Upload one chunk
  ///
  /// Appends one chunk of the encrypted media file at the Upload-Offset header. A chunk at a different offset is refused with 409 and the offset the server holds.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [int] uploadOffset (required):
  ///   Byte offset this chunk starts at; must equal the received count.
  ///
  /// * [MultipartFile] chunk (required):
  ///   One slice of the encrypted media blob. Its field name must be chunk.
  Future<Response> uploadMediaChunkWithHttpInfo(String id, int uploadOffset, MultipartFile chunk,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/media/uploads/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    headerParams[r'Upload-Offset'] = parameterToString(uploadOffset);

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('PUT', Uri.parse(path));
    hasFields = true;
    mp.fields[r'chunk'] = chunk.field;
    mp.files.add(chunk);
    if (hasFields) {
      postBody = mp;
    }

    return apiClient.invokeAPI(
      path,
      'PUT',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Upload one chunk
  ///
  /// Appends one chunk of the encrypted media file at the Upload-Offset header. A chunk at a different offset is refused with 409 and the offset the server holds.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///
  /// * [int] uploadOffset (required):
  ///   Byte offset this chunk starts at; must equal the received count.
  ///
  /// * [MultipartFile] chunk (required):
  ///   One slice of the encrypted media blob. Its field name must be chunk.
  Future<ModelsMediaUploadSessionResponse?> uploadMediaChunk(String id, int uploadOffset, MultipartFile chunk,) async {
    final response = await uploadMediaChunkWithHttpInfo(id, uploadOffset, chunk,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsMediaUploadSessionResponse',) as ModelsMediaUploadSessionResponse;
    
    }
    return null;
  }
}
