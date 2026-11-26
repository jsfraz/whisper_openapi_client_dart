//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class SetReactionInput {
  /// Returns a new [SetReactionInput] instance.
  SetReactionInput({
    this.content = const [],
    this.key = const [],
    this.mac = const [],
    this.nonce = const [],
  });

  List<int> content;

  List<int> key;

  List<int> mac;

  List<int> nonce;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SetReactionInput &&
    _deepEquality.equals(other.content, content) &&
    _deepEquality.equals(other.key, key) &&
    _deepEquality.equals(other.mac, mac) &&
    _deepEquality.equals(other.nonce, nonce);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (content.hashCode) +
    (key.hashCode) +
    (mac.hashCode) +
    (nonce.hashCode);

  @override
  String toString() => 'SetReactionInput[content=$content, key=$key, mac=$mac, nonce=$nonce]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'content'] = this.content;
      json[r'key'] = this.key;
      json[r'mac'] = this.mac;
      json[r'nonce'] = this.nonce;
    return json;
  }

  /// Returns a new [SetReactionInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SetReactionInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'content'), 'Required key "SetReactionInput[content]" is missing from JSON.');
        assert(json[r'content'] != null, 'Required key "SetReactionInput[content]" has a null value in JSON.');
        assert(json.containsKey(r'key'), 'Required key "SetReactionInput[key]" is missing from JSON.');
        assert(json[r'key'] != null, 'Required key "SetReactionInput[key]" has a null value in JSON.');
        assert(json.containsKey(r'mac'), 'Required key "SetReactionInput[mac]" is missing from JSON.');
        assert(json[r'mac'] != null, 'Required key "SetReactionInput[mac]" has a null value in JSON.');
        assert(json.containsKey(r'nonce'), 'Required key "SetReactionInput[nonce]" is missing from JSON.');
        assert(json[r'nonce'] != null, 'Required key "SetReactionInput[nonce]" has a null value in JSON.');
        return true;
      }());

      return SetReactionInput(
        content: json[r'content'] is Iterable
            ? (json[r'content'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        key: json[r'key'] is Iterable
            ? (json[r'key'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        mac: json[r'mac'] is Iterable
            ? (json[r'mac'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        nonce: json[r'nonce'] is Iterable
            ? (json[r'nonce'] as Iterable).cast<int>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<SetReactionInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SetReactionInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SetReactionInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SetReactionInput> mapFromJson(dynamic json) {
    final map = <String, SetReactionInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SetReactionInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SetReactionInput-objects as value to a dart map
  static Map<String, List<SetReactionInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SetReactionInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SetReactionInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'content',
    'key',
    'mac',
    'nonce',
  };
}

