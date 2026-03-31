//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class RequestLinkInput {
  /// Returns a new [RequestLinkInput] instance.
  RequestLinkInput({
    required this.code,
    required this.deviceId,
    required this.deviceName,
    required this.platform,
  });

  String code;

  String deviceId;

  String deviceName;

  String platform;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RequestLinkInput &&
    other.code == code &&
    other.deviceId == deviceId &&
    other.deviceName == deviceName &&
    other.platform == platform;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code.hashCode) +
    (deviceId.hashCode) +
    (deviceName.hashCode) +
    (platform.hashCode);

  @override
  String toString() => 'RequestLinkInput[code=$code, deviceId=$deviceId, deviceName=$deviceName, platform=$platform]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'code'] = this.code;
      json[r'deviceId'] = this.deviceId;
      json[r'deviceName'] = this.deviceName;
      json[r'platform'] = this.platform;
    return json;
  }

  /// Returns a new [RequestLinkInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RequestLinkInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'code'), 'Required key "RequestLinkInput[code]" is missing from JSON.');
        assert(json[r'code'] != null, 'Required key "RequestLinkInput[code]" has a null value in JSON.');
        assert(json.containsKey(r'deviceId'), 'Required key "RequestLinkInput[deviceId]" is missing from JSON.');
        assert(json[r'deviceId'] != null, 'Required key "RequestLinkInput[deviceId]" has a null value in JSON.');
        assert(json.containsKey(r'deviceName'), 'Required key "RequestLinkInput[deviceName]" is missing from JSON.');
        assert(json[r'deviceName'] != null, 'Required key "RequestLinkInput[deviceName]" has a null value in JSON.');
        assert(json.containsKey(r'platform'), 'Required key "RequestLinkInput[platform]" is missing from JSON.');
        assert(json[r'platform'] != null, 'Required key "RequestLinkInput[platform]" has a null value in JSON.');
        return true;
      }());

      return RequestLinkInput(
        code: mapValueOfType<String>(json, r'code')!,
        deviceId: mapValueOfType<String>(json, r'deviceId')!,
        deviceName: mapValueOfType<String>(json, r'deviceName')!,
        platform: mapValueOfType<String>(json, r'platform')!,
      );
    }
    return null;
  }

  static List<RequestLinkInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RequestLinkInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RequestLinkInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RequestLinkInput> mapFromJson(dynamic json) {
    final map = <String, RequestLinkInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RequestLinkInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RequestLinkInput-objects as value to a dart map
  static Map<String, List<RequestLinkInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RequestLinkInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RequestLinkInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'code',
    'deviceId',
    'deviceName',
    'platform',
  };
}

