import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserLocRecord extends FirestoreRecord {
  UserLocRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "locationId" field.
  String? _locationId;
  String get locationId => _locationId ?? '';
  bool hasLocationId() => _locationId != null;

  void _initializeFields() {
    _location = snapshotData['location'] as String?;
    _locationId = snapshotData['locationId'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('userLoc');

  static Stream<UserLocRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserLocRecord.fromSnapshot(s));

  static Future<UserLocRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserLocRecord.fromSnapshot(s));

  static UserLocRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserLocRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserLocRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserLocRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserLocRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserLocRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserLocRecordData({
  String? location,
  String? locationId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'location': location,
      'locationId': locationId,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserLocRecordDocumentEquality implements Equality<UserLocRecord> {
  const UserLocRecordDocumentEquality();

  @override
  bool equals(UserLocRecord? e1, UserLocRecord? e2) {
    return e1?.location == e2?.location && e1?.locationId == e2?.locationId;
  }

  @override
  int hash(UserLocRecord? e) =>
      const ListEquality().hash([e?.location, e?.locationId]);

  @override
  bool isValidKey(Object? o) => o is UserLocRecord;
}
