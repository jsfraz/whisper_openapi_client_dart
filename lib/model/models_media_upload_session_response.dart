//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsMediaUploadSessionResponse {
  /// Returns a new [ModelsMediaUploadSessionResponse] instance.
  ModelsMediaUploadSessionResponse({
    required this.id,
    required this.received,
    required this.totalSize,
  });

  String id;

  /// Bytes the server holds.
  int received;

  /// Ciphertext length the client declared.
  int totalSize;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsMediaUploadSessionResponse &&
    other.id == id &&
    other.received == received &&
    other.totalSize == totalSize;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (received.hashCode) +
    (totalSize.hashCode);

  @override
  String toString() => 'ModelsMediaUploadSessionResponse[id=$id, received=$received, totalSize=$totalSize]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'received'] = this.received;
      json[r'totalSize'] = this.totalSize;
    return json;
  }

  /// Returns a new [ModelsMediaUploadSessionResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsMediaUploadSessionResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "ModelsMediaUploadSessionResponse[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "ModelsMediaUploadSessionResponse[id]" has a null value in JSON.');
        assert(json.containsKey(r'received'), 'Required key "ModelsMediaUploadSessionResponse[received]" is missing from JSON.');
        assert(json[r'received'] != null, 'Required key "ModelsMediaUploadSessionResponse[received]" has a null value in JSON.');
        assert(json.containsKey(r'totalSize'), 'Required key "ModelsMediaUploadSessionResponse[totalSize]" is missing from JSON.');
        assert(json[r'totalSize'] != null, 'Required key "ModelsMediaUploadSessionResponse[totalSize]" has a null value in JSON.');
        return true;
      }());

      return ModelsMediaUploadSessionResponse(
        id: mapValueOfType<String>(json, r'id')!,
        received: mapValueOfType<int>(json, r'received')!,
        totalSize: mapValueOfType<int>(json, r'totalSize')!,
      );
    }
    return null;
  }

  static List<ModelsMediaUploadSessionResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsMediaUploadSessionResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsMediaUploadSessionResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsMediaUploadSessionResponse> mapFromJson(dynamic json) {
    final map = <String, ModelsMediaUploadSessionResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsMediaUploadSessionResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsMediaUploadSessionResponse-objects as value to a dart map
  static Map<String, List<ModelsMediaUploadSessionResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsMediaUploadSessionResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsMediaUploadSessionResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'received',
    'totalSize',
  };
}

