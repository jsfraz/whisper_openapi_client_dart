# whisper_openapi_client_dart.api.MessagesApi

## Load the API package
```dart
import 'package:whisper_openapi_client_dart/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getHistory**](MessagesApi.md#gethistory) | **GET** /api/messages | Get message history


# **getHistory**
> ModelsHistoryPage getHistory(peerId, before, limit)

Get message history

One page of a conversation from the ciphertext archive, newest first. The server never sees the plaintext.

### Example
```dart
import 'package:whisper_openapi_client_dart/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MessagesApi();
final peerId = peerId_example; // String | The other participant of the conversation
final before = before_example; // String | Opaque cursor from the previous page
final limit = 56; // int | Page size, 1-200 (default 50)

try {
    final result = api_instance.getHistory(peerId, before, limit);
    print(result);
} catch (e) {
    print('Exception when calling MessagesApi->getHistory: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **peerId** | **String**| The other participant of the conversation | 
 **before** | **String**| Opaque cursor from the previous page | [optional] 
 **limit** | **int**| Page size, 1-200 (default 50) | [optional] 

### Return type

[**ModelsHistoryPage**](ModelsHistoryPage.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

