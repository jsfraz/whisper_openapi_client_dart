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
  /// Uploads an end-to-end encrypted media file bound to the receiver. Returns the media id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [int] receiverId (required):
  ///
  /// * [MultipartFile] file (required):
  Future<Response> uploadMediaWithHttpInfo(int receiverId, MultipartFile file,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/media';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['multipart/form-data'];

    bool hasFields = false;
    final mp = MultipartRequest('POST', Uri.parse('$path'));
    if (file.length > 0) {
      hasFields = true;
      mp.fields[r'file'] = file.field;
      mp.files.add(file);
    }
    mp.fields[r'receiverId'] = parameterToString(receiverId);
    hasFields = true;
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
  /// Uploads an end-to-end encrypted media file bound to the receiver. Returns the media id.
  ///
  /// Parameters:
  ///
  /// * [int] receiverId (required):
  ///
  /// * [MultipartFile] file (required):
  Future<MediaUploadResponse?> uploadMedia(int receiverId, MultipartFile file,) async {
    final response = await uploadMediaWithHttpInfo(receiverId, file,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'MediaUploadResponse',) as MediaUploadResponse;
    
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
  /// Downloads the encrypted media file. Only the intended receiver may download it. The file is retained until the client confirms the download (see [confirmMediaDownload]) or its TTL expires.
  ///
  /// Returns the raw (still encrypted) file bytes.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Uint8List?> downloadMedia(String id,) async {
    final response = await downloadMediaWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    if (response.bodyBytes.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return response.bodyBytes;
    }
    return null;
  }
}
