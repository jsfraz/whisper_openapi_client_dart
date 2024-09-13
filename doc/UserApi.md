# whisper_openapi_client.api.UserApi

## Load the API package
```dart
import 'package:whisper_openapi_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUser**](UserApi.md#createuser) | **POST** /api/user | Create user


# **createUser**
> createUser(createUserInput)

Create user

**Public key _MUST_ be passed without the newline characters.**

### Example
```dart
import 'package:whisper_openapi_client/api.dart';

final api_instance = UserApi();
final createUserInput = CreateUserInput(); // CreateUserInput | 

try {
    api_instance.createUser(createUserInput);
} catch (e) {
    print('Exception when calling UserApi->createUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createUserInput** | [**CreateUserInput**](CreateUserInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

