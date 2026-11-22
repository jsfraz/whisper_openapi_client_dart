# whisper_openapi_client_dart.api.MediaApi

## Load the API package
```dart
import 'package:whisper_openapi_client_dart/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**completeMediaUpload**](MediaApi.md#completemediaupload) | **POST** /api/media/uploads/{id}/complete | Complete a chunked upload
[**confirmMediaDownload**](MediaApi.md#confirmmediadownload) | **DELETE** /api/media/{id} | Confirm media download and delete it
[**createMediaUpload**](MediaApi.md#createmediaupload) | **POST** /api/media/uploads | Start a chunked upload
[**downloadMedia**](MediaApi.md#downloadmedia) | **GET** /api/media/{id} | Download encrypted media file by id
[**getMediaUpload**](MediaApi.md#getmediaupload) | **GET** /api/media/uploads/{id} | Get chunked upload state
[**uploadMedia**](MediaApi.md#uploadmedia) | **POST** /api/media | Upload encrypted media file
[**uploadMediaChunk**](MediaApi.md#uploadmediachunk) | **PUT** /api/media/uploads/{id} | Upload one chunk


# **completeMediaUpload**
> ModelsMediaUploadResponse completeMediaUpload(id)

Complete a chunked upload

Turns a fully received chunked upload into a media file the receiver can download. Only the sender may complete it, and only once every byte is in.

### Example
```dart
import 'package:whisper_openapi_client_dart/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MediaApi();
final id = id_example; // String | 

try {
    final result = api_instance.completeMediaUpload(id);
    print(result);
} catch (e) {
    print('Exception when calling MediaApi->completeMediaUpload: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ModelsMediaUploadResponse**](ModelsMediaUploadResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **confirmMediaDownload**
> confirmMediaDownload(id)

Confirm media download and delete it

Confirms the encrypted media file has been downloaded and deletes it from the server. Only the intended receiver may confirm. Idempotent.

### Example
```dart
import 'package:whisper_openapi_client_dart/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MediaApi();
final id = id_example; // String | 

try {
    api_instance.confirmMediaDownload(id);
} catch (e) {
    print('Exception when calling MediaApi->confirmMediaDownload: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createMediaUpload**
> ModelsMediaUploadSessionResponse createMediaUpload(createMediaUploadInput)

Start a chunked upload

Starts a resumable upload of an end-to-end encrypted media file bound to the receiver. Returns the upload id and the offset the server holds.

### Example
```dart
import 'package:whisper_openapi_client_dart/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MediaApi();
final createMediaUploadInput = CreateMediaUploadInput(); // CreateMediaUploadInput | 

try {
    final result = api_instance.createMediaUpload(createMediaUploadInput);
    print(result);
} catch (e) {
    print('Exception when calling MediaApi->createMediaUpload: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createMediaUploadInput** | [**CreateMediaUploadInput**](CreateMediaUploadInput.md)|  | [optional] 

### Return type

[**ModelsMediaUploadSessionResponse**](ModelsMediaUploadSessionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadMedia**
> MultipartFile downloadMedia(id)

Download encrypted media file by id

Downloads the encrypted media file. Only the intended receiver may download it. The file is retained until the client confirms the download or its TTL expires.

### Example
```dart
import 'package:whisper_openapi_client_dart/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MediaApi();
final id = id_example; // String | 

try {
    final result = api_instance.downloadMedia(id);
    print(result);
} catch (e) {
    print('Exception when calling MediaApi->downloadMedia: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**MultipartFile**](MultipartFile.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/octet-stream, application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMediaUpload**
> ModelsMediaUploadSessionResponse getMediaUpload(id)

Get chunked upload state

Returns how much of the encrypted media file the server holds, so a client can resume a broken upload.

### Example
```dart
import 'package:whisper_openapi_client_dart/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MediaApi();
final id = id_example; // String | 

try {
    final result = api_instance.getMediaUpload(id);
    print(result);
} catch (e) {
    print('Exception when calling MediaApi->getMediaUpload: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 

### Return type

[**ModelsMediaUploadSessionResponse**](ModelsMediaUploadSessionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadMedia**
> ModelsMediaUploadResponse uploadMedia(file, receiverId)

Upload encrypted media file

Uploads an end-to-end encrypted media file bound to the receiver. The server stores only the ciphertext. Returns the media id.

### Example
```dart
import 'package:whisper_openapi_client_dart/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MediaApi();
final file = BINARY_DATA_HERE; // MultipartFile | The encrypted media blob (nonce || mac || ciphertext). Its field name must be file.
final receiverId = 38400000-8cf0-11bd-b23e-10b96e4ef00d; // String | Id of the user the media is sent to.

try {
    final result = api_instance.uploadMedia(file, receiverId);
    print(result);
} catch (e) {
    print('Exception when calling MediaApi->uploadMedia: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **MultipartFile**| The encrypted media blob (nonce || mac || ciphertext). Its field name must be file. | 
 **receiverId** | **String**| Id of the user the media is sent to. | 

### Return type

[**ModelsMediaUploadResponse**](ModelsMediaUploadResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **uploadMediaChunk**
> ModelsMediaUploadSessionResponse uploadMediaChunk(id, uploadOffset, chunk)

Upload one chunk

Appends one chunk of the encrypted media file at the Upload-Offset header. A chunk at a different offset is refused with 409 and the offset the server holds.

### Example
```dart
import 'package:whisper_openapi_client_dart/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = MediaApi();
final id = id_example; // String | 
final uploadOffset = 789; // int | Byte offset this chunk starts at; must equal the received count.
final chunk = BINARY_DATA_HERE; // MultipartFile | One slice of the encrypted media blob. Its field name must be chunk.

try {
    final result = api_instance.uploadMediaChunk(id, uploadOffset, chunk);
    print(result);
} catch (e) {
    print('Exception when calling MediaApi->uploadMediaChunk: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**|  | 
 **uploadOffset** | **int**| Byte offset this chunk starts at; must equal the received count. | 
 **chunk** | **MultipartFile**| One slice of the encrypted media blob. Its field name must be chunk. | 

### Return type

[**ModelsMediaUploadSessionResponse**](ModelsMediaUploadSessionResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

