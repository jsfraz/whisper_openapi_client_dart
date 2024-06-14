//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsAuthResponse {
  /// Returns a new [ModelsAuthResponse] instance.
  ModelsAuthResponse({
    required this.accessToken,
    required this.encryptedMasterKey,
    required this.encryptedPrivateKey,
    required this.refreshToken,
    required this.user,
  });

  String accessToken;

  String encryptedMasterKey;

  String encryptedPrivateKey;

  String refreshToken;

  ModelsUser user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsAuthResponse &&
    other.accessToken == accessToken &&
    other.encryptedMasterKey == encryptedMasterKey &&
    other.encryptedPrivateKey == encryptedPrivateKey &&
    other.refreshToken == refreshToken &&
    other.user == user;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accessToken.hashCode) +
    (encryptedMasterKey.hashCode) +
    (encryptedPrivateKey.hashCode) +
    (refreshToken.hashCode) +
    (user.hashCode);

  @override
  String toString() => 'ModelsAuthResponse[accessToken=$accessToken, encryptedMasterKey=$encryptedMasterKey, encryptedPrivateKey=$encryptedPrivateKey, refreshToken=$refreshToken, user=$user]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'accessToken'] = this.accessToken;
      json[r'encryptedMasterKey'] = this.encryptedMasterKey;
      json[r'encryptedPrivateKey'] = this.encryptedPrivateKey;
      json[r'refreshToken'] = this.refreshToken;
      json[r'user'] = this.user;
    return json;
  }

  /// Returns a new [ModelsAuthResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsAuthResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelsAuthResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelsAuthResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelsAuthResponse(
        accessToken: mapValueOfType<String>(json, r'accessToken')!,
        encryptedMasterKey: mapValueOfType<String>(json, r'encryptedMasterKey')!,
        encryptedPrivateKey: mapValueOfType<String>(json, r'encryptedPrivateKey')!,
        refreshToken: mapValueOfType<String>(json, r'refreshToken')!,
        user: ModelsUser.fromJson(json[r'user'])!,
      );
    }
    return null;
  }

  static List<ModelsAuthResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsAuthResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsAuthResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsAuthResponse> mapFromJson(dynamic json) {
    final map = <String, ModelsAuthResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsAuthResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsAuthResponse-objects as value to a dart map
  static Map<String, List<ModelsAuthResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsAuthResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsAuthResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'accessToken',
    'encryptedMasterKey',
    'encryptedPrivateKey',
    'refreshToken',
    'user',
  };
}

