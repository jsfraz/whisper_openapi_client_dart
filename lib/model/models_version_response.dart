//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsVersionResponse {
  /// Returns a new [ModelsVersionResponse] instance.
  ModelsVersionResponse({
    required this.apiVersion,
    required this.minClientVersion,
    required this.name,
    required this.version,
  });

  String apiVersion;

  String minClientVersion;

  String name;

  String version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsVersionResponse &&
    other.apiVersion == apiVersion &&
    other.minClientVersion == minClientVersion &&
    other.name == name &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (apiVersion.hashCode) +
    (minClientVersion.hashCode) +
    (name.hashCode) +
    (version.hashCode);

  @override
  String toString() => 'ModelsVersionResponse[apiVersion=$apiVersion, minClientVersion=$minClientVersion, name=$name, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'apiVersion'] = this.apiVersion;
      json[r'minClientVersion'] = this.minClientVersion;
      json[r'name'] = this.name;
      json[r'version'] = this.version;
    return json;
  }

  /// Returns a new [ModelsVersionResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsVersionResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'apiVersion'), 'Required key "ModelsVersionResponse[apiVersion]" is missing from JSON.');
        assert(json[r'apiVersion'] != null, 'Required key "ModelsVersionResponse[apiVersion]" has a null value in JSON.');
        assert(json.containsKey(r'minClientVersion'), 'Required key "ModelsVersionResponse[minClientVersion]" is missing from JSON.');
        assert(json[r'minClientVersion'] != null, 'Required key "ModelsVersionResponse[minClientVersion]" has a null value in JSON.');
        assert(json.containsKey(r'name'), 'Required key "ModelsVersionResponse[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "ModelsVersionResponse[name]" has a null value in JSON.');
        assert(json.containsKey(r'version'), 'Required key "ModelsVersionResponse[version]" is missing from JSON.');
        assert(json[r'version'] != null, 'Required key "ModelsVersionResponse[version]" has a null value in JSON.');
        return true;
      }());

      return ModelsVersionResponse(
        apiVersion: mapValueOfType<String>(json, r'apiVersion')!,
        minClientVersion: mapValueOfType<String>(json, r'minClientVersion')!,
        name: mapValueOfType<String>(json, r'name')!,
        version: mapValueOfType<String>(json, r'version')!,
      );
    }
    return null;
  }

  static List<ModelsVersionResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsVersionResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsVersionResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsVersionResponse> mapFromJson(dynamic json) {
    final map = <String, ModelsVersionResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsVersionResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsVersionResponse-objects as value to a dart map
  static Map<String, List<ModelsVersionResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsVersionResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsVersionResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'apiVersion',
    'minClientVersion',
    'name',
    'version',
  };
}

