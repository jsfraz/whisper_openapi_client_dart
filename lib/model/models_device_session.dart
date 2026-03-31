//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsDeviceSession {
  /// Returns a new [ModelsDeviceSession] instance.
  ModelsDeviceSession({
    this.deviceId,
    this.lastSeen,
    this.linkedAt,
    this.name,
    this.platform,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? deviceId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? lastSeen;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? linkedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? platform;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsDeviceSession &&
    other.deviceId == deviceId &&
    other.lastSeen == lastSeen &&
    other.linkedAt == linkedAt &&
    other.name == name &&
    other.platform == platform;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (deviceId == null ? 0 : deviceId!.hashCode) +
    (lastSeen == null ? 0 : lastSeen!.hashCode) +
    (linkedAt == null ? 0 : linkedAt!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (platform == null ? 0 : platform!.hashCode);

  @override
  String toString() => 'ModelsDeviceSession[deviceId=$deviceId, lastSeen=$lastSeen, linkedAt=$linkedAt, name=$name, platform=$platform]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.deviceId != null) {
      json[r'deviceId'] = this.deviceId;
    } else {
      json[r'deviceId'] = null;
    }
    if (this.lastSeen != null) {
      json[r'lastSeen'] = this.lastSeen!.toUtc().toIso8601String();
    } else {
      json[r'lastSeen'] = null;
    }
    if (this.linkedAt != null) {
      json[r'linkedAt'] = this.linkedAt!.toUtc().toIso8601String();
    } else {
      json[r'linkedAt'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.platform != null) {
      json[r'platform'] = this.platform;
    } else {
      json[r'platform'] = null;
    }
    return json;
  }

  /// Returns a new [ModelsDeviceSession] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsDeviceSession? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ModelsDeviceSession(
        deviceId: mapValueOfType<String>(json, r'deviceId'),
        lastSeen: mapDateTime(json, r'lastSeen', r''),
        linkedAt: mapDateTime(json, r'linkedAt', r''),
        name: mapValueOfType<String>(json, r'name'),
        platform: mapValueOfType<String>(json, r'platform'),
      );
    }
    return null;
  }

  static List<ModelsDeviceSession> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsDeviceSession>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsDeviceSession.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsDeviceSession> mapFromJson(dynamic json) {
    final map = <String, ModelsDeviceSession>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsDeviceSession.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsDeviceSession-objects as value to a dart map
  static Map<String, List<ModelsDeviceSession>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsDeviceSession>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsDeviceSession.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

