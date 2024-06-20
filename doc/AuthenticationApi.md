# whisper_openapi_client.api.AuthenticationApi

## Load the API package
```dart
import 'package:whisper_openapi_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**loginUser**](AuthenticationApi.md#loginuser) | **POST** /api/auth/login | User login.
[**refreshUserAccessToken**](AuthenticationApi.md#refreshuseraccesstoken) | **GET** /api/auth/refresh | Refresh access token.
[**registerUser**](AuthenticationApi.md#registeruser) | **POST** /api/auth/register | Creates new account.
[**verifyUser**](AuthenticationApi.md#verifyuser) | **PATCH** /api/auth/verify | Verifies account.


# **loginUser**
> ModelsAuthResponse loginUser(loginUserInput)

User login.

### Example
```dart
import 'package:whisper_openapi_client/api.dart';

final api_instance = AuthenticationApi();
final loginUserInput = LoginUserInput(); // LoginUserInput | 

try {
    final result = api_instance.loginUser(loginUserInput);
    print(result);
} catch (e) {
    print('Exception when calling AuthenticationApi->loginUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginUserInput** | [**LoginUserInput**](LoginUserInput.md)|  | [optional] 

### Return type

[**ModelsAuthResponse**](ModelsAuthResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **refreshUserAccessToken**
> ModelsRefreshResponse refreshUserAccessToken(refreshToken)

Refresh access token.

### Example
```dart
import 'package:whisper_openapi_client/api.dart';

final api_instance = AuthenticationApi();
final refreshToken = JWT_REFRESH_TOKEN; // String | 

try {
    final result = api_instance.refreshUserAccessToken(refreshToken);
    print(result);
} catch (e) {
    print('Exception when calling AuthenticationApi->refreshUserAccessToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **refreshToken** | **String**|  | 

### Return type

[**ModelsRefreshResponse**](ModelsRefreshResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerUser**
> registerUser(registerUserInput)

Creates new account.

### Example
```dart
import 'package:whisper_openapi_client/api.dart';

final api_instance = AuthenticationApi();
final registerUserInput = RegisterUserInput(); // RegisterUserInput | 

try {
    api_instance.registerUser(registerUserInput);
} catch (e) {
    print('Exception when calling AuthenticationApi->registerUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registerUserInput** | [**RegisterUserInput**](RegisterUserInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **verifyUser**
> verifyUser(verifyUserInput)

Verifies account.

### Example
```dart
import 'package:whisper_openapi_client/api.dart';

final api_instance = AuthenticationApi();
final verifyUserInput = VerifyUserInput(); // VerifyUserInput | 

try {
    api_instance.verifyUser(verifyUserInput);
} catch (e) {
    print('Exception when calling AuthenticationApi->verifyUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **verifyUserInput** | [**VerifyUserInput**](VerifyUserInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

