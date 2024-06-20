# whisper_openapi_client.api.UsersApi

## Load the API package
```dart
import 'package:whisper_openapi_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**whoAmI**](UsersApi.md#whoami) | **GET** /api/user/whoAmI | Get current user.


# **whoAmI**
> ModelsUser whoAmI()

Get current user.

### Example
```dart
import 'package:whisper_openapi_client/api.dart';

final api_instance = UsersApi();

try {
    final result = api_instance.whoAmI();
    print(result);
} catch (e) {
    print('Exception when calling UsersApi->whoAmI: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ModelsUser**](ModelsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

