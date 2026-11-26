//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsRetentionResponse {
  /// Returns a new [ModelsRetentionResponse] instance.
  ModelsRetentionResponse({
    required this.days,
  });

  int days;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsRetentionResponse &&
    other.days == days;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (days.hashCode);

  @override
  String toString() => 'ModelsRetentionResponse[days=$days]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'days'] = this.days;
    return json;
  }

  /// Returns a new [ModelsRetentionResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsRetentionResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'days'), 'Required key "ModelsRetentionResponse[days]" is missing from JSON.');
        assert(json[r'days'] != null, 'Required key "ModelsRetentionResponse[days]" has a null value in JSON.');
        return true;
      }());

      return ModelsRetentionResponse(
        days: mapValueOfType<int>(json, r'days')!,
      );
    }
    return null;
  }

  static List<ModelsRetentionResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsRetentionResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsRetentionResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsRetentionResponse> mapFromJson(dynamic json) {
    final map = <String, ModelsRetentionResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsRetentionResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsRetentionResponse-objects as value to a dart map
  static Map<String, List<ModelsRetentionResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsRetentionResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsRetentionResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'days',
  };
}

