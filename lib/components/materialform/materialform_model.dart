import '/components/insert_image_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'materialform_widget.dart' show MaterialformWidget;
import 'package:flutter/material.dart';

class MaterialformModel extends FlutterFlowModel<MaterialformWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for subirImagen.
  late InsertImageModel subirImagenModel;
  // State field(s) for productname widget.
  FocusNode? productnameFocusNode;
  TextEditingController? productnameTextController;
  String? Function(BuildContext, String?)? productnameTextControllerValidator;
  String? _productnameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa el nombre del ingrediente';
    }

    return null;
  }

  // State field(s) for cantidad widget.
  FocusNode? cantidadFocusNode;
  TextEditingController? cantidadTextController;
  String? Function(BuildContext, String?)? cantidadTextControllerValidator;
  String? _cantidadTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa la cantidad';
    }

    return null;
  }

  // State field(s) for proveedor widget.
  FocusNode? proveedorFocusNode;
  TextEditingController? proveedorTextController;
  String? Function(BuildContext, String?)? proveedorTextControllerValidator;
  String? _proveedorTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa el proveedor';
    }

    return null;
  }

  // State field(s) for unidad widget.
  FocusNode? unidadFocusNode;
  TextEditingController? unidadTextController;
  String? Function(BuildContext, String?)? unidadTextControllerValidator;
  String? _unidadTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa la unidad de medida';
    }

    return null;
  }

  // State field(s) for precio widget.
  FocusNode? precioFocusNode;
  TextEditingController? precioTextController;
  String? Function(BuildContext, String?)? precioTextControllerValidator;
  String? _precioTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa el precio del ingrediente';
    }

    return null;
  }

  DateTime? datePicked;

  @override
  void initState(BuildContext context) {
    subirImagenModel = createModel(context, () => InsertImageModel());
    productnameTextControllerValidator = _productnameTextControllerValidator;
    cantidadTextControllerValidator = _cantidadTextControllerValidator;
    proveedorTextControllerValidator = _proveedorTextControllerValidator;
    unidadTextControllerValidator = _unidadTextControllerValidator;
    precioTextControllerValidator = _precioTextControllerValidator;
  }

  @override
  void dispose() {
    subirImagenModel.dispose();
    productnameFocusNode?.dispose();
    productnameTextController?.dispose();

    cantidadFocusNode?.dispose();
    cantidadTextController?.dispose();

    proveedorFocusNode?.dispose();
    proveedorTextController?.dispose();

    unidadFocusNode?.dispose();
    unidadTextController?.dispose();

    precioFocusNode?.dispose();
    precioTextController?.dispose();
  }
}
