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

  /// User login.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [LoginUserInput] loginUserInput:
  Future<Response> loginUserWithHttpInfo({ LoginUserInput? loginUserInput, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/auth/login';

    // ignore: prefer_final_locals
    Object? postBody = loginUserInput;

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

  /// User login.
  ///
  /// Parameters:
  ///
  /// * [LoginUserInput] loginUserInput:
  Future<ModelsAuthResponse?> loginUser({ LoginUserInput? loginUserInput, }) async {
    final response = await loginUserWithHttpInfo( loginUserInput: loginUserInput, );
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

  /// Creates new account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [RegisterUserInput] registerUserInput:
  Future<Response> registerUserWithHttpInfo({ RegisterUserInput? registerUserInput, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/auth/register';

    // ignore: prefer_final_locals
    Object? postBody = registerUserInput;

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

  /// Creates new account.
  ///
  /// Parameters:
  ///
  /// * [RegisterUserInput] registerUserInput:
  Future<void> registerUser({ RegisterUserInput? registerUserInput, }) async {
    final response = await registerUserWithHttpInfo( registerUserInput: registerUserInput, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Verifies account.
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [VerifyUserInput] verifyUserInput:
  Future<Response> verifyUserWithHttpInfo({ VerifyUserInput? verifyUserInput, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/auth/verify';

    // ignore: prefer_final_locals
    Object? postBody = verifyUserInput;

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

  /// Verifies account.
  ///
  /// Parameters:
  ///
  /// * [VerifyUserInput] verifyUserInput:
  Future<void> verifyUser({ VerifyUserInput? verifyUserInput, }) async {
    final response = await verifyUserWithHttpInfo( verifyUserInput: verifyUserInput, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
