//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SetReadCursorInput {
  /// Returns a new [SetReadCursorInput] instance.
  SetReadCursorInput({
    required this.readAt,
  });

  /// Instant up to which the chat was read
  DateTime readAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SetReadCursorInput &&
    other.readAt == readAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (readAt.hashCode);

  @override
  String toString() => 'SetReadCursorInput[readAt=$readAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'readAt'] = this.readAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [SetReadCursorInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SetReadCursorInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'readAt'), 'Required key "SetReadCursorInput[readAt]" is missing from JSON.');
        assert(json[r'readAt'] != null, 'Required key "SetReadCursorInput[readAt]" has a null value in JSON.');
        return true;
      }());

      return SetReadCursorInput(
        readAt: mapDateTime(json, r'readAt', r'')!,
      );
    }
    return null;
  }

  static List<SetReadCursorInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SetReadCursorInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SetReadCursorInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SetReadCursorInput> mapFromJson(dynamic json) {
    final map = <String, SetReadCursorInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SetReadCursorInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SetReadCursorInput-objects as value to a dart map
  static Map<String, List<SetReadCursorInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SetReadCursorInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SetReadCursorInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'readAt',
  };
}

