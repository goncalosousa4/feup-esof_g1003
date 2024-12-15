import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ThisWeekRecord extends FirestoreRecord {
  ThisWeekRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "bags_sold" field.
  int? _bagsSold;
  int get bagsSold => _bagsSold ?? 0;
  bool hasBagsSold() => _bagsSold != null;

  // "bags_unsold" field.
  int? _bagsUnsold;
  int get bagsUnsold => _bagsUnsold ?? 0;
  bool hasBagsUnsold() => _bagsUnsold != null;

  // "amount_earned" field.
  double? _amountEarned;
  double get amountEarned => _amountEarned ?? 0.0;
  bool hasAmountEarned() => _amountEarned != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _bagsSold = castToType<int>(snapshotData['bags_sold']);
    _bagsUnsold = castToType<int>(snapshotData['bags_unsold']);
    _amountEarned = castToType<double>(snapshotData['amount_earned']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('thisWeek')
          : FirebaseFirestore.instance.collectionGroup('thisWeek');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('thisWeek').doc(id);

  static Stream<ThisWeekRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ThisWeekRecord.fromSnapshot(s));

  static Future<ThisWeekRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ThisWeekRecord.fromSnapshot(s));

  static ThisWeekRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ThisWeekRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ThisWeekRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ThisWeekRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ThisWeekRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ThisWeekRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createThisWeekRecordData({
  int? id,
  int? bagsSold,
  int? bagsUnsold,
  double? amountEarned,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'bags_sold': bagsSold,
      'bags_unsold': bagsUnsold,
      'amount_earned': amountEarned,
    }.withoutNulls,
  );

  return firestoreData;
}

class ThisWeekRecordDocumentEquality implements Equality<ThisWeekRecord> {
  const ThisWeekRecordDocumentEquality();

  @override
  bool equals(ThisWeekRecord? e1, ThisWeekRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.bagsSold == e2?.bagsSold &&
        e1?.bagsUnsold == e2?.bagsUnsold &&
        e1?.amountEarned == e2?.amountEarned;
  }

  @override
  int hash(ThisWeekRecord? e) => const ListEquality()
      .hash([e?.id, e?.bagsSold, e?.bagsUnsold, e?.amountEarned]);

  @override
  bool isValidKey(Object? o) => o is ThisWeekRecord;
}
