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

  /// Upload encrypted media file
  ///
  /// Uploads an end-to-end encrypted media file (`multipart/form-data`) bound to
  /// the receiver. The server only ever sees the ciphertext (zero-knowledge).
  /// Returns the media id used to download/confirm the file later.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] receiverId (required):
  ///   Id of the user the media is sent to.
  ///
  /// * [MultipartFile] file (required):
  ///   The encrypted media blob (`nonce || mac || ciphertext`). Its field name
  ///   must be `file`.
  Future<Response> uploadMediaWithHttpInfo(int receiverId, MultipartFile file,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/media';

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentType = 'multipart/form-data';

    final request = MultipartRequest('POST', Uri.parse('${apiClient.basePath}$path'));
    request.fields['receiverId'] = receiverId.toString();
    request.files.add(file);

    return apiClient.invokeAPI(
      path,
      'POST',
      queryParams,
      request,
      headerParams,
      formParams,
      contentType,
    );
  }

  /// Upload encrypted media file
  ///
  /// See [uploadMediaWithHttpInfo].
  ///
  /// Parameters:
  ///
  /// * [int] receiverId (required):
  ///
  /// * [MultipartFile] file (required):
  Future<ModelsMediaUploadResponse?> uploadMedia(int receiverId, MultipartFile file,) async {
    final response = await uploadMediaWithHttpInfo(receiverId, file,);
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

  /// Download encrypted media file
  ///
  /// Downloads the encrypted media ciphertext by id. Only the intended receiver
  /// may download it. The file is NOT deleted by this call; the client must call
  /// [confirmMediaDownload] once the file has been received, decrypted and
  /// persisted. The server-side TTL remains a backstop.
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

  /// Download encrypted media file
  ///
  /// Returns the raw encrypted media bytes (`nonce || mac || ciphertext`).
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Uint8List> downloadMedia(String id,) async {
    final response = await downloadMediaWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    return response.bodyBytes;
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
}
