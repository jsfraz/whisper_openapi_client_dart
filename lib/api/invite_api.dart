//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;


class InviteApi {
  InviteApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  final ApiClient apiClient;

  /// Create registration invite
  ///
  /// Note: This method returns the HTTP [Response].
  ///
  /// Parameters:
  ///
  /// * [CreateInviteInput] createInviteInput:
  Future<Response> createInviteWithHttpInfo({ CreateInviteInput? createInviteInput, }) async {
    // ignore: prefer_const_declarations
    final path = r'/api/invite';

    // ignore: prefer_final_locals
    Object? postBody = createInviteInput;

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

  /// Create registration invite
  ///
  /// Parameters:
  ///
  /// * [CreateInviteInput] createInviteInput:
  Future<void> createInvite({ CreateInviteInput? createInviteInput, }) async {
    final response = await createInviteWithHttpInfo( createInviteInput: createInviteInput, );
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
  }

  /// Get all active registration invites
  ///
  /// Note: This method returns the HTTP [Response].
  Future<Response> getAllInvitesWithHttpInfo() async {
    // ignore: prefer_const_declarations
    final path = r'/api/invite/all';

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

  /// Get all active registration invites
  Future<List<ModelsInvite>?> getAllInvites() async {
    final response = await getAllInvitesWithHttpInfo();
    if (response.statusCode >= HttpStatus.badRequest) {
      throw ApiException(response.statusCode, await _decodeBodyBytes(response));
    }
    // When a remote server returns no body with a status of 204, we shall not decode it.
    // At the time of writing this, `dart:convert` will throw an "Unexpected end of input"
    // FormatException when trying to decode an empty string.
    if (response.body.isNotEmpty && response.statusCode != HttpStatus.noContent) {
      final responseBody = await _decodeBodyBytes(response);
      return (await apiClient.deserializeAsync(responseBody, 'List<ModelsInvite>') as List)
        .cast<ModelsInvite>()
        .toList(growable: false);

    }
    return null;
  }
}
