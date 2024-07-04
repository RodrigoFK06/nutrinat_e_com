// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DropdownsStruct extends FFFirebaseStruct {
  DropdownsStruct({
    List<String>? selectedproduct0,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _selectedproduct0 = selectedproduct0,
        super(firestoreUtilData);

  // "selectedproduct0" field.
  List<String>? _selectedproduct0;
  List<String> get selectedproduct0 => _selectedproduct0 ?? const [];
  set selectedproduct0(List<String>? val) => _selectedproduct0 = val;

  void updateSelectedproduct0(Function(List<String>) updateFn) {
    updateFn(selectedproduct0 ??= []);
  }

  bool hasSelectedproduct0() => _selectedproduct0 != null;

  static DropdownsStruct fromMap(Map<String, dynamic> data) => DropdownsStruct(
        selectedproduct0: getDataList(data['selectedproduct0']),
      );

  static DropdownsStruct? maybeFromMap(dynamic data) => data is Map
      ? DropdownsStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'selectedproduct0': _selectedproduct0,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'selectedproduct0': serializeParam(
          _selectedproduct0,
          ParamType.String,
          isList: true,
        ),
      }.withoutNulls;

  static DropdownsStruct fromSerializableMap(Map<String, dynamic> data) =>
      DropdownsStruct(
        selectedproduct0: deserializeParam<String>(
          data['selectedproduct0'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'DropdownsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is DropdownsStruct &&
        listEquality.equals(selectedproduct0, other.selectedproduct0);
  }

  @override
  int get hashCode => const ListEquality().hash([selectedproduct0]);
}

DropdownsStruct createDropdownsStruct({
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    DropdownsStruct(
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

DropdownsStruct? updateDropdownsStruct(
  DropdownsStruct? dropdowns, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    dropdowns
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addDropdownsStructData(
  Map<String, dynamic> firestoreData,
  DropdownsStruct? dropdowns,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (dropdowns == null) {
    return;
  }
  if (dropdowns.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && dropdowns.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final dropdownsData = getDropdownsFirestoreData(dropdowns, forFieldValue);
  final nestedData = dropdownsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = dropdowns.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getDropdownsFirestoreData(
  DropdownsStruct? dropdowns, [
  bool forFieldValue = false,
]) {
  if (dropdowns == null) {
    return {};
  }
  final firestoreData = mapToFirestore(dropdowns.toMap());

  // Add any Firestore field values
  dropdowns.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getDropdownsListFirestoreData(
  List<DropdownsStruct>? dropdownss,
) =>
    dropdownss?.map((e) => getDropdownsFirestoreData(e, true)).toList() ?? [];
