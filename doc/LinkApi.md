# whisper_openapi_client_dart.api.LinkApi

## Load the API package
```dart
import 'package:whisper_openapi_client_dart/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**generateLinkCode**](LinkApi.md#generatelinkcode) | **GET** /api/link/generate | Generate link code
[**requestLink**](LinkApi.md#requestlink) | **POST** /api/link/request | Send link request to phone


# **generateLinkCode**
> ModelsLinkGenerateResponse generateLinkCode()

Generate link code

### Example
```dart
import 'package:whisper_openapi_client_dart/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = LinkApi();

try {
    final result = api_instance.generateLinkCode();
    print(result);
} catch (e) {
    print('Exception when calling LinkApi->generateLinkCode: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ModelsLinkGenerateResponse**](ModelsLinkGenerateResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **requestLink**
> HandlersMessageResponse requestLink(requestLinkInput)

Send link request to phone

### Example
```dart
import 'package:whisper_openapi_client_dart/api.dart';

final api_instance = LinkApi();
final requestLinkInput = RequestLinkInput(); // RequestLinkInput | 

try {
    final result = api_instance.requestLink(requestLinkInput);
    print(result);
} catch (e) {
    print('Exception when calling LinkApi->requestLink: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **requestLinkInput** | [**RequestLinkInput**](RequestLinkInput.md)|  | [optional] 

### Return type

[**HandlersMessageResponse**](HandlersMessageResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

