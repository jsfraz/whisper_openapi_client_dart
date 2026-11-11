# whisper_openapi_client_dart.api.MediaApi

## Load the API package
```dart
import 'package:whisper_openapi_client_dart/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**confirmMediaDownload**](MediaApi.md#confirmmediadownload) | **DELETE** /api/media/{id} | Confirm media download and delete it
[**downloadMedia**](MediaApi.md#downloadmedia) | **GET** /api/media/{id} | Download encrypted media file by id
[**uploadMedia**](MediaApi.md#uploadmedia) | **POST** /api/media | Upload encrypted media file


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
final receiverId = 789; // int | Id of the user the media is sent to.

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
 **receiverId** | **int**| Id of the user the media is sent to. | 

### Return type

[**ModelsMediaUploadResponse**](ModelsMediaUploadResponse.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

