//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class MessagesApi {
  MessagesApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Get message history
  ///
  /// One page of a conversation from the ciphertext archive, newest first. The server never sees the plaintext.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] peerId (required):
  ///   The other participant of the conversation
  ///
  /// * [String] before:
  ///   Opaque cursor from the previous page
  ///
  /// * [int] limit:
  ///   Page size, 1-200 (default 50)
  Future<Response> getHistoryWithHttpInfo(String peerId, { String? before, int? limit, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/messages';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    if (before != null) {
      queryParams.addAll(_queryParams('', 'before', before));
    }
    if (limit != null) {
      queryParams.addAll(_queryParams('', 'limit', limit));
    }
      queryParams.addAll(_queryParams('', 'peerId', peerId));

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

  /// Get message history
  ///
  /// One page of a conversation from the ciphertext archive, newest first. The server never sees the plaintext.
  ///
  /// Parameters:
  ///
  /// * [String] peerId (required):
  ///   The other participant of the conversation
  ///
  /// * [String] before:
  ///   Opaque cursor from the previous page
  ///
  /// * [int] limit:
  ///   Page size, 1-200 (default 50)
  Future<ModelsHistoryPage?> getHistory(String peerId, { String? before, int? limit, }) async {
    final response = await getHistoryWithHttpInfo(peerId,  before: before, limit: limit, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsHistoryPage',) as ModelsHistoryPage;
    
    }
    return null;
  }
}
