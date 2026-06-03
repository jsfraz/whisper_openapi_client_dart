//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MultipartFileHeader {
  /// Returns a new [MultipartFileHeader] instance.
  MultipartFileHeader({
    this.filename,
    this.header = const {},
    this.size,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? filename;

  Map<String, List<String>> header;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? size;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MultipartFileHeader &&
    other.filename == filename &&
    _deepEquality.equals(other.header, header) &&
    other.size == size;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (filename == null ? 0 : filename!.hashCode) +
    (header.hashCode) +
    (size == null ? 0 : size!.hashCode);

  @override
  String toString() => 'MultipartFileHeader[filename=$filename, header=$header, size=$size]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.filename != null) {
      json[r'Filename'] = this.filename;
    } else {
      json[r'Filename'] = null;
    }
      json[r'Header'] = this.header;
    if (this.size != null) {
      json[r'Size'] = this.size;
    } else {
      json[r'Size'] = null;
    }
    return json;
  }

  /// Returns a new [MultipartFileHeader] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MultipartFileHeader? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return MultipartFileHeader(
        filename: mapValueOfType<String>(json, r'Filename'),
        header: json[r'Header'] == null
          ? const {}
            : (json[r'Header'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v == null ? const <String>[] : (v as List).cast<String>())),
        size: mapValueOfType<int>(json, r'Size'),
      );
    }
    return null;
  }

  static List<MultipartFileHeader> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MultipartFileHeader>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MultipartFileHeader.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MultipartFileHeader> mapFromJson(dynamic json) {
    final map = <String, MultipartFileHeader>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MultipartFileHeader.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MultipartFileHeader-objects as value to a dart map
  static Map<String, List<MultipartFileHeader>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MultipartFileHeader>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MultipartFileHeader.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

