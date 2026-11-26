# shept_openapi_client_dart.api.ChatsApi

## Load the API package
```dart
import 'package:shept_openapi_client_dart/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**setReadCursor**](ChatsApi.md#setreadcursor) | **PUT** /api/chats/{peerId}/read | Mark a conversation read


# **setReadCursor**
> setReadCursor(peerId, setReadCursorInput)

Mark a conversation read

Moves the caller's read cursor of a conversation and tells the other participant. Only the instant is stored: the server never learns which message was opened, and a client that keeps receipts off never calls this. Idempotent, and it never moves backwards.

### Example
```dart
import 'package:shept_openapi_client_dart/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = ChatsApi();
final peerId = peerId_example; // String | The other participant of the conversation
final setReadCursorInput = SetReadCursorInput(); // SetReadCursorInput | 

try {
    api_instance.setReadCursor(peerId, setReadCursorInput);
} catch (e) {
    print('Exception when calling ChatsApi->setReadCursor: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **peerId** | **String**| The other participant of the conversation | 
 **setReadCursorInput** | [**SetReadCursorInput**](SetReadCursorInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

