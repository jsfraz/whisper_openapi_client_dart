# whisper_openapi_client_dart.api.MessagesApi

## Load the API package
```dart
import 'package:whisper_openapi_client_dart/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**clearConversation**](MessagesApi.md#clearconversation) | **DELETE** /api/messages | Delete a conversation for me
[**deleteMessage**](MessagesApi.md#deletemessage) | **DELETE** /api/messages/{id} | Delete my message for everyone
[**getHistory**](MessagesApi.md#gethistory) | **GET** /api/messages | Get message history
[**hideMessage**](MessagesApi.md#hidemessage) | **POST** /api/messages/{id}/hide | Hide a message for me


# **clearConversation**
> ModelsClearConversationResponse clearConversation(peerId, before)

Delete a conversation for me

Deletes a conversation for the calling account on every device: everything sent at or before the cut stops being visible to it. The other participant keeps the archive. Idempotent.

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
final before = before_example; // String | RFC3339 instant to delete up to (default: now)

try {
    final result = api_instance.clearConversation(peerId, before);
    print(result);
} catch (e) {
    print('Exception when calling MessagesApi->clearConversation: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **peerId** | **String**| The other participant of the conversation | 
 **before** | **String**| RFC3339 instant to delete up to (default: now) | [optional] 

### Return type

[**ModelsClearConversationResponse**](ModelsClearConversationResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteMessage**
> deleteMessage(id)

Delete my message for everyone

Erases the ciphertext of a message the caller sent and leaves a tombstone, so the other side learns about it on the next sync. Idempotent.

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
final id = id_example; // String | The message id

try {
    api_instance.deleteMessage(id);
} catch (e) {
    print('Exception when calling MessagesApi->deleteMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The message id | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

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

# **hideMessage**
> hideMessage(id)

Hide a message for me

Removes one message from the calling account on every device. The other participant keeps it. Idempotent.

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
final id = id_example; // String | The message id

try {
    api_instance.hideMessage(id);
} catch (e) {
    print('Exception when calling MessagesApi->hideMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The message id | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

