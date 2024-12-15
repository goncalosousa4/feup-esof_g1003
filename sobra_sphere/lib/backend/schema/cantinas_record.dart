import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CantinasRecord extends FirestoreRecord {
  CantinasRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  bool hasPrice() => _price != null;

  // "meals" field.
  String? _meals;
  String get meals => _meals ?? '';
  bool hasMeals() => _meals != null;

  // "cantina_liked_by" field.
  List<DocumentReference>? _cantinaLikedBy;
  List<DocumentReference> get cantinaLikedBy => _cantinaLikedBy ?? const [];
  bool hasCantinaLikedBy() => _cantinaLikedBy != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _name = snapshotData['name'] as String?;
    _price = castToType<double>(snapshotData['price']);
    _meals = snapshotData['meals'] as String?;
    _cantinaLikedBy = getDataList(snapshotData['cantina_liked_by']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('cantinas');

  static Stream<CantinasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CantinasRecord.fromSnapshot(s));

  static Future<CantinasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CantinasRecord.fromSnapshot(s));

  static CantinasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CantinasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CantinasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CantinasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CantinasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CantinasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCantinasRecordData({
  int? id,
  String? name,
  double? price,
  String? meals,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'name': name,
      'price': price,
      'meals': meals,
    }.withoutNulls,
  );

  return firestoreData;
}

class CantinasRecordDocumentEquality implements Equality<CantinasRecord> {
  const CantinasRecordDocumentEquality();

  @override
  bool equals(CantinasRecord? e1, CantinasRecord? e2) {
    const listEquality = ListEquality();
    return e1?.id == e2?.id &&
        e1?.name == e2?.name &&
        e1?.price == e2?.price &&
        e1?.meals == e2?.meals &&
        listEquality.equals(e1?.cantinaLikedBy, e2?.cantinaLikedBy);
  }

  @override
  int hash(CantinasRecord? e) => const ListEquality()
      .hash([e?.id, e?.name, e?.price, e?.meals, e?.cantinaLikedBy]);

  @override
  bool isValidKey(Object? o) => o is CantinasRecord;
}
