import '/components/insert_image_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'productform_widget.dart' show ProductformWidget;
import 'package:flutter/material.dart';

class ProductformModel extends FlutterFlowModel<ProductformWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for InsertImage component.
  late InsertImageModel insertImageModel;
  // State field(s) for productname widget.
  FocusNode? productnameFocusNode;
  TextEditingController? productnameTextController;
  String? Function(BuildContext, String?)? productnameTextControllerValidator;
  String? _productnameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa el nombre del producto';
    }

    return null;
  }

  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
  String? _descriptionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa la descripcion del producto';
    }

    return null;
  }

  // State field(s) for category widget.
  String? categoryValue;
  FormFieldController<String>? categoryValueController;
  // State field(s) for pid widget.
  FocusNode? pidFocusNode;
  TextEditingController? pidTextController;
  String? Function(BuildContext, String?)? pidTextControllerValidator;
  String? _pidTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa el pid del producto';
    }

    return null;
  }

  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  String? _priceTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa el precio del producto';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    insertImageModel = createModel(context, () => InsertImageModel());
    productnameTextControllerValidator = _productnameTextControllerValidator;
    descriptionTextControllerValidator = _descriptionTextControllerValidator;
    pidTextControllerValidator = _pidTextControllerValidator;
    priceTextControllerValidator = _priceTextControllerValidator;
  }

  @override
  void dispose() {
    insertImageModel.dispose();
    productnameFocusNode?.dispose();
    productnameTextController?.dispose();

    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    pidFocusNode?.dispose();
    pidTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();
  }
}
