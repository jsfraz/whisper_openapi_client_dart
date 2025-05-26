# whisper_openapi_client_dart.api.FirebaseApi

## Load the API package
```dart
import 'package:whisper_openapi_client_dart/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**setFirebaseToken**](FirebaseApi.md#setfirebasetoken) | **PATCH** /api/firebase/token | Set client Firebase token


# **setFirebaseToken**
> setFirebaseToken(setFirebaseTokenInput)

Set client Firebase token

### Example
```dart
import 'package:whisper_openapi_client_dart/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = FirebaseApi();
final setFirebaseTokenInput = SetFirebaseTokenInput(); // SetFirebaseTokenInput | 

try {
    api_instance.setFirebaseToken(setFirebaseTokenInput);
} catch (e) {
    print('Exception when calling FirebaseApi->setFirebaseToken: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **setFirebaseTokenInput** | [**SetFirebaseTokenInput**](SetFirebaseTokenInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

