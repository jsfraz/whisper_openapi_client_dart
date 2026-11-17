//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class UserApi {
  UserApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Delete my account
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> deleteMeWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/user/me';

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

  /// Delete my account
  Future<void> deleteMe() async {
    final response = await deleteMeWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Delete users
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [DeleteUsersInput] deleteUsersInput:
  Future<Response> deleteUsersWithHttpInfo({ DeleteUsersInput? deleteUsersInput, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/user';

    // ignore: prefer_final_locals
    Object? postBody = deleteUsersInput;

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

  /// Delete users
  ///
  /// Parameters:
  ///
  /// * [DeleteUsersInput] deleteUsersInput:
  Future<void> deleteUsers({ DeleteUsersInput? deleteUsersInput, }) async {
    final response = await deleteUsersWithHttpInfo( deleteUsersInput: deleteUsersInput, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get all users except the user
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAllUsersWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/user/all';

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

  /// Get all users except the user
  Future<List<ModelsUser>?> getAllUsers() async {
    final response = await getAllUsersWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ModelsUser>') as List)
        .cast<ModelsUser>()
        .toList(growable: false);

    }
    return null;
  }

  /// Get devices
  ///
  /// Lists the devices signed into the account. The requesting device is flagged.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getDevicesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/user/devices';

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

  /// Get devices
  ///
  /// Lists the devices signed into the account. The requesting device is flagged.
  Future<ModelsDevicesResponse?> getDevices() async {
    final response = await getDevicesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsDevicesResponse',) as ModelsDevicesResponse;
    
    }
    return null;
  }

  /// Get archive retention
  ///
  /// Returns how long the server keeps the ciphertext archive of this account.
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getRetentionWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/user/retention';

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

  /// Get archive retention
  ///
  /// Returns how long the server keeps the ciphertext archive of this account.
  Future<ModelsRetentionResponse?> getRetention() async {
    final response = await getRetentionWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsRetentionResponse',) as ModelsRetentionResponse;
    
    }
    return null;
  }

  /// Get user by ID
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> getUserByIdWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/user';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'id', id));

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

  /// Get user by ID
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<ModelsUser?> getUserById(String id,) async {
    final response = await getUserByIdWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsUser',) as ModelsUser;
    
    }
    return null;
  }

  /// Revoke a device
  ///
  /// Locks a device out immediately: it cannot log in, renew its token, call the API or keep its WebSocket.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> revokeDeviceWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/user/devices/{id}/revoke'
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

  /// Revoke a device
  ///
  /// Locks a device out immediately: it cannot log in, renew its token, call the API or keep its WebSocket.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> revokeDevice(String id,) async {
    final response = await revokeDeviceWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Search users
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  Future<Response> searchUsersWithHttpInfo(String username,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/user/search';

    // ignore: prefer_final_locals
    Object? postBody;

    final queryParams = <QueryParam>[];
    final headerParams = <String, String>{};
    final formParams = <String, String>{};

      queryParams.addAll(_queryParams('', 'username', username));

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

  /// Search users
  ///
  /// Parameters:
  ///
  /// * [String] username (required):
  Future<List<ModelsUser>?> searchUsers(String username,) async {
    final response = await searchUsersWithHttpInfo(username,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ModelsUser>') as List)
        .cast<ModelsUser>()
        .toList(growable: false);

    }
    return null;
  }

  /// Set archive retention
  ///
  /// The shorter retention of both participants wins, because both accounts can read a message.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SetRetentionInput] setRetentionInput:
  Future<Response> setRetentionWithHttpInfo({ SetRetentionInput? setRetentionInput, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/user/retention';

    // ignore: prefer_final_locals
    Object? postBody = setRetentionInput;

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

  /// Set archive retention
  ///
  /// The shorter retention of both participants wins, because both accounts can read a message.
  ///
  /// Parameters:
  ///
  /// * [SetRetentionInput] setRetentionInput:
  Future<void> setRetention({ SetRetentionInput? setRetentionInput, }) async {
    final response = await setRetentionWithHttpInfo( setRetentionInput: setRetentionInput, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Unrevoke a device
  ///
  /// Lets a revoked device sign in again. Only a live device of the same account may do this.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<Response> unrevokeDeviceWithHttpInfo(String id,) async {
    // ignore: prefer_const_declarations
    final path = r'/api/user/devices/{id}/unrevoke'
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

  /// Unrevoke a device
  ///
  /// Lets a revoked device sign in again. Only a live device of the same account may do this.
  ///
  /// Parameters:
  ///
  /// * [String] id (required):
  Future<void> unrevokeDevice(String id,) async {
    final response = await unrevokeDeviceWithHttpInfo(id,);
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
