import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class JobsRecord extends FirestoreRecord {
  JobsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "index" field.
  int? _index;
  int get index => _index ?? 0;
  bool hasIndex() => _index != null;

  // "company" field.
  String? _company;
  String get company => _company ?? '';
  bool hasCompany() => _company != null;

  // "position" field.
  String? _position;
  String get position => _position ?? '';
  bool hasPosition() => _position != null;

  // "location" field.
  LatLng? _location;
  LatLng? get location => _location;
  bool hasLocation() => _location != null;

  // "createDate" field.
  DateTime? _createDate;
  DateTime? get createDate => _createDate;
  bool hasCreateDate() => _createDate != null;

  // "applyDate" field.
  DateTime? _applyDate;
  DateTime? get applyDate => _applyDate;
  bool hasApplyDate() => _applyDate != null;

  // "logo" field.
  String? _logo;
  String get logo => _logo ?? '';
  bool hasLogo() => _logo != null;

  // "locationStr" field.
  String? _locationStr;
  String get locationStr => _locationStr ?? '';
  bool hasLocationStr() => _locationStr != null;

  // "applyTest" field.
  bool? _applyTest;
  bool get applyTest => _applyTest ?? false;
  bool hasApplyTest() => _applyTest != null;

  // "likeTest" field.
  bool? _likeTest;
  bool get likeTest => _likeTest ?? false;
  bool hasLikeTest() => _likeTest != null;

  // "jobType" field.
  String? _jobType;
  String get jobType => _jobType ?? '';
  bool hasJobType() => _jobType != null;

  void _initializeFields() {
    _index = castToType<int>(snapshotData['index']);
    _company = snapshotData['company'] as String?;
    _position = snapshotData['position'] as String?;
    _location = snapshotData['location'] as LatLng?;
    _createDate = snapshotData['createDate'] as DateTime?;
    _applyDate = snapshotData['applyDate'] as DateTime?;
    _logo = snapshotData['logo'] as String?;
    _locationStr = snapshotData['locationStr'] as String?;
    _applyTest = snapshotData['applyTest'] as bool?;
    _likeTest = snapshotData['likeTest'] as bool?;
    _jobType = snapshotData['jobType'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('jobs');

  static Stream<JobsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => JobsRecord.fromSnapshot(s));

  static Future<JobsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => JobsRecord.fromSnapshot(s));

  static JobsRecord fromSnapshot(DocumentSnapshot snapshot) => JobsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static JobsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      JobsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'JobsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is JobsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createJobsRecordData({
  int? index,
  String? company,
  String? position,
  LatLng? location,
  DateTime? createDate,
  DateTime? applyDate,
  String? logo,
  String? locationStr,
  bool? applyTest,
  bool? likeTest,
  String? jobType,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'index': index,
      'company': company,
      'position': position,
      'location': location,
      'createDate': createDate,
      'applyDate': applyDate,
      'logo': logo,
      'locationStr': locationStr,
      'applyTest': applyTest,
      'likeTest': likeTest,
      'jobType': jobType,
    }.withoutNulls,
  );

  return firestoreData;
}

class JobsRecordDocumentEquality implements Equality<JobsRecord> {
  const JobsRecordDocumentEquality();

  @override
  bool equals(JobsRecord? e1, JobsRecord? e2) {
    return e1?.index == e2?.index &&
        e1?.company == e2?.company &&
        e1?.position == e2?.position &&
        e1?.location == e2?.location &&
        e1?.createDate == e2?.createDate &&
        e1?.applyDate == e2?.applyDate &&
        e1?.logo == e2?.logo &&
        e1?.locationStr == e2?.locationStr &&
        e1?.applyTest == e2?.applyTest &&
        e1?.likeTest == e2?.likeTest &&
        e1?.jobType == e2?.jobType;
  }

  @override
  int hash(JobsRecord? e) => const ListEquality().hash([
        e?.index,
        e?.company,
        e?.position,
        e?.location,
        e?.createDate,
        e?.applyDate,
        e?.logo,
        e?.locationStr,
        e?.applyTest,
        e?.likeTest,
        e?.jobType
      ]);

  @override
  bool isValidKey(Object? o) => o is JobsRecord;
}
