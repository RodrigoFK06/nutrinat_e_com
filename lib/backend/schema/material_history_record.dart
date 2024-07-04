import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MaterialHistoryRecord extends FirestoreRecord {
  MaterialHistoryRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "initial_date" field.
  DateTime? _initialDate;
  DateTime? get initialDate => _initialDate;
  bool hasInitialDate() => _initialDate != null;

  // "materialRef" field.
  DocumentReference? _materialRef;
  DocumentReference? get materialRef => _materialRef;
  bool hasMaterialRef() => _materialRef != null;

  void _initializeFields() {
    _initialDate = snapshotData['initial_date'] as DateTime?;
    _materialRef = snapshotData['materialRef'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('material_history');

  static Stream<MaterialHistoryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MaterialHistoryRecord.fromSnapshot(s));

  static Future<MaterialHistoryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MaterialHistoryRecord.fromSnapshot(s));

  static MaterialHistoryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MaterialHistoryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MaterialHistoryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MaterialHistoryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MaterialHistoryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MaterialHistoryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMaterialHistoryRecordData({
  DateTime? initialDate,
  DocumentReference? materialRef,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'initial_date': initialDate,
      'materialRef': materialRef,
    }.withoutNulls,
  );

  return firestoreData;
}

class MaterialHistoryRecordDocumentEquality
    implements Equality<MaterialHistoryRecord> {
  const MaterialHistoryRecordDocumentEquality();

  @override
  bool equals(MaterialHistoryRecord? e1, MaterialHistoryRecord? e2) {
    return e1?.initialDate == e2?.initialDate &&
        e1?.materialRef == e2?.materialRef;
  }

  @override
  int hash(MaterialHistoryRecord? e) =>
      const ListEquality().hash([e?.initialDate, e?.materialRef]);

  @override
  bool isValidKey(Object? o) => o is MaterialHistoryRecord;
}
