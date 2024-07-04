// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class TotalOrdersStruct extends FFFirebaseStruct {
  TotalOrdersStruct({
    double? totalAmount,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _totalAmount = totalAmount,
        super(firestoreUtilData);

  // "TotalAmount" field.
  double? _totalAmount;
  double get totalAmount => _totalAmount ?? 0.0;
  set totalAmount(double? val) => _totalAmount = val;

  void incrementTotalAmount(double amount) =>
      totalAmount = totalAmount + amount;

  bool hasTotalAmount() => _totalAmount != null;

  static TotalOrdersStruct fromMap(Map<String, dynamic> data) =>
      TotalOrdersStruct(
        totalAmount: castToType<double>(data['TotalAmount']),
      );

  static TotalOrdersStruct? maybeFromMap(dynamic data) => data is Map
      ? TotalOrdersStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'TotalAmount': _totalAmount,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'TotalAmount': serializeParam(
          _totalAmount,
          ParamType.double,
        ),
      }.withoutNulls;

  static TotalOrdersStruct fromSerializableMap(Map<String, dynamic> data) =>
      TotalOrdersStruct(
        totalAmount: deserializeParam(
          data['TotalAmount'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'TotalOrdersStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is TotalOrdersStruct && totalAmount == other.totalAmount;
  }

  @override
  int get hashCode => const ListEquality().hash([totalAmount]);
}

TotalOrdersStruct createTotalOrdersStruct({
  double? totalAmount,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    TotalOrdersStruct(
      totalAmount: totalAmount,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

TotalOrdersStruct? updateTotalOrdersStruct(
  TotalOrdersStruct? totalOrders, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    totalOrders
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addTotalOrdersStructData(
  Map<String, dynamic> firestoreData,
  TotalOrdersStruct? totalOrders,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (totalOrders == null) {
    return;
  }
  if (totalOrders.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && totalOrders.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final totalOrdersData =
      getTotalOrdersFirestoreData(totalOrders, forFieldValue);
  final nestedData =
      totalOrdersData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = totalOrders.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getTotalOrdersFirestoreData(
  TotalOrdersStruct? totalOrders, [
  bool forFieldValue = false,
]) {
  if (totalOrders == null) {
    return {};
  }
  final firestoreData = mapToFirestore(totalOrders.toMap());

  // Add any Firestore field values
  totalOrders.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getTotalOrdersListFirestoreData(
  List<TotalOrdersStruct>? totalOrderss,
) =>
    totalOrderss?.map((e) => getTotalOrdersFirestoreData(e, true)).toList() ??
    [];
