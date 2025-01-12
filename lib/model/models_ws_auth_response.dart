//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsWsAuthResponse {
  /// Returns a new [ModelsWsAuthResponse] instance.
  ModelsWsAuthResponse({
    required this.accessToken,
  });

  String accessToken;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsWsAuthResponse &&
    other.accessToken == accessToken;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accessToken.hashCode);

  @override
  String toString() => 'ModelsWsAuthResponse[accessToken=$accessToken]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'accessToken'] = this.accessToken;
    return json;
  }

  /// Returns a new [ModelsWsAuthResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsWsAuthResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelsWsAuthResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelsWsAuthResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelsWsAuthResponse(
        accessToken: mapValueOfType<String>(json, r'accessToken')!,
      );
    }
    return null;
  }

  static List<ModelsWsAuthResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsWsAuthResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsWsAuthResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsWsAuthResponse> mapFromJson(dynamic json) {
    final map = <String, ModelsWsAuthResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsWsAuthResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsWsAuthResponse-objects as value to a dart map
  static Map<String, List<ModelsWsAuthResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsWsAuthResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsWsAuthResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'accessToken',
  };
}

