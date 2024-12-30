# whisper_openapi_client.api.InviteApi

## Load the API package
```dart
import 'package:whisper_openapi_client/api.dart';
```

All URIs are relative to *http://localhost:8080*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createInvite**](InviteApi.md#createinvite) | **POST** /api/invite | Create registration invite
[**getAllInvites**](InviteApi.md#getallinvites) | **GET** /api/invite/all | Get all active registration invites


# **createInvite**
> createInvite(createInviteInput)

Create registration invite

### Example
```dart
import 'package:whisper_openapi_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = InviteApi();
final createInviteInput = CreateInviteInput(); // CreateInviteInput | 

try {
    api_instance.createInvite(createInviteInput);
} catch (e) {
    print('Exception when calling InviteApi->createInvite: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createInviteInput** | [**CreateInviteInput**](CreateInviteInput.md)|  | [optional] 

### Return type

void (empty response body)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAllInvites**
> List<ModelsInvite> getAllInvites()

Get all active registration invites

### Example
```dart
import 'package:whisper_openapi_client/api.dart';
// TODO Configure HTTP Bearer authorization: bearerAuth
// Case 1. Use String Token
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken('YOUR_ACCESS_TOKEN');
// Case 2. Use Function which generate token.
// String yourTokenGeneratorFunction() { ... }
//defaultApiClient.getAuthentication<HttpBearerAuth>('bearerAuth').setAccessToken(yourTokenGeneratorFunction);

final api_instance = InviteApi();

try {
    final result = api_instance.getAllInvites();
    print(result);
} catch (e) {
    print('Exception when calling InviteApi->getAllInvites: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**List<ModelsInvite>**](ModelsInvite.md)

### Authorization

[bearerAuth](../README.md#bearerAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

