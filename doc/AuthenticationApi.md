# whisper_openapi_client_dart.api.AuthenticationApi

## Load the API package
```dart
import 'package:whisper_openapi_client_dart/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**authUser**](AuthenticationApi.md#authuser) | **POST** /api/auth | User auth
[**createUser**](AuthenticationApi.md#createuser) | **POST** /api/auth/register | Register new user
[**refreshUserAccessToken**](AuthenticationApi.md#refreshuseraccesstoken) | **POST** /api/auth/refresh | Refresh access token.


# **authUser**
> ModelsAuthResponse authUser(authUserInput)

User auth

### Example
```dart
import 'package:whisper_openapi_client_dart/api.dart';

final api_instance = AuthenticationApi();
final authUserInput = AuthUserInput(); // AuthUserInput | 

try {
    final result = api_instance.authUser(authUserInput);
    print(result);
} catch (e) {
    print('Exception when calling AuthenticationApi->authUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **authUserInput** | [**AuthUserInput**](AuthUserInput.md)|  | [optional] 

### Return type

[**ModelsAuthResponse**](ModelsAuthResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUser**
> ModelsUser createUser(createUserInput)

Register new user

### Example
```dart
import 'package:whisper_openapi_client_dart/api.dart';

final api_instance = AuthenticationApi();
final createUserInput = CreateUserInput(); // CreateUserInput | 

try {
    final result = api_instance.createUser(createUserInput);
    print(result);
} catch (e) {
    print('Exception when calling AuthenticationApi->createUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createUserInput** | [**CreateUserInput**](CreateUserInput.md)|  | [optional] 

### Return type

[**ModelsUser**](ModelsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refreshUserAccessToken**
> ModelsRefreshResponse refreshUserAccessToken(refreshUserAccessTokenInput)

Refresh access token.

### Example
```dart
import 'package:whisper_openapi_client_dart/api.dart';

final api_instance = AuthenticationApi();
final refreshUserAccessTokenInput = RefreshUserAccessTokenInput(); // RefreshUserAccessTokenInput | 

try {
    final result = api_instance.refreshUserAccessToken(refreshUserAccessTokenInput);
    print(result);
} catch (e) {
    print('Exception when calling AuthenticationApi->refreshUserAccessToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refreshUserAccessTokenInput** | [**RefreshUserAccessTokenInput**](RefreshUserAccessTokenInput.md)|  | [optional] 

### Return type

[**ModelsRefreshResponse**](ModelsRefreshResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

