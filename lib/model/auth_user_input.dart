//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class AuthUserInput {
  /// Returns a new [AuthUserInput] instance.
  AuthUserInput({
    required this.deviceId,
    required this.label,
    required this.platform,
    required this.token,
  });

  String deviceId;

  String label;

  String platform;

  String token;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AuthUserInput &&
    other.deviceId == deviceId &&
    other.label == label &&
    other.platform == platform &&
    other.token == token;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (deviceId.hashCode) +
    (label.hashCode) +
    (platform.hashCode) +
    (token.hashCode);

  @override
  String toString() => 'AuthUserInput[deviceId=$deviceId, label=$label, platform=$platform, token=$token]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'deviceId'] = this.deviceId;
      json[r'label'] = this.label;
      json[r'platform'] = this.platform;
      json[r'token'] = this.token;
    return json;
  }

  /// Returns a new [AuthUserInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AuthUserInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'deviceId'), 'Required key "AuthUserInput[deviceId]" is missing from JSON.');
        assert(json[r'deviceId'] != null, 'Required key "AuthUserInput[deviceId]" has a null value in JSON.');
        assert(json.containsKey(r'label'), 'Required key "AuthUserInput[label]" is missing from JSON.');
        assert(json[r'label'] != null, 'Required key "AuthUserInput[label]" has a null value in JSON.');
        assert(json.containsKey(r'platform'), 'Required key "AuthUserInput[platform]" is missing from JSON.');
        assert(json[r'platform'] != null, 'Required key "AuthUserInput[platform]" has a null value in JSON.');
        assert(json.containsKey(r'token'), 'Required key "AuthUserInput[token]" is missing from JSON.');
        assert(json[r'token'] != null, 'Required key "AuthUserInput[token]" has a null value in JSON.');
        return true;
      }());

      return AuthUserInput(
        deviceId: mapValueOfType<String>(json, r'deviceId')!,
        label: mapValueOfType<String>(json, r'label')!,
        platform: mapValueOfType<String>(json, r'platform')!,
        token: mapValueOfType<String>(json, r'token')!,
      );
    }
    return null;
  }

  static List<AuthUserInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AuthUserInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AuthUserInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AuthUserInput> mapFromJson(dynamic json) {
    final map = <String, AuthUserInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AuthUserInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AuthUserInput-objects as value to a dart map
  static Map<String, List<AuthUserInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AuthUserInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AuthUserInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'deviceId',
    'label',
    'platform',
    'token',
  };
}

