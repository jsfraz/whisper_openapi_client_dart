//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class AuthenticationApi {
  AuthenticationApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// User auth
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [AuthUserInput] authUserInput:
  Future<Response> authUserWithHttpInfo({ AuthUserInput? authUserInput, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/auth';

    // ignore: prefer_final_locals
    Object? postBody = authUserInput;

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

  /// User auth
  ///
  /// Parameters:
  ///
  /// * [AuthUserInput] authUserInput:
  Future<ModelsAuthResponse?> authUser({ AuthUserInput? authUserInput, }) async {
    final response = await authUserWithHttpInfo( authUserInput: authUserInput, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsAuthResponse',) as ModelsAuthResponse;
    
    }
    return null;
  }

  /// Register new user
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateUserInput] createUserInput:
  Future<Response> createUserWithHttpInfo({ CreateUserInput? createUserInput, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/auth/register';

    // ignore: prefer_final_locals
    Object? postBody = createUserInput;

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

  /// Register new user
  ///
  /// Parameters:
  ///
  /// * [CreateUserInput] createUserInput:
  Future<ModelsUser?> createUser({ CreateUserInput? createUserInput, }) async {
    final response = await createUserWithHttpInfo( createUserInput: createUserInput, );
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

  /// Refresh access token.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RefreshUserAccessTokenInput] refreshUserAccessTokenInput:
  Future<Response> refreshUserAccessTokenWithHttpInfo({ RefreshUserAccessTokenInput? refreshUserAccessTokenInput, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/auth/refresh';

    // ignore: prefer_final_locals
    Object? postBody = refreshUserAccessTokenInput;

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

  /// Refresh access token.
  ///
  /// Parameters:
  ///
  /// * [RefreshUserAccessTokenInput] refreshUserAccessTokenInput:
  Future<ModelsRefreshResponse?> refreshUserAccessToken({ RefreshUserAccessTokenInput? refreshUserAccessTokenInput, }) async {
    final response = await refreshUserAccessTokenWithHttpInfo( refreshUserAccessTokenInput: refreshUserAccessTokenInput, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsRefreshResponse',) as ModelsRefreshResponse;
    
    }
    return null;
  }

  /// WebSocket auth
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> webSocketAuthWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/auth/ws';

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

  /// WebSocket auth
  Future<ModelsWsAuthResponse?> webSocketAuth() async {
    final response = await webSocketAuthWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      return await apiClient.deserializeAsync(await _decodeBodyBytes(response), 'ModelsWsAuthResponse',) as ModelsWsAuthResponse;
    
    }
    return null;
  }
}
