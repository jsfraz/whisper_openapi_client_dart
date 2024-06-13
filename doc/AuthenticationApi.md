# whisper_openapi_client.api.AuthenticationApi

## Load the API package
```dart
import 'package:whisper_openapi_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**registerUser**](AuthenticationApi.md#registeruser) | **POST** /api/auth/register | Creates new account and sends verification mail.
[**verifyUser**](AuthenticationApi.md#verifyuser) | **PATCH** /api/auth/verify | Verifies account.


# **registerUser**
> registerUser(registerUserInput)

Creates new account and sends verification mail.

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

