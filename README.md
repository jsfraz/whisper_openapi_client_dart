# whisper_openapi_client_dart
Secure private self-hosted end-to-end encryption messaging server.

This Dart package is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Generator version: 7.13.0
- Build package: org.openapitools.codegen.languages.DartClientCodegen
For more information, please visit [https://josefraz.cz](https://josefraz.cz)

## Requirements

Dart 2.12 or later

## Installation & Usage

### Github
If this Dart package is published to Github, add the following dependency to your pubspec.yaml
```
dependencies:
  whisper_openapi_client_dart:
    git: https://github.com/GIT_USER_ID/GIT_REPO_ID.git
```

### Local
To use the package in your local drive, add the following dependency to your pubspec.yaml
```
dependencies:
  whisper_openapi_client_dart:
    path: /path/to/whisper_openapi_client_dart
```

## Tests

TODO

## Getting Started

Please follow the [installation procedure](#installation--usage) and then run the following:

```dart
import 'package:whisper_openapi_client_dart/api.dart';


final api_instance = AuthenticationApi();
final authUserInput = AuthUserInput(); // AuthUserInput | 

try {
    final result = api_instance.authUser(authUserInput);
    print(result);
} catch (e) {
    print('Exception when calling AuthenticationApi->authUser: $e\n');
}

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost:8080*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*AuthenticationApi* | [**authUser**](doc//AuthenticationApi.md#authuser) | **POST** /api/auth | User auth
*AuthenticationApi* | [**createUser**](doc//AuthenticationApi.md#createuser) | **POST** /api/auth/register | Register new user
*AuthenticationApi* | [**refreshUserAccessToken**](doc//AuthenticationApi.md#refreshuseraccesstoken) | **POST** /api/auth/refresh | Refresh access token.
*FirebaseApi* | [**setFirebaseToken**](doc//FirebaseApi.md#setfirebasetoken) | **PATCH** /api/firebase/token | Set client Firebase token
*InviteApi* | [**createInvite**](doc//InviteApi.md#createinvite) | **POST** /api/invite | Create registration invite
*InviteApi* | [**getAllInvites**](doc//InviteApi.md#getallinvites) | **GET** /api/invite/all | Get all active registration invites
*UserApi* | [**deleteUsers**](doc//UserApi.md#deleteusers) | **PATCH** /api/user | Delete users
*UserApi* | [**getAllUsers**](doc//UserApi.md#getallusers) | **GET** /api/user/all | Get all users except the user
*UserApi* | [**getUserById**](doc//UserApi.md#getuserbyid) | **GET** /api/user | Get user by ID
*UserApi* | [**searchUsers**](doc//UserApi.md#searchusers) | **GET** /api/user/search | Search users
*WebSocketAuthenticationApi* | [**webSocketAuth**](doc//WebSocketAuthenticationApi.md#websocketauth) | **POST** /api/wsauth | WebSocket auth


## Documentation For Models

 - [AuthUserInput](doc//AuthUserInput.md)
 - [CreateInviteInput](doc//CreateInviteInput.md)
 - [CreateUserInput](doc//CreateUserInput.md)
 - [DeleteUsersInput](doc//DeleteUsersInput.md)
 - [ModelsAuthResponse](doc//ModelsAuthResponse.md)
 - [ModelsInvite](doc//ModelsInvite.md)
 - [ModelsRefreshResponse](doc//ModelsRefreshResponse.md)
 - [ModelsUser](doc//ModelsUser.md)
 - [ModelsWsAuthResponse](doc//ModelsWsAuthResponse.md)
 - [RefreshUserAccessTokenInput](doc//RefreshUserAccessTokenInput.md)
 - [SetFirebaseTokenInput](doc//SetFirebaseTokenInput.md)


## Documentation For Authorization


Authentication schemes defined for the API:
### bearerAuth

- **Type**: HTTP Bearer authentication


## Author

razj@josefraz.cz

