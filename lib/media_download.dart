import 'dart:typed_data';

import 'api.dart';

/// Hand-written companion to the generated MediaApi.
///
/// The generator maps an `application/octet-stream` response to `MultipartFile`,
/// which cannot carry raw bytes, so the encrypted download is exposed here.
extension MediaDownload on MediaApi {
  /// Returns the raw encrypted media bytes (`nonce || mac || ciphertext`).
  Future<Uint8List> downloadMediaBytes(String id) async {
    final response = await downloadMediaWithHttpInfo(id);
    if (response.statusCode >= 400) {
      throw ApiException(response.statusCode, response.body);
    }
    return response.bodyBytes;
  }
}
