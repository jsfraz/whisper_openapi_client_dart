# whisper_openapi_client_dart.api.WebSocketAuthenticationApi

## Load the API package
```dart
import 'package:whisper_openapi_client_dart/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**webSocketAuth**](WebSocketAuthenticationApi.md#websocketauth) | **POST** /api/wsauth | WebSocket auth


# **webSocketAuth**
> ModelsWsAuthResponse webSocketAuth()

WebSocket auth

### Example
```dart
import 'package:whisper_openapi_client_dart/api.dart';

final api_instance = WebSocketAuthenticationApi();

try {
    final result = api_instance.webSocketAuth();
    print(result);
} catch (e) {
    print('Exception when calling WebSocketAuthenticationApi->webSocketAuth: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ModelsWsAuthResponse**](ModelsWsAuthResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

