import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SalesInfoWeekRecord extends FirestoreRecord {
  SalesInfoWeekRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "bags_sold" field.
  int? _bagsSold;
  int get bagsSold => _bagsSold ?? 0;
  bool hasBagsSold() => _bagsSold != null;

  // "bags_unsold" field.
  int? _bagsUnsold;
  int get bagsUnsold => _bagsUnsold ?? 0;
  bool hasBagsUnsold() => _bagsUnsold != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _bagsSold = castToType<int>(snapshotData['bags_sold']);
    _bagsUnsold = castToType<int>(snapshotData['bags_unsold']);
    _price = castToType<double>(snapshotData['price']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('SalesInfoWeek');

  static Stream<SalesInfoWeekRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SalesInfoWeekRecord.fromSnapshot(s));

  static Future<SalesInfoWeekRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SalesInfoWeekRecord.fromSnapshot(s));

  static SalesInfoWeekRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SalesInfoWeekRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SalesInfoWeekRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SalesInfoWeekRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SalesInfoWeekRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SalesInfoWeekRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSalesInfoWeekRecordData({
  String? id,
  int? bagsSold,
  int? bagsUnsold,
  double? price,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'bags_sold': bagsSold,
      'bags_unsold': bagsUnsold,
      'price': price,
    }.withoutNulls,
  );

  return firestoreData;
}

class SalesInfoWeekRecordDocumentEquality
    implements Equality<SalesInfoWeekRecord> {
  const SalesInfoWeekRecordDocumentEquality();

  @override
  bool equals(SalesInfoWeekRecord? e1, SalesInfoWeekRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.bagsSold == e2?.bagsSold &&
        e1?.bagsUnsold == e2?.bagsUnsold &&
        e1?.price == e2?.price;
  }

  @override
  int hash(SalesInfoWeekRecord? e) =>
      const ListEquality().hash([e?.id, e?.bagsSold, e?.bagsUnsold, e?.price]);

  @override
  bool isValidKey(Object? o) => o is SalesInfoWeekRecord;
}
