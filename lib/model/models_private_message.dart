//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ModelsPrivateMessage {
  /// Returns a new [ModelsPrivateMessage] instance.
  ModelsPrivateMessage({
    this.content = const [],
    this.deletedAt,
    this.editedAt,
    required this.id,
    this.key = const [],
    this.mac = const [],
    this.nonce = const [],
    required this.peerId,
    required this.recipientOnline,
    required this.senderId,
    required this.sentAt,
    required this.seq,
  });

  List<int> content;

  DateTime? deletedAt;

  DateTime? editedAt;

  String id;

  List<int> key;

  List<int> mac;

  List<int> nonce;

  String peerId;

  bool recipientOnline;

  String senderId;

  DateTime sentAt;

  int seq;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelsPrivateMessage &&
    _deepEquality.equals(other.content, content) &&
    other.deletedAt == deletedAt &&
    other.editedAt == editedAt &&
    other.id == id &&
    _deepEquality.equals(other.key, key) &&
    _deepEquality.equals(other.mac, mac) &&
    _deepEquality.equals(other.nonce, nonce) &&
    other.peerId == peerId &&
    other.recipientOnline == recipientOnline &&
    other.senderId == senderId &&
    other.sentAt == sentAt &&
    other.seq == seq;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (content.hashCode) +
    (deletedAt == null ? 0 : deletedAt!.hashCode) +
    (editedAt == null ? 0 : editedAt!.hashCode) +
    (id.hashCode) +
    (key.hashCode) +
    (mac.hashCode) +
    (nonce.hashCode) +
    (peerId.hashCode) +
    (recipientOnline.hashCode) +
    (senderId.hashCode) +
    (sentAt.hashCode) +
    (seq.hashCode);

  @override
  String toString() => 'ModelsPrivateMessage[content=$content, deletedAt=$deletedAt, editedAt=$editedAt, id=$id, key=$key, mac=$mac, nonce=$nonce, peerId=$peerId, recipientOnline=$recipientOnline, senderId=$senderId, sentAt=$sentAt, seq=$seq]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'content'] = this.content;
    if (this.deletedAt != null) {
      json[r'deletedAt'] = this.deletedAt!.toUtc().toIso8601String();
    } else {
      json[r'deletedAt'] = null;
    }
    if (this.editedAt != null) {
      json[r'editedAt'] = this.editedAt!.toUtc().toIso8601String();
    } else {
      json[r'editedAt'] = null;
    }
      json[r'id'] = this.id;
      json[r'key'] = this.key;
      json[r'mac'] = this.mac;
      json[r'nonce'] = this.nonce;
      json[r'peerId'] = this.peerId;
      json[r'recipientOnline'] = this.recipientOnline;
      json[r'senderId'] = this.senderId;
      json[r'sentAt'] = this.sentAt.toUtc().toIso8601String();
      json[r'seq'] = this.seq;
    return json;
  }

  /// Returns a new [ModelsPrivateMessage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelsPrivateMessage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'content'), 'Required key "ModelsPrivateMessage[content]" is missing from JSON.');
        assert(json[r'content'] != null, 'Required key "ModelsPrivateMessage[content]" has a null value in JSON.');
        assert(json.containsKey(r'id'), 'Required key "ModelsPrivateMessage[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "ModelsPrivateMessage[id]" has a null value in JSON.');
        assert(json.containsKey(r'key'), 'Required key "ModelsPrivateMessage[key]" is missing from JSON.');
        assert(json[r'key'] != null, 'Required key "ModelsPrivateMessage[key]" has a null value in JSON.');
        assert(json.containsKey(r'mac'), 'Required key "ModelsPrivateMessage[mac]" is missing from JSON.');
        assert(json[r'mac'] != null, 'Required key "ModelsPrivateMessage[mac]" has a null value in JSON.');
        assert(json.containsKey(r'nonce'), 'Required key "ModelsPrivateMessage[nonce]" is missing from JSON.');
        assert(json[r'nonce'] != null, 'Required key "ModelsPrivateMessage[nonce]" has a null value in JSON.');
        assert(json.containsKey(r'peerId'), 'Required key "ModelsPrivateMessage[peerId]" is missing from JSON.');
        assert(json[r'peerId'] != null, 'Required key "ModelsPrivateMessage[peerId]" has a null value in JSON.');
        assert(json.containsKey(r'recipientOnline'), 'Required key "ModelsPrivateMessage[recipientOnline]" is missing from JSON.');
        assert(json[r'recipientOnline'] != null, 'Required key "ModelsPrivateMessage[recipientOnline]" has a null value in JSON.');
        assert(json.containsKey(r'senderId'), 'Required key "ModelsPrivateMessage[senderId]" is missing from JSON.');
        assert(json[r'senderId'] != null, 'Required key "ModelsPrivateMessage[senderId]" has a null value in JSON.');
        assert(json.containsKey(r'sentAt'), 'Required key "ModelsPrivateMessage[sentAt]" is missing from JSON.');
        assert(json[r'sentAt'] != null, 'Required key "ModelsPrivateMessage[sentAt]" has a null value in JSON.');
        assert(json.containsKey(r'seq'), 'Required key "ModelsPrivateMessage[seq]" is missing from JSON.');
        assert(json[r'seq'] != null, 'Required key "ModelsPrivateMessage[seq]" has a null value in JSON.');
        return true;
      }());

      return ModelsPrivateMessage(
        content: json[r'content'] is Iterable
            ? (json[r'content'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        deletedAt: mapDateTime(json, r'deletedAt', r''),
        editedAt: mapDateTime(json, r'editedAt', r''),
        id: mapValueOfType<String>(json, r'id')!,
        key: json[r'key'] is Iterable
            ? (json[r'key'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        mac: json[r'mac'] is Iterable
            ? (json[r'mac'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        nonce: json[r'nonce'] is Iterable
            ? (json[r'nonce'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        peerId: mapValueOfType<String>(json, r'peerId')!,
        recipientOnline: mapValueOfType<bool>(json, r'recipientOnline')!,
        senderId: mapValueOfType<String>(json, r'senderId')!,
        sentAt: mapDateTime(json, r'sentAt', r'')!,
        seq: mapValueOfType<int>(json, r'seq')!,
      );
    }
    return null;
  }

  static List<ModelsPrivateMessage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelsPrivateMessage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelsPrivateMessage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelsPrivateMessage> mapFromJson(dynamic json) {
    final map = <String, ModelsPrivateMessage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelsPrivateMessage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelsPrivateMessage-objects as value to a dart map
  static Map<String, List<ModelsPrivateMessage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelsPrivateMessage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelsPrivateMessage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'content',
    'id',
    'key',
    'mac',
    'nonce',
    'peerId',
    'recipientOnline',
    'senderId',
    'sentAt',
    'seq',
  };
}

