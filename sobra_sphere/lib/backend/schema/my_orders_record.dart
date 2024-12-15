import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MyOrdersRecord extends FirestoreRecord {
  MyOrdersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "restaurantName" field.
  String? _restaurantName;
  String get restaurantName => _restaurantName ?? '';
  bool hasRestaurantName() => _restaurantName != null;

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  void _initializeFields() {
    _restaurantName = snapshotData['restaurantName'] as String?;
    _user = snapshotData['user'] as DocumentReference?;
    _image = snapshotData['image'] as String?;
    _id = castToType<int>(snapshotData['id']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('myOrders');

  static Stream<MyOrdersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MyOrdersRecord.fromSnapshot(s));

  static Future<MyOrdersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MyOrdersRecord.fromSnapshot(s));

  static MyOrdersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MyOrdersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MyOrdersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MyOrdersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MyOrdersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MyOrdersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMyOrdersRecordData({
  String? restaurantName,
  DocumentReference? user,
  String? image,
  int? id,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'restaurantName': restaurantName,
      'user': user,
      'image': image,
      'id': id,
    }.withoutNulls,
  );

  return firestoreData;
}

class MyOrdersRecordDocumentEquality implements Equality<MyOrdersRecord> {
  const MyOrdersRecordDocumentEquality();

  @override
  bool equals(MyOrdersRecord? e1, MyOrdersRecord? e2) {
    return e1?.restaurantName == e2?.restaurantName &&
        e1?.user == e2?.user &&
        e1?.image == e2?.image &&
        e1?.id == e2?.id;
  }

  @override
  int hash(MyOrdersRecord? e) =>
      const ListEquality().hash([e?.restaurantName, e?.user, e?.image, e?.id]);

  @override
  bool isValidKey(Object? o) => o is MyOrdersRecord;
}
