import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductionRecord extends FirestoreRecord {
  ProductionRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "batch_number" field.
  double? _batchNumber;
  double get batchNumber => _batchNumber ?? 0.0;
  bool hasBatchNumber() => _batchNumber != null;

  // "cost_estimate" field.
  double? _costEstimate;
  double get costEstimate => _costEstimate ?? 0.0;
  bool hasCostEstimate() => _costEstimate != null;

  // "expiry_date" field.
  DateTime? _expiryDate;
  DateTime? get expiryDate => _expiryDate;
  bool hasExpiryDate() => _expiryDate != null;

  // "image_product" field.
  String? _imageProduct;
  String get imageProduct => _imageProduct ?? '';
  bool hasImageProduct() => _imageProduct != null;

  // "product_name" field.
  String? _productName;
  String get productName => _productName ?? '';
  bool hasProductName() => _productName != null;

  // "quantity_planned" field.
  double? _quantityPlanned;
  double get quantityPlanned => _quantityPlanned ?? 0.0;
  bool hasQuantityPlanned() => _quantityPlanned != null;

  // "start_date" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  bool hasStartDate() => _startDate != null;

  // "materialRef" field.
  DocumentReference? _materialRef;
  DocumentReference? get materialRef => _materialRef;
  bool hasMaterialRef() => _materialRef != null;

  void _initializeFields() {
    _batchNumber = castToType<double>(snapshotData['batch_number']);
    _costEstimate = castToType<double>(snapshotData['cost_estimate']);
    _expiryDate = snapshotData['expiry_date'] as DateTime?;
    _imageProduct = snapshotData['image_product'] as String?;
    _productName = snapshotData['product_name'] as String?;
    _quantityPlanned = castToType<double>(snapshotData['quantity_planned']);
    _startDate = snapshotData['start_date'] as DateTime?;
    _materialRef = snapshotData['materialRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('production');

  static Stream<ProductionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ProductionRecord.fromSnapshot(s));

  static Future<ProductionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ProductionRecord.fromSnapshot(s));

  static ProductionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ProductionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ProductionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ProductionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ProductionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ProductionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createProductionRecordData({
  double? batchNumber,
  double? costEstimate,
  DateTime? expiryDate,
  String? imageProduct,
  String? productName,
  double? quantityPlanned,
  DateTime? startDate,
  DocumentReference? materialRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'batch_number': batchNumber,
      'cost_estimate': costEstimate,
      'expiry_date': expiryDate,
      'image_product': imageProduct,
      'product_name': productName,
      'quantity_planned': quantityPlanned,
      'start_date': startDate,
      'materialRef': materialRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class ProductionRecordDocumentEquality implements Equality<ProductionRecord> {
  const ProductionRecordDocumentEquality();

  @override
  bool equals(ProductionRecord? e1, ProductionRecord? e2) {
    return e1?.batchNumber == e2?.batchNumber &&
        e1?.costEstimate == e2?.costEstimate &&
        e1?.expiryDate == e2?.expiryDate &&
        e1?.imageProduct == e2?.imageProduct &&
        e1?.productName == e2?.productName &&
        e1?.quantityPlanned == e2?.quantityPlanned &&
        e1?.startDate == e2?.startDate &&
        e1?.materialRef == e2?.materialRef;
  }

  @override
  int hash(ProductionRecord? e) => const ListEquality().hash([
        e?.batchNumber,
        e?.costEstimate,
        e?.expiryDate,
        e?.imageProduct,
        e?.productName,
        e?.quantityPlanned,
        e?.startDate,
        e?.materialRef
      ]);

  @override
  bool isValidKey(Object? o) => o is ProductionRecord;
}
