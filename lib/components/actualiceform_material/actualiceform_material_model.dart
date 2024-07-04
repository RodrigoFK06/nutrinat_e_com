import '/components/insert_image_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'actualiceform_material_widget.dart' show ActualiceformMaterialWidget;
import 'package:flutter/material.dart';

class ActualiceformMaterialModel
    extends FlutterFlowModel<ActualiceformMaterialWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for InsertImage component.
  late InsertImageModel insertImageModel;
  // State field(s) for materialName widget.
  FocusNode? materialNameFocusNode;
  TextEditingController? materialNameTextController;
  String? Function(BuildContext, String?)? materialNameTextControllerValidator;
  String? _materialNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa el nombre del ingrediente';
    }

    return null;
  }

  // State field(s) for quantityable widget.
  FocusNode? quantityableFocusNode;
  TextEditingController? quantityableTextController;
  String? Function(BuildContext, String?)? quantityableTextControllerValidator;
  String? _quantityableTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa la cantidad existente del producto';
    }

    return null;
  }

  // State field(s) for quantity widget.
  FocusNode? quantityFocusNode;
  TextEditingController? quantityTextController;
  String? Function(BuildContext, String?)? quantityTextControllerValidator;
  String? _quantityTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa la cantidad del producto';
    }

    return null;
  }

  // State field(s) for supplier widget.
  FocusNode? supplierFocusNode;
  TextEditingController? supplierTextController;
  String? Function(BuildContext, String?)? supplierTextControllerValidator;
  String? _supplierTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa el proveedor';
    }

    return null;
  }

  // State field(s) for measure widget.
  FocusNode? measureFocusNode;
  TextEditingController? measureTextController;
  String? Function(BuildContext, String?)? measureTextControllerValidator;
  String? _measureTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa la unidad de medida';
    }

    return null;
  }

  // State field(s) for priceName widget.
  FocusNode? priceNameFocusNode;
  TextEditingController? priceNameTextController;
  String? Function(BuildContext, String?)? priceNameTextControllerValidator;
  String? _priceNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa el precio del ingrediente';
    }

    return null;
  }

  DateTime? datePicked;

  @override
  void initState(BuildContext context) {
    insertImageModel = createModel(context, () => InsertImageModel());
    materialNameTextControllerValidator = _materialNameTextControllerValidator;
    quantityableTextControllerValidator = _quantityableTextControllerValidator;
    quantityTextControllerValidator = _quantityTextControllerValidator;
    supplierTextControllerValidator = _supplierTextControllerValidator;
    measureTextControllerValidator = _measureTextControllerValidator;
    priceNameTextControllerValidator = _priceNameTextControllerValidator;
  }

  @override
  void dispose() {
    insertImageModel.dispose();
    materialNameFocusNode?.dispose();
    materialNameTextController?.dispose();

    quantityableFocusNode?.dispose();
    quantityableTextController?.dispose();

    quantityFocusNode?.dispose();
    quantityTextController?.dispose();

    supplierFocusNode?.dispose();
    supplierTextController?.dispose();

    measureFocusNode?.dispose();
    measureTextController?.dispose();

    priceNameFocusNode?.dispose();
    priceNameTextController?.dispose();
  }
}
