# whisper_openapi_client.api.RegisterApi

## Load the API package
```dart
import 'package:whisper_openapi_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUser**](RegisterApi.md#createuser) | **POST** /api/register | Register new user


# **createUser**
> ModelsUser createUser(createUserInput)

Register new user

### Example
```dart
import 'package:whisper_openapi_client/api.dart';

final api_instance = RegisterApi();
final createUserInput = CreateUserInput(); // CreateUserInput | 

try {
    final result = api_instance.createUser(createUserInput);
    print(result);
} catch (e) {
    print('Exception when calling RegisterApi->createUser: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createUserInput** | [**CreateUserInput**](CreateUserInput.md)|  | [optional] 

### Return type

[**ModelsUser**](ModelsUser.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

