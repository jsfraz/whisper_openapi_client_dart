//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RegisterUserInput {
  /// Returns a new [RegisterUserInput] instance.
  RegisterUserInput({
    required this.mail,
    required this.password,
    required this.username,
  });

  String mail;

  String password;

  String username;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RegisterUserInput &&
    other.mail == mail &&
    other.password == password &&
    other.username == username;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (mail.hashCode) +
    (password.hashCode) +
    (username.hashCode);

  @override
  String toString() => 'RegisterUserInput[mail=$mail, password=$password, username=$username]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'mail'] = this.mail;
      json[r'password'] = this.password;
      json[r'username'] = this.username;
    return json;
  }

  /// Returns a new [RegisterUserInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RegisterUserInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RegisterUserInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RegisterUserInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RegisterUserInput(
        mail: mapValueOfType<String>(json, r'mail')!,
        password: mapValueOfType<String>(json, r'password')!,
        username: mapValueOfType<String>(json, r'username')!,
      );
    }
    return null;
  }

  static List<RegisterUserInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RegisterUserInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RegisterUserInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RegisterUserInput> mapFromJson(dynamic json) {
    final map = <String, RegisterUserInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RegisterUserInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RegisterUserInput-objects as value to a dart map
  static Map<String, List<RegisterUserInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RegisterUserInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RegisterUserInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'mail',
    'password',
    'username',
  };
}

