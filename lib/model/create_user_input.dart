//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateUserInput {
  /// Returns a new [CreateUserInput] instance.
  CreateUserInput({
    required this.inviteCode,
    required this.publicKey,
    required this.username,
  });

  String inviteCode;

  String publicKey;

  String username;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateUserInput &&
    other.inviteCode == inviteCode &&
    other.publicKey == publicKey &&
    other.username == username;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (inviteCode.hashCode) +
    (publicKey.hashCode) +
    (username.hashCode);

  @override
  String toString() => 'CreateUserInput[inviteCode=$inviteCode, publicKey=$publicKey, username=$username]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'inviteCode'] = this.inviteCode;
      json[r'publicKey'] = this.publicKey;
      json[r'username'] = this.username;
    return json;
  }

  /// Returns a new [CreateUserInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateUserInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateUserInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateUserInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateUserInput(
        inviteCode: mapValueOfType<String>(json, r'inviteCode')!,
        publicKey: mapValueOfType<String>(json, r'publicKey')!,
        username: mapValueOfType<String>(json, r'username')!,
      );
    }
    return null;
  }

  static List<CreateUserInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateUserInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateUserInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateUserInput> mapFromJson(dynamic json) {
    final map = <String, CreateUserInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateUserInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateUserInput-objects as value to a dart map
  static Map<String, List<CreateUserInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateUserInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateUserInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'inviteCode',
    'publicKey',
    'username',
  };
}

