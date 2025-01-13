# whisper_openapi_client.api.UserApi

## Load the API package
```dart
import 'package:whisper_openapi_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**deleteUsers**](UserApi.md#deleteusers) | **PATCH** /api/user | Delete users
[**getAllUsers**](UserApi.md#getallusers) | **GET** /api/user/all | Get all users except the user
[**searchUsers**](UserApi.md#searchusers) | **GET** /api/user/search | Search users


# **deleteUsers**
> deleteUsers(deleteUsersInput)

Delete users

### Example
```dart
import 'package:whisper_openapi_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UserApi();
final deleteUsersInput = DeleteUsersInput(); // DeleteUsersInput | 

try {
    api_instance.deleteUsers(deleteUsersInput);
} catch (e) {
    print('Exception when calling UserApi->deleteUsers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **deleteUsersInput** | [**DeleteUsersInput**](DeleteUsersInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllUsers**
> List<ModelsUser> getAllUsers()

Get all users except the user

### Example
```dart
import 'package:whisper_openapi_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UserApi();

try {
    final result = api_instance.getAllUsers();
    print(result);
} catch (e) {
    print('Exception when calling UserApi->getAllUsers: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<ModelsUser>**](ModelsUser.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchUsers**
> List<ModelsUser> searchUsers(username)

Search users

### Example
```dart
import 'package:whisper_openapi_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = UserApi();
final username = username_example; // String | 

try {
    final result = api_instance.searchUsers(username);
    print(result);
} catch (e) {
    print('Exception when calling UserApi->searchUsers: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **String**|  | 

### Return type

[**List<ModelsUser>**](ModelsUser.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

