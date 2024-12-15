import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AvailableBagsRecord extends FirestoreRecord {
  AvailableBagsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "created_at" field.
  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  bool hasCreatedAt() => _createdAt != null;

  // "quantity" field.
  int? _quantity;
  int get quantity => _quantity ?? 0;
  bool hasQuantity() => _quantity != null;

  // "is_it_vegetarian" field.
  bool? _isItVegetarian;
  bool get isItVegetarian => _isItVegetarian ?? false;
  bool hasIsItVegetarian() => _isItVegetarian != null;

  // "is_it_vegan" field.
  bool? _isItVegan;
  bool get isItVegan => _isItVegan ?? false;
  bool hasIsItVegan() => _isItVegan != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _description = snapshotData['description'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _createdAt = snapshotData['created_at'] as DateTime?;
    _quantity = castToType<int>(snapshotData['quantity']);
    _isItVegetarian = snapshotData['is_it_vegetarian'] as bool?;
    _isItVegan = snapshotData['is_it_vegan'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('availableBags');

  static Stream<AvailableBagsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AvailableBagsRecord.fromSnapshot(s));

  static Future<AvailableBagsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AvailableBagsRecord.fromSnapshot(s));

  static AvailableBagsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AvailableBagsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AvailableBagsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AvailableBagsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AvailableBagsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AvailableBagsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAvailableBagsRecordData({
  String? name,
  String? description,
  double? price,
  DateTime? createdAt,
  int? quantity,
  bool? isItVegetarian,
  bool? isItVegan,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'description': description,
      'price': price,
      'created_at': createdAt,
      'quantity': quantity,
      'is_it_vegetarian': isItVegetarian,
      'is_it_vegan': isItVegan,
    }.withoutNulls,
  );

  return firestoreData;
}

class AvailableBagsRecordDocumentEquality
    implements Equality<AvailableBagsRecord> {
  const AvailableBagsRecordDocumentEquality();

  @override
  bool equals(AvailableBagsRecord? e1, AvailableBagsRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.description == e2?.description &&
        e1?.price == e2?.price &&
        e1?.createdAt == e2?.createdAt &&
        e1?.quantity == e2?.quantity &&
        e1?.isItVegetarian == e2?.isItVegetarian &&
        e1?.isItVegan == e2?.isItVegan;
  }

  @override
  int hash(AvailableBagsRecord? e) => const ListEquality().hash([
        e?.name,
        e?.description,
        e?.price,
        e?.createdAt,
        e?.quantity,
        e?.isItVegetarian,
        e?.isItVegan
      ]);

  @override
  bool isValidKey(Object? o) => o is AvailableBagsRecord;
}
