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
[**editMessage**](MessagesApi.md#editmessage) | **PATCH** /api/messages/{id} | Edit my message
[**getHistory**](MessagesApi.md#gethistory) | **GET** /api/messages | Get message history
[**hideMessage**](MessagesApi.md#hidemessage) | **POST** /api/messages/{id}/hide | Hide a message for me
[**pinMessage**](MessagesApi.md#pinmessage) | **PUT** /api/messages/{id}/pin | Pin a message
[**removeReaction**](MessagesApi.md#removereaction) | **DELETE** /api/messages/{id}/reaction | Remove my reaction
[**setReaction**](MessagesApi.md#setreaction) | **PUT** /api/messages/{id}/reaction | React to a message
[**unpinMessage**](MessagesApi.md#unpinmessage) | **DELETE** /api/messages/{id}/pin | Unpin a message


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

Erases the ciphertext of a message the caller sent, unpins it and logs the tombstone, so both sides learn about it. Idempotent.

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

# **editMessage**
> ModelsEditMessageResponse editMessage(id, editMessageInput)

Edit my message

Replaces the ciphertext of a message the caller sent with a new version and stamps the edit. Both sides learn about it through sync and a live edit frame. The server never sees the plaintext.

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
final editMessageInput = EditMessageInput(); // EditMessageInput | 

try {
    final result = api_instance.editMessage(id, editMessageInput);
    print(result);
} catch (e) {
    print('Exception when calling MessagesApi->editMessage: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The message id | 
 **editMessageInput** | [**EditMessageInput**](EditMessageInput.md)|  | [optional] 

### Return type

[**ModelsEditMessageResponse**](ModelsEditMessageResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
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

# **pinMessage**
> pinMessage(id)

Pin a message

Pins a message of the chat for both participants. Anyone in the conversation may pin. Idempotent.

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
    api_instance.pinMessage(id);
} catch (e) {
    print('Exception when calling MessagesApi->pinMessage: $e\n');
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

# **removeReaction**
> removeReaction(id)

Remove my reaction

Clears the caller's reaction on a message. Idempotent.

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
    api_instance.removeReaction(id);
} catch (e) {
    print('Exception when calling MessagesApi->removeReaction: $e\n');
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

# **setReaction**
> setReaction(id, setReactionInput)

React to a message

Stores the caller's encrypted reaction on a message. A later reaction replaces it; both sides learn about it through sync and a live reaction frame.

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
final setReactionInput = SetReactionInput(); // SetReactionInput | 

try {
    api_instance.setReaction(id, setReactionInput);
} catch (e) {
    print('Exception when calling MessagesApi->setReaction: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| The message id | 
 **setReactionInput** | [**SetReactionInput**](SetReactionInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **unpinMessage**
> unpinMessage(id)

Unpin a message

Removes a pin for both participants. Idempotent.

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
    api_instance.unpinMessage(id);
} catch (e) {
    print('Exception when calling MessagesApi->unpinMessage: $e\n');
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

