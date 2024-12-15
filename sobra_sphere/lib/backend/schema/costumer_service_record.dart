import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CostumerServiceRecord extends FirestoreRecord {
  CostumerServiceRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "phoneNumber" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "comment" field.
  String? _comment;
  String get comment => _comment ?? '';
  bool hasComment() => _comment != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _phoneNumber = snapshotData['phoneNumber'] as String?;
    _email = snapshotData['email'] as String?;
    _comment = snapshotData['comment'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('costumerService');

  static Stream<CostumerServiceRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CostumerServiceRecord.fromSnapshot(s));

  static Future<CostumerServiceRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CostumerServiceRecord.fromSnapshot(s));

  static CostumerServiceRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CostumerServiceRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CostumerServiceRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CostumerServiceRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CostumerServiceRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CostumerServiceRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCostumerServiceRecordData({
  String? name,
  String? phoneNumber,
  String? email,
  String? comment,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'phoneNumber': phoneNumber,
      'email': email,
      'comment': comment,
    }.withoutNulls,
  );

  return firestoreData;
}

class CostumerServiceRecordDocumentEquality
    implements Equality<CostumerServiceRecord> {
  const CostumerServiceRecordDocumentEquality();

  @override
  bool equals(CostumerServiceRecord? e1, CostumerServiceRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.email == e2?.email &&
        e1?.comment == e2?.comment;
  }

  @override
  int hash(CostumerServiceRecord? e) => const ListEquality()
      .hash([e?.name, e?.phoneNumber, e?.email, e?.comment]);

  @override
  bool isValidKey(Object? o) => o is CostumerServiceRecord;
}
