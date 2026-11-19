//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsEditMessageResponse {
  /// Returns a new [ModelsEditMessageResponse] instance.
  ModelsEditMessageResponse({
    required this.editedAt,
  });

  DateTime editedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsEditMessageResponse &&
    other.editedAt == editedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (editedAt.hashCode);

  @override
  String toString() => 'ModelsEditMessageResponse[editedAt=$editedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'editedAt'] = this.editedAt.toUtc().toIso8601String();
    return json;
  }

  /// Returns a new [ModelsEditMessageResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsEditMessageResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'editedAt'), 'Required key "ModelsEditMessageResponse[editedAt]" is missing from JSON.');
        assert(json[r'editedAt'] != null, 'Required key "ModelsEditMessageResponse[editedAt]" has a null value in JSON.');
        return true;
      }());

      return ModelsEditMessageResponse(
        editedAt: mapDateTime(json, r'editedAt', r'')!,
      );
    }
    return null;
  }

  static List<ModelsEditMessageResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsEditMessageResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsEditMessageResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsEditMessageResponse> mapFromJson(dynamic json) {
    final map = <String, ModelsEditMessageResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsEditMessageResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsEditMessageResponse-objects as value to a dart map
  static Map<String, List<ModelsEditMessageResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsEditMessageResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsEditMessageResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'editedAt',
  };
}

