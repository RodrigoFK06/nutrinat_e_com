import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MaterialInventoryRecord extends FirestoreRecord {
  MaterialInventoryRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "acquisition_date" field.
  DateTime? _acquisitionDate;
  DateTime? get acquisitionDate => _acquisitionDate;
  bool hasAcquisitionDate() => _acquisitionDate != null;

  // "avaliable_quantity" field.
  double? _avaliableQuantity;
  double get avaliableQuantity => _avaliableQuantity ?? 0.0;
  bool hasAvaliableQuantity() => _avaliableQuantity != null;

  // "cost_material" field.
  double? _costMaterial;
  double get costMaterial => _costMaterial ?? 0.0;
  bool hasCostMaterial() => _costMaterial != null;

  // "expiry_date" field.
  DateTime? _expiryDate;
  DateTime? get expiryDate => _expiryDate;
  bool hasExpiryDate() => _expiryDate != null;

  // "image_material" field.
  String? _imageMaterial;
  String get imageMaterial => _imageMaterial ?? '';
  bool hasImageMaterial() => _imageMaterial != null;

  // "name_material" field.
  String? _nameMaterial;
  String get nameMaterial => _nameMaterial ?? '';
  bool hasNameMaterial() => _nameMaterial != null;

  // "supplier" field.
  String? _supplier;
  String get supplier => _supplier ?? '';
  bool hasSupplier() => _supplier != null;

  // "unit_of_measure" field.
  String? _unitOfMeasure;
  String get unitOfMeasure => _unitOfMeasure ?? '';
  bool hasUnitOfMeasure() => _unitOfMeasure != null;

  // "mid" field.
  String? _mid;
  String get mid => _mid ?? '';
  bool hasMid() => _mid != null;

  void _initializeFields() {
    _acquisitionDate = snapshotData['acquisition_date'] as DateTime?;
    _avaliableQuantity = castToType<double>(snapshotData['avaliable_quantity']);
    _costMaterial = castToType<double>(snapshotData['cost_material']);
    _expiryDate = snapshotData['expiry_date'] as DateTime?;
    _imageMaterial = snapshotData['image_material'] as String?;
    _nameMaterial = snapshotData['name_material'] as String?;
    _supplier = snapshotData['supplier'] as String?;
    _unitOfMeasure = snapshotData['unit_of_measure'] as String?;
    _mid = snapshotData['mid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('material_inventory');

  static Stream<MaterialInventoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MaterialInventoryRecord.fromSnapshot(s));

  static Future<MaterialInventoryRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => MaterialInventoryRecord.fromSnapshot(s));

  static MaterialInventoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MaterialInventoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MaterialInventoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MaterialInventoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MaterialInventoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MaterialInventoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMaterialInventoryRecordData({
  DateTime? acquisitionDate,
  double? avaliableQuantity,
  double? costMaterial,
  DateTime? expiryDate,
  String? imageMaterial,
  String? nameMaterial,
  String? supplier,
  String? unitOfMeasure,
  String? mid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'acquisition_date': acquisitionDate,
      'avaliable_quantity': avaliableQuantity,
      'cost_material': costMaterial,
      'expiry_date': expiryDate,
      'image_material': imageMaterial,
      'name_material': nameMaterial,
      'supplier': supplier,
      'unit_of_measure': unitOfMeasure,
      'mid': mid,
    }.withoutNulls,
  );

  return firestoreData;
}

class MaterialInventoryRecordDocumentEquality
    implements Equality<MaterialInventoryRecord> {
  const MaterialInventoryRecordDocumentEquality();

  @override
  bool equals(MaterialInventoryRecord? e1, MaterialInventoryRecord? e2) {
    return e1?.acquisitionDate == e2?.acquisitionDate &&
        e1?.avaliableQuantity == e2?.avaliableQuantity &&
        e1?.costMaterial == e2?.costMaterial &&
        e1?.expiryDate == e2?.expiryDate &&
        e1?.imageMaterial == e2?.imageMaterial &&
        e1?.nameMaterial == e2?.nameMaterial &&
        e1?.supplier == e2?.supplier &&
        e1?.unitOfMeasure == e2?.unitOfMeasure &&
        e1?.mid == e2?.mid;
  }

  @override
  int hash(MaterialInventoryRecord? e) => const ListEquality().hash([
        e?.acquisitionDate,
        e?.avaliableQuantity,
        e?.costMaterial,
        e?.expiryDate,
        e?.imageMaterial,
        e?.nameMaterial,
        e?.supplier,
        e?.unitOfMeasure,
        e?.mid
      ]);

  @override
  bool isValidKey(Object? o) => o is MaterialInventoryRecord;
}
