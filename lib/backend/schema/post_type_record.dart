import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PostTypeRecord extends FirestoreRecord {
  PostTypeRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "post_type" field.
  String? _postType;
  String get postType => _postType ?? '';
  bool hasPostType() => _postType != null;

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  bool hasIndex() => _index != null;

  void _initializeFields() {
    _postType = snapshotData['post_type'] as String?;
    _index = castToType<int>(snapshotData['index']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('postType');

  static Stream<PostTypeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PostTypeRecord.fromSnapshot(s));

  static Future<PostTypeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PostTypeRecord.fromSnapshot(s));

  static PostTypeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PostTypeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PostTypeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PostTypeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PostTypeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PostTypeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPostTypeRecordData({
  String? postType,
  int? index,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'post_type': postType,
      'index': index,
    }.withoutNulls,
  );

  return firestoreData;
}

class PostTypeRecordDocumentEquality implements Equality<PostTypeRecord> {
  const PostTypeRecordDocumentEquality();

  @override
  bool equals(PostTypeRecord? e1, PostTypeRecord? e2) {
    return e1?.postType == e2?.postType && e1?.index == e2?.index;
  }

  @override
  int hash(PostTypeRecord? e) =>
      const ListEquality().hash([e?.postType, e?.index]);

  @override
  bool isValidKey(Object? o) => o is PostTypeRecord;
}
