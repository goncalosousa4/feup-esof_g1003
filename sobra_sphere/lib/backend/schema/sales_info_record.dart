import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SalesInfoRecord extends FirestoreRecord {
  SalesInfoRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _date = snapshotData['date'] as DateTime?;
    _price = castToType<double>(snapshotData['price']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('salesInfo');

  static Stream<SalesInfoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SalesInfoRecord.fromSnapshot(s));

  static Future<SalesInfoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SalesInfoRecord.fromSnapshot(s));

  static SalesInfoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SalesInfoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SalesInfoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SalesInfoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SalesInfoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SalesInfoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSalesInfoRecordData({
  int? id,
  DateTime? date,
  double? price,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'date': date,
      'price': price,
    }.withoutNulls,
  );

  return firestoreData;
}

class SalesInfoRecordDocumentEquality implements Equality<SalesInfoRecord> {
  const SalesInfoRecordDocumentEquality();

  @override
  bool equals(SalesInfoRecord? e1, SalesInfoRecord? e2) {
    return e1?.id == e2?.id && e1?.date == e2?.date && e1?.price == e2?.price;
  }

  @override
  int hash(SalesInfoRecord? e) =>
      const ListEquality().hash([e?.id, e?.date, e?.price]);

  @override
  bool isValidKey(Object? o) => o is SalesInfoRecord;
}
