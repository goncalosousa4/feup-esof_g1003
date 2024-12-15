import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class OrdersCompletedRecord extends FirestoreRecord {
  OrdersCompletedRecord._(
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

  // "picked_time" field.
  DateTime? _pickedTime;
  DateTime? get pickedTime => _pickedTime;
  bool hasPickedTime() => _pickedTime != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _nameRestaurant = snapshotData['name_restaurant'] as DocumentReference?;
    _userName = snapshotData['user_name'] as DocumentReference?;
    _pickedTime = snapshotData['picked_time'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ordersCompleted');

  static Stream<OrdersCompletedRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => OrdersCompletedRecord.fromSnapshot(s));

  static Future<OrdersCompletedRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => OrdersCompletedRecord.fromSnapshot(s));

  static OrdersCompletedRecord fromSnapshot(DocumentSnapshot snapshot) =>
      OrdersCompletedRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static OrdersCompletedRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      OrdersCompletedRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'OrdersCompletedRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is OrdersCompletedRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createOrdersCompletedRecordData({
  String? id,
  DocumentReference? nameRestaurant,
  DocumentReference? userName,
  DateTime? pickedTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'name_restaurant': nameRestaurant,
      'user_name': userName,
      'picked_time': pickedTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class OrdersCompletedRecordDocumentEquality
    implements Equality<OrdersCompletedRecord> {
  const OrdersCompletedRecordDocumentEquality();

  @override
  bool equals(OrdersCompletedRecord? e1, OrdersCompletedRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.nameRestaurant == e2?.nameRestaurant &&
        e1?.userName == e2?.userName &&
        e1?.pickedTime == e2?.pickedTime;
  }

  @override
  int hash(OrdersCompletedRecord? e) => const ListEquality()
      .hash([e?.id, e?.nameRestaurant, e?.userName, e?.pickedTime]);

  @override
  bool isValidKey(Object? o) => o is OrdersCompletedRecord;
}
