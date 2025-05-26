//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class FirebaseApi {
  FirebaseApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Set client Firebase token
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [SetFirebaseTokenInput] setFirebaseTokenInput:
  Future<Response> setFirebaseTokenWithHttpInfo({ SetFirebaseTokenInput? setFirebaseTokenInput, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/firebase/token';

    // ignore: prefer_final_locals
    Object? postBody = setFirebaseTokenInput;

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

  /// Set client Firebase token
  ///
  /// Parameters:
  ///
  /// * [SetFirebaseTokenInput] setFirebaseTokenInput:
  Future<void> setFirebaseToken({ SetFirebaseTokenInput? setFirebaseTokenInput, }) async {
    final response = await setFirebaseTokenWithHttpInfo( setFirebaseTokenInput: setFirebaseTokenInput, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }
}
