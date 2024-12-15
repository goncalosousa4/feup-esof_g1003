import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ThisMonthRecord extends FirestoreRecord {
  ThisMonthRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "bangs_sold" field.
  int? _bangsSold;
  int get bangsSold => _bangsSold ?? 0;
  bool hasBangsSold() => _bangsSold != null;

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
    _bangsSold = castToType<int>(snapshotData['bangs_sold']);
    _bagsUnsold = castToType<int>(snapshotData['bags_unsold']);
    _amountEarned = castToType<double>(snapshotData['amount_earned']);
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('thisMonth')
          : FirebaseFirestore.instance.collectionGroup('thisMonth');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('thisMonth').doc(id);

  static Stream<ThisMonthRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ThisMonthRecord.fromSnapshot(s));

  static Future<ThisMonthRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ThisMonthRecord.fromSnapshot(s));

  static ThisMonthRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ThisMonthRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ThisMonthRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ThisMonthRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ThisMonthRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ThisMonthRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createThisMonthRecordData({
  int? id,
  int? bangsSold,
  int? bagsUnsold,
  double? amountEarned,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'bangs_sold': bangsSold,
      'bags_unsold': bagsUnsold,
      'amount_earned': amountEarned,
    }.withoutNulls,
  );

  return firestoreData;
}

class ThisMonthRecordDocumentEquality implements Equality<ThisMonthRecord> {
  const ThisMonthRecordDocumentEquality();

  @override
  bool equals(ThisMonthRecord? e1, ThisMonthRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.bangsSold == e2?.bangsSold &&
        e1?.bagsUnsold == e2?.bagsUnsold &&
        e1?.amountEarned == e2?.amountEarned;
  }

  @override
  int hash(ThisMonthRecord? e) => const ListEquality()
      .hash([e?.id, e?.bangsSold, e?.bagsUnsold, e?.amountEarned]);

  @override
  bool isValidKey(Object? o) => o is ThisMonthRecord;
}
