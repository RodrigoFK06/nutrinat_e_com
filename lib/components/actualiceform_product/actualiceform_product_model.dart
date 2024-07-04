import '/components/insert_image_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'actualiceform_product_widget.dart' show ActualiceformProductWidget;
import 'package:flutter/material.dart';

class ActualiceformProductModel
    extends FlutterFlowModel<ActualiceformProductWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for InsertImage component.
  late InsertImageModel insertImageModel;
  // State field(s) for productName widget.
  FocusNode? productNameFocusNode;
  TextEditingController? productNameTextController;
  String? Function(BuildContext, String?)? productNameTextControllerValidator;
  String? _productNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa el nombre del producto';
    }

    return null;
  }

  // State field(s) for categoryName widget.
  FocusNode? categoryNameFocusNode;
  TextEditingController? categoryNameTextController;
  String? Function(BuildContext, String?)? categoryNameTextControllerValidator;
  String? _categoryNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for descriptionName widget.
  FocusNode? descriptionNameFocusNode;
  TextEditingController? descriptionNameTextController;
  String? Function(BuildContext, String?)?
      descriptionNameTextControllerValidator;
  String? _descriptionNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa la descripcion del producto';
    }

    return null;
  }

  // State field(s) for pidName widget.
  FocusNode? pidNameFocusNode;
  TextEditingController? pidNameTextController;
  String? Function(BuildContext, String?)? pidNameTextControllerValidator;
  String? _pidNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa el pid del producto';
    }

    return null;
  }

  // State field(s) for priceName widget.
  FocusNode? priceNameFocusNode;
  TextEditingController? priceNameTextController;
  String? Function(BuildContext, String?)? priceNameTextControllerValidator;
  String? _priceNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa el precio del producto';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    insertImageModel = createModel(context, () => InsertImageModel());
    productNameTextControllerValidator = _productNameTextControllerValidator;
    categoryNameTextControllerValidator = _categoryNameTextControllerValidator;
    descriptionNameTextControllerValidator =
        _descriptionNameTextControllerValidator;
    pidNameTextControllerValidator = _pidNameTextControllerValidator;
    priceNameTextControllerValidator = _priceNameTextControllerValidator;
  }

  @override
  void dispose() {
    insertImageModel.dispose();
    productNameFocusNode?.dispose();
    productNameTextController?.dispose();

    categoryNameFocusNode?.dispose();
    categoryNameTextController?.dispose();

    descriptionNameFocusNode?.dispose();
    descriptionNameTextController?.dispose();

    pidNameFocusNode?.dispose();
    pidNameTextController?.dispose();

    priceNameFocusNode?.dispose();
    priceNameTextController?.dispose();
  }
}
