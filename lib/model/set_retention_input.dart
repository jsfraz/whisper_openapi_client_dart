//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SetRetentionInput {
  /// Returns a new [SetRetentionInput] instance.
  SetRetentionInput({
    required this.days,
  });

  int days;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SetRetentionInput &&
    other.days == days;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (days.hashCode);

  @override
  String toString() => 'SetRetentionInput[days=$days]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'days'] = this.days;
    return json;
  }

  /// Returns a new [SetRetentionInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SetRetentionInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'days'), 'Required key "SetRetentionInput[days]" is missing from JSON.');
        assert(json[r'days'] != null, 'Required key "SetRetentionInput[days]" has a null value in JSON.');
        return true;
      }());

      return SetRetentionInput(
        days: mapValueOfType<int>(json, r'days')!,
      );
    }
    return null;
  }

  static List<SetRetentionInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SetRetentionInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SetRetentionInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SetRetentionInput> mapFromJson(dynamic json) {
    final map = <String, SetRetentionInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SetRetentionInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SetRetentionInput-objects as value to a dart map
  static Map<String, List<SetRetentionInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SetRetentionInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SetRetentionInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'days',
  };
}

