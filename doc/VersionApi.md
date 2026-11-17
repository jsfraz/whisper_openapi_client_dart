# whisper_openapi_client_dart.api.VersionApi

## Load the API package
```dart
import 'package:whisper_openapi_client_dart/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getVersion**](VersionApi.md#getversion) | **GET** /api/version | Get server version


# **getVersion**
> ModelsVersionResponse getVersion()

Get server version

Returns the server build, the API version and the oldest client it accepts.

### Example
```dart
import 'package:whisper_openapi_client_dart/api.dart';

final api_instance = VersionApi();

try {
    final result = api_instance.getVersion();
    print(result);
} catch (e) {
    print('Exception when calling VersionApi->getVersion: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ModelsVersionResponse**](ModelsVersionResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

