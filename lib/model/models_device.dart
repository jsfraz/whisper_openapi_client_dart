//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsDevice {
  /// Returns a new [ModelsDevice] instance.
  ModelsDevice({
    required this.createdAt,
    this.current,
    required this.id,
    required this.label,
    required this.lastSeenAt,
    required this.platform,
    this.revokedAt,
  });

  DateTime createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? current;

  String id;

  String label;

  DateTime lastSeenAt;

  String platform;

  DateTime? revokedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsDevice &&
    other.createdAt == createdAt &&
    other.current == current &&
    other.id == id &&
    other.label == label &&
    other.lastSeenAt == lastSeenAt &&
    other.platform == platform &&
    other.revokedAt == revokedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt.hashCode) +
    (current == null ? 0 : current!.hashCode) +
    (id.hashCode) +
    (label.hashCode) +
    (lastSeenAt.hashCode) +
    (platform.hashCode) +
    (revokedAt == null ? 0 : revokedAt!.hashCode);

  @override
  String toString() => 'ModelsDevice[createdAt=$createdAt, current=$current, id=$id, label=$label, lastSeenAt=$lastSeenAt, platform=$platform, revokedAt=$revokedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'createdAt'] = this.createdAt.toUtc().toIso8601String();
    if (this.current != null) {
      json[r'current'] = this.current;
    } else {
      json[r'current'] = null;
    }
      json[r'id'] = this.id;
      json[r'label'] = this.label;
      json[r'lastSeenAt'] = this.lastSeenAt.toUtc().toIso8601String();
      json[r'platform'] = this.platform;
    if (this.revokedAt != null) {
      json[r'revokedAt'] = this.revokedAt!.toUtc().toIso8601String();
    } else {
      json[r'revokedAt'] = null;
    }
    return json;
  }

  /// Returns a new [ModelsDevice] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsDevice? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'createdAt'), 'Required key "ModelsDevice[createdAt]" is missing from JSON.');
        assert(json[r'createdAt'] != null, 'Required key "ModelsDevice[createdAt]" has a null value in JSON.');
        assert(json.containsKey(r'id'), 'Required key "ModelsDevice[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "ModelsDevice[id]" has a null value in JSON.');
        assert(json.containsKey(r'label'), 'Required key "ModelsDevice[label]" is missing from JSON.');
        assert(json[r'label'] != null, 'Required key "ModelsDevice[label]" has a null value in JSON.');
        assert(json.containsKey(r'lastSeenAt'), 'Required key "ModelsDevice[lastSeenAt]" is missing from JSON.');
        assert(json[r'lastSeenAt'] != null, 'Required key "ModelsDevice[lastSeenAt]" has a null value in JSON.');
        assert(json.containsKey(r'platform'), 'Required key "ModelsDevice[platform]" is missing from JSON.');
        assert(json[r'platform'] != null, 'Required key "ModelsDevice[platform]" has a null value in JSON.');
        return true;
      }());

      return ModelsDevice(
        createdAt: mapDateTime(json, r'createdAt', r'')!,
        current: mapValueOfType<bool>(json, r'current'),
        id: mapValueOfType<String>(json, r'id')!,
        label: mapValueOfType<String>(json, r'label')!,
        lastSeenAt: mapDateTime(json, r'lastSeenAt', r'')!,
        platform: mapValueOfType<String>(json, r'platform')!,
        revokedAt: mapDateTime(json, r'revokedAt', r''),
      );
    }
    return null;
  }

  static List<ModelsDevice> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsDevice>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsDevice.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsDevice> mapFromJson(dynamic json) {
    final map = <String, ModelsDevice>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsDevice.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsDevice-objects as value to a dart map
  static Map<String, List<ModelsDevice>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsDevice>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsDevice.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'createdAt',
    'id',
    'label',
    'lastSeenAt',
    'platform',
  };
}

