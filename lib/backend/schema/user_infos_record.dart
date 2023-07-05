import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserInfosRecord extends FirestoreRecord {
  UserInfosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "visa" field.
  String? _visa;
  String get visa => _visa ?? '';
  bool hasVisa() => _visa != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _visa = snapshotData['visa'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('userInfos')
          : FirebaseFirestore.instance.collectionGroup('userInfos');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('userInfos').doc();

  static Stream<UserInfosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UserInfosRecord.fromSnapshot(s));

  static Future<UserInfosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UserInfosRecord.fromSnapshot(s));

  static UserInfosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      UserInfosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UserInfosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UserInfosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UserInfosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UserInfosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUserInfosRecordData({
  String? visa,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'visa': visa,
    }.withoutNulls,
  );

  return firestoreData;
}

class UserInfosRecordDocumentEquality implements Equality<UserInfosRecord> {
  const UserInfosRecordDocumentEquality();

  @override
  bool equals(UserInfosRecord? e1, UserInfosRecord? e2) {
    return e1?.visa == e2?.visa;
  }

  @override
  int hash(UserInfosRecord? e) => const ListEquality().hash([e?.visa]);

  @override
  bool isValidKey(Object? o) => o is UserInfosRecord;
}
