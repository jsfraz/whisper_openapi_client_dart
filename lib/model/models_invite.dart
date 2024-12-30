//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsInvite {
  /// Returns a new [ModelsInvite] instance.
  ModelsInvite({
    required this.admin,
    required this.mail,
    required this.validUntil,
  });

  bool admin;

  String mail;

  DateTime validUntil;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsInvite &&
    other.admin == admin &&
    other.mail == mail &&
    other.validUntil == validUntil;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (admin.hashCode) +
    (mail.hashCode) +
    (validUntil.hashCode);

  @override
  String toString() => 'ModelsInvite[admin=$admin, mail=$mail, validUntil=$validUntil]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'admin'] = this.admin;
      json[r'mail'] = this.mail;
      json[r'validUntil'] = this.validUntil.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [ModelsInvite] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsInvite? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelsInvite[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelsInvite[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelsInvite(
        admin: mapValueOfType<bool>(json, r'admin')!,
        mail: mapValueOfType<String>(json, r'mail')!,
        validUntil: mapDateTime(json, r'validUntil', r'')!,
      );
    }
    return null;
  }

  static List<ModelsInvite> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsInvite>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsInvite.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsInvite> mapFromJson(dynamic json) {
    final map = <String, ModelsInvite>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsInvite.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsInvite-objects as value to a dart map
  static Map<String, List<ModelsInvite>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsInvite>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsInvite.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'admin',
    'mail',
    'validUntil',
  };
}

