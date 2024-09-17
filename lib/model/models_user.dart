//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsUser {
  /// Returns a new [ModelsUser] instance.
  ModelsUser({
    required this.admin,
    required this.id,
    required this.mail,
    required this.publicKey,
    required this.username,
  });

  bool admin;

  int id;

  String mail;

  String publicKey;

  String username;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsUser &&
    other.admin == admin &&
    other.id == id &&
    other.mail == mail &&
    other.publicKey == publicKey &&
    other.username == username;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (admin.hashCode) +
    (id.hashCode) +
    (mail.hashCode) +
    (publicKey.hashCode) +
    (username.hashCode);

  @override
  String toString() => 'ModelsUser[admin=$admin, id=$id, mail=$mail, publicKey=$publicKey, username=$username]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'admin'] = this.admin;
      json[r'id'] = this.id;
      json[r'mail'] = this.mail;
      json[r'publicKey'] = this.publicKey;
      json[r'username'] = this.username;
    return json;
  }

  /// Returns a new [ModelsUser] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsUser? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelsUser[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelsUser[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelsUser(
        admin: mapValueOfType<bool>(json, r'admin')!,
        id: mapValueOfType<int>(json, r'id')!,
        mail: mapValueOfType<String>(json, r'mail')!,
        publicKey: mapValueOfType<String>(json, r'publicKey')!,
        username: mapValueOfType<String>(json, r'username')!,
      );
    }
    return null;
  }

  static List<ModelsUser> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsUser>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsUser.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsUser> mapFromJson(dynamic json) {
    final map = <String, ModelsUser>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsUser.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsUser-objects as value to a dart map
  static Map<String, List<ModelsUser>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsUser>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsUser.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'admin',
    'id',
    'mail',
    'publicKey',
    'username',
  };
}

