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

  /// Delete a conversation for me
  ///
  /// Deletes a conversation for the calling account on every device: everything sent at or before the cut stops being visible to it. The other participant keeps the archive. Idempotent.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] peerId (required):
  ///   The other participant of the conversation
  ///
  /// * [String] before:
  ///   RFC3339 instant to delete up to (default: now)
  Future<Response> clearConversationWithHttpInfo(String peerId, { String? before, }) async {
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
      queryParams.addAll(_queryParams('', 'peerId', peerId));

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

  /// Delete a conversation for me
  ///
  /// Deletes a conversation for the calling account on every device: everything sent at or before the cut stops being visible to it. The other participant keeps the archive. Idempotent.
  ///
  /// Parameters:
  ///
  /// * [String] peerId (required):
  ///   The other participant of the conversation
  ///
  /// * [String] before:
  ///   RFC3339 instant to delete up to (default: now)
  Future<ModelsClearConversationResponse?> clearConversation(String peerId, { String? before, }) async {
    final response = await clearConversationWithHttpInfo(peerId,  before: before, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsClearConversationResponse',) as ModelsClearConversationResponse;
    
    }
    return null;
  }

  /// Delete my message for everyone
  ///
  /// Erases the ciphertext of a message the caller sent, unpins it and logs the tombstone, so both sides learn about it. Idempotent.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The message id
  Future<Response> deleteMessageWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/messages/{id}'
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

  /// Delete my message for everyone
  ///
  /// Erases the ciphertext of a message the caller sent, unpins it and logs the tombstone, so both sides learn about it. Idempotent.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The message id
  Future<void> deleteMessage(String id,) async {
    final response = await deleteMessageWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Edit my message
  ///
  /// Replaces the ciphertext of a message the caller sent with a new version and stamps the edit. Both sides learn about it through sync and a live edit frame. The server never sees the plaintext.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The message id
  ///
  /// * [EditMessageInput] editMessageInput:
  Future<Response> editMessageWithHttpInfo(String id, { EditMessageInput? editMessageInput, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/messages/{id}'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = editMessageInput;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>['application/json'];


    return apiClient.invokeAPI(
      path,
      'PATCH',
      queryParams,
      postBody,
      headerParams,
      formParams,
      contentTypes.isEmpty ? null : contentTypes.first,
    );
  }

  /// Edit my message
  ///
  /// Replaces the ciphertext of a message the caller sent with a new version and stamps the edit. Both sides learn about it through sync and a live edit frame. The server never sees the plaintext.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The message id
  ///
  /// * [EditMessageInput] editMessageInput:
  Future<ModelsEditMessageResponse?> editMessage(String id, { EditMessageInput? editMessageInput, }) async {
    final response = await editMessageWithHttpInfo(id,  editMessageInput: editMessageInput, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsEditMessageResponse',) as ModelsEditMessageResponse;
    
    }
    return null;
  }

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

  /// Hide a message for me
  ///
  /// Removes one message from the calling account on every device. The other participant keeps it. Idempotent.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The message id
  Future<Response> hideMessageWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/messages/{id}/hide'
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

  /// Hide a message for me
  ///
  /// Removes one message from the calling account on every device. The other participant keeps it. Idempotent.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The message id
  Future<void> hideMessage(String id,) async {
    final response = await hideMessageWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Pin a message
  ///
  /// Pins a message of the chat for both participants. Anyone in the conversation may pin. Idempotent.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The message id
  Future<Response> pinMessageWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/messages/{id}/pin'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

    const contentTypes = <String>[];


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

  /// Pin a message
  ///
  /// Pins a message of the chat for both participants. Anyone in the conversation may pin. Idempotent.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The message id
  Future<void> pinMessage(String id,) async {
    final response = await pinMessageWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Remove my reaction
  ///
  /// Clears the caller's reaction on a message. Idempotent.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The message id
  Future<Response> removeReactionWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/messages/{id}/reaction'
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

  /// Remove my reaction
  ///
  /// Clears the caller's reaction on a message. Idempotent.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The message id
  Future<void> removeReaction(String id,) async {
    final response = await removeReactionWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// React to a message
  ///
  /// Stores the caller's encrypted reaction on a message. A later reaction replaces it; both sides learn about it through sync and a live reaction frame.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The message id
  ///
  /// * [SetReactionInput] setReactionInput:
  Future<Response> setReactionWithHttpInfo(String id, { SetReactionInput? setReactionInput, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/messages/{id}/reaction'
      .replaceAll('{id}', id);

    // ignore: prefer_final_locals
    Object? postBody = setReactionInput;

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

  /// React to a message
  ///
  /// Stores the caller's encrypted reaction on a message. A later reaction replaces it; both sides learn about it through sync and a live reaction frame.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The message id
  ///
  /// * [SetReactionInput] setReactionInput:
  Future<void> setReaction(String id, { SetReactionInput? setReactionInput, }) async {
    final response = await setReactionWithHttpInfo(id,  setReactionInput: setReactionInput, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Unpin a message
  ///
  /// Removes a pin for both participants. Idempotent.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The message id
  Future<Response> unpinMessageWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/messages/{id}/pin'
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

  /// Unpin a message
  ///
  /// Removes a pin for both participants. Idempotent.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  ///   The message id
  Future<void> unpinMessage(String id,) async {
    final response = await unpinMessageWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
