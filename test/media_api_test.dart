//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

import 'package:whisper_openapi_client_dart/api.dart';
import 'package:test/test.dart';


/// tests for MediaApi
void main() {
  // final instance = MediaApi();

  group('tests for MediaApi', () {
    // Confirm media download and delete it
    //
    // Confirms the encrypted media file has been downloaded and deletes it from the server. Only the intended receiver may confirm. Idempotent.
    //
    //Future confirmMediaDownload(String id) async
    test('test confirmMediaDownload', () async {
      // TODO
    });

    // Download encrypted media file by id
    //
    // Downloads the encrypted media file. Only the intended receiver may download it. The file is retained until the client confirms the download or its TTL expires.
    //
    //Future<MultipartFile> downloadMedia(String id) async
    test('test downloadMedia', () async {
      // TODO
    });

    // Upload encrypted media file
    //
    // Uploads an end-to-end encrypted media file bound to the receiver. The server stores only the ciphertext. Returns the media id.
    //
    //Future<ModelsMediaUploadResponse> uploadMedia(MultipartFile file, String receiverId) async
    test('test uploadMedia', () async {
      // TODO
    });

  });
}
