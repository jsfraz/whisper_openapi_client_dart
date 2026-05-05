//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class CreateInviteInput {
  /// Returns a new [CreateInviteInput] instance.
  CreateInviteInput({
    required this.mail,
  });

  String mail;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateInviteInput &&
    other.mail == mail;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (mail.hashCode);

  @override
  String toString() => 'CreateInviteInput[mail=$mail]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'mail'] = this.mail;
    return json;
  }

  /// Returns a new [CreateInviteInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateInviteInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateInviteInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateInviteInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateInviteInput(
        mail: mapValueOfType<String>(json, r'mail')!,
      );
    }
    return null;
  }

  static List<CreateInviteInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateInviteInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateInviteInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateInviteInput> mapFromJson(dynamic json) {
    final map = <String, CreateInviteInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateInviteInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateInviteInput-objects as value to a dart map
  static Map<String, List<CreateInviteInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateInviteInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateInviteInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'mail',
  };
}

