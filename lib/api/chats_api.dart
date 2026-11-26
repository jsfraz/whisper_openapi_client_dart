//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class ChatsApi {
  ChatsApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Mark a conversation read
  ///
  /// Moves the caller's read cursor of a conversation and tells the other participant. Only the instant is stored: the server never learns which message was opened, and a client that keeps receipts off never calls this. Idempotent, and it never moves backwards.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] peerId (required):
  ///   The other participant of the conversation
  ///
  /// * [SetReadCursorInput] setReadCursorInput:
  Future<Response> setReadCursorWithHttpInfo(String peerId, { SetReadCursorInput? setReadCursorInput, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/chats/{peerId}/read'
      .replaceAll('{peerId}', peerId);

    // ignore: prefer_final_locals
    Object? postBody = setReadCursorInput;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


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

  /// Mark a conversation read
  ///
  /// Moves the caller's read cursor of a conversation and tells the other participant. Only the instant is stored: the server never learns which message was opened, and a client that keeps receipts off never calls this. Idempotent, and it never moves backwards.
  ///
  /// Parameters:
  ///
  /// * [String] peerId (required):
  ///   The other participant of the conversation
  ///
  /// * [SetReadCursorInput] setReadCursorInput:
  Future<void> setReadCursor(String peerId, { SetReadCursorInput? setReadCursorInput, }) async {
    final response = await setReadCursorWithHttpInfo(peerId,  setReadCursorInput: setReadCursorInput, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
