//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsAuthChallengeResponse {
  /// Returns a new [ModelsAuthChallengeResponse] instance.
  ModelsAuthChallengeResponse({
    required this.challenge,
    required this.expiresIn,
  });

  String challenge;

  int expiresIn;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsAuthChallengeResponse &&
    other.challenge == challenge &&
    other.expiresIn == expiresIn;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (challenge.hashCode) +
    (expiresIn.hashCode);

  @override
  String toString() => 'ModelsAuthChallengeResponse[challenge=$challenge, expiresIn=$expiresIn]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'challenge'] = this.challenge;
      json[r'expiresIn'] = this.expiresIn;
    return json;
  }

  /// Returns a new [ModelsAuthChallengeResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsAuthChallengeResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'challenge'), 'Required key "ModelsAuthChallengeResponse[challenge]" is missing from JSON.');
        assert(json[r'challenge'] != null, 'Required key "ModelsAuthChallengeResponse[challenge]" has a null value in JSON.');
        assert(json.containsKey(r'expiresIn'), 'Required key "ModelsAuthChallengeResponse[expiresIn]" is missing from JSON.');
        assert(json[r'expiresIn'] != null, 'Required key "ModelsAuthChallengeResponse[expiresIn]" has a null value in JSON.');
        return true;
      }());

      return ModelsAuthChallengeResponse(
        challenge: mapValueOfType<String>(json, r'challenge')!,
        expiresIn: mapValueOfType<int>(json, r'expiresIn')!,
      );
    }
    return null;
  }

  static List<ModelsAuthChallengeResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsAuthChallengeResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsAuthChallengeResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsAuthChallengeResponse> mapFromJson(dynamic json) {
    final map = <String, ModelsAuthChallengeResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsAuthChallengeResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsAuthChallengeResponse-objects as value to a dart map
  static Map<String, List<ModelsAuthChallengeResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsAuthChallengeResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsAuthChallengeResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'challenge',
    'expiresIn',
  };
}

