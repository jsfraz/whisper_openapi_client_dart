//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsHistoryPage {
  /// Returns a new [ModelsHistoryPage] instance.
  ModelsHistoryPage({
    this.clearedAt,
    this.messages = const [],
    this.nextCursor,
    this.peers = const [],
    this.pins = const [],
  });

  DateTime? clearedAt;

  List<ModelsPrivateMessage> messages;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? nextCursor;

  List<ModelsUser> peers;

  List<ModelsPinnedMessage> pins;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsHistoryPage &&
    other.clearedAt == clearedAt &&
    _deepEquality.equals(other.messages, messages) &&
    other.nextCursor == nextCursor &&
    _deepEquality.equals(other.peers, peers) &&
    _deepEquality.equals(other.pins, pins);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (clearedAt == null ? 0 : clearedAt!.hashCode) +
    (messages.hashCode) +
    (nextCursor == null ? 0 : nextCursor!.hashCode) +
    (peers.hashCode) +
    (pins.hashCode);

  @override
  String toString() => 'ModelsHistoryPage[clearedAt=$clearedAt, messages=$messages, nextCursor=$nextCursor, peers=$peers, pins=$pins]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.clearedAt != null) {
      json[r'clearedAt'] = this.clearedAt!.toUtc().toIso8601String();
    } else {
      json[r'clearedAt'] = null;
    }
      json[r'messages'] = this.messages;
    if (this.nextCursor != null) {
      json[r'nextCursor'] = this.nextCursor;
    } else {
      json[r'nextCursor'] = null;
    }
      json[r'peers'] = this.peers;
      json[r'pins'] = this.pins;
    return json;
  }

  /// Returns a new [ModelsHistoryPage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsHistoryPage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'messages'), 'Required key "ModelsHistoryPage[messages]" is missing from JSON.');
        assert(json[r'messages'] != null, 'Required key "ModelsHistoryPage[messages]" has a null value in JSON.');
        assert(json.containsKey(r'peers'), 'Required key "ModelsHistoryPage[peers]" is missing from JSON.');
        assert(json[r'peers'] != null, 'Required key "ModelsHistoryPage[peers]" has a null value in JSON.');
        assert(json.containsKey(r'pins'), 'Required key "ModelsHistoryPage[pins]" is missing from JSON.');
        assert(json[r'pins'] != null, 'Required key "ModelsHistoryPage[pins]" has a null value in JSON.');
        return true;
      }());

      return ModelsHistoryPage(
        clearedAt: mapDateTime(json, r'clearedAt', r''),
        messages: ModelsPrivateMessage.listFromJson(json[r'messages']),
        nextCursor: mapValueOfType<String>(json, r'nextCursor'),
        peers: ModelsUser.listFromJson(json[r'peers']),
        pins: ModelsPinnedMessage.listFromJson(json[r'pins']),
      );
    }
    return null;
  }

  static List<ModelsHistoryPage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsHistoryPage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsHistoryPage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsHistoryPage> mapFromJson(dynamic json) {
    final map = <String, ModelsHistoryPage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsHistoryPage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsHistoryPage-objects as value to a dart map
  static Map<String, List<ModelsHistoryPage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsHistoryPage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsHistoryPage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'messages',
    'peers',
    'pins',
  };
}

