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

  /// Upload encrypted media file
  ///
  /// Uploads an end-to-end encrypted media file bound to the receiver. Returns the media id.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [UploadMediaInput] uploadMediaInput:
  Future<Response> uploadMediaWithHttpInfo({ UploadMediaInput? uploadMediaInput, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/media';

    // ignore: prefer_final_locals
    Object? postBody = uploadMediaInput;

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

  /// Upload encrypted media file
  ///
  /// Uploads an end-to-end encrypted media file bound to the receiver. Returns the media id.
  ///
  /// Parameters:
  ///
  /// * [UploadMediaInput] uploadMediaInput:
  Future<ModelsMediaUploadResponse?> uploadMedia({ UploadMediaInput? uploadMediaInput, }) async {
    final response = await uploadMediaWithHttpInfo( uploadMediaInput: uploadMediaInput, );
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
}
