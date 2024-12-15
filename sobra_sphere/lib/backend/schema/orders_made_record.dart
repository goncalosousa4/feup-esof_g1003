import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class OrdersMadeRecord extends FirestoreRecord {
  OrdersMadeRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "name_restaurant" field.
  DocumentReference? _nameRestaurant;
  DocumentReference? get nameRestaurant => _nameRestaurant;
  bool hasNameRestaurant() => _nameRestaurant != null;

  // "user_name" field.
  DocumentReference? _userName;
  DocumentReference? get userName => _userName;
  bool hasUserName() => _userName != null;

  // "user_diets" field.
  DocumentReference? _userDiets;
  DocumentReference? get userDiets => _userDiets;
  bool hasUserDiets() => _userDiets != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _nameRestaurant = snapshotData['name_restaurant'] as DocumentReference?;
    _userName = snapshotData['user_name'] as DocumentReference?;
    _userDiets = snapshotData['user_diets'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ordersMade');

  static Stream<OrdersMadeRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersMadeRecord.fromSnapshot(s));

  static Future<OrdersMadeRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersMadeRecord.fromSnapshot(s));

  static OrdersMadeRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OrdersMadeRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersMadeRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersMadeRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersMadeRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersMadeRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersMadeRecordData({
  String? id,
  DocumentReference? nameRestaurant,
  DocumentReference? userName,
  DocumentReference? userDiets,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'name_restaurant': nameRestaurant,
      'user_name': userName,
      'user_diets': userDiets,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersMadeRecordDocumentEquality implements Equality<OrdersMadeRecord> {
  const OrdersMadeRecordDocumentEquality();

  @override
  bool equals(OrdersMadeRecord? e1, OrdersMadeRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.nameRestaurant == e2?.nameRestaurant &&
        e1?.userName == e2?.userName &&
        e1?.userDiets == e2?.userDiets;
  }

  @override
  int hash(OrdersMadeRecord? e) => const ListEquality()
      .hash([e?.id, e?.nameRestaurant, e?.userName, e?.userDiets]);

  @override
  bool isValidKey(Object? o) => o is OrdersMadeRecord;
}
