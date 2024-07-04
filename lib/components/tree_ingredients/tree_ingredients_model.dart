import '/components/insert_image_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'tree_ingredients_widget.dart' show TreeIngredientsWidget;
import 'package:flutter/material.dart';

class TreeIngredientsModel extends FlutterFlowModel<TreeIngredientsWidget> {
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
      return 'Ingresa el nombre del ingrediente';
    }

    return null;
  }

  // State field(s) for DropDown0 widget.
  String? dropDown0Value;
  FormFieldController<String>? dropDown0ValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa la cantidad necesaria para producir';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  String? _textController3Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa la unidad de medida';
    }

    return null;
  }

  // State field(s) for avaliablequantity widget.
  FocusNode? avaliablequantityFocusNode1;
  TextEditingController? avaliablequantityTextController1;
  String? Function(BuildContext, String?)?
      avaliablequantityTextController1Validator;
  String? _avaliablequantityTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa el stock';
    }

    return null;
  }

  // State field(s) for totalquantity widget.
  FocusNode? totalquantityFocusNode;
  TextEditingController? totalquantityTextController;
  String? Function(BuildContext, String?)? totalquantityTextControllerValidator;
  String? _totalquantityTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa la cantidad total del producto';
    }

    return null;
  }

  // State field(s) for DropDown1 widget.
  String? dropDown1Value1;
  FormFieldController<String>? dropDown1ValueController1;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  String? _textController6Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa la cantidad necesaria para producir';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  String? _textController7Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa la unidad de medida';
    }

    return null;
  }

  // State field(s) for avaliablequantity widget.
  FocusNode? avaliablequantityFocusNode2;
  TextEditingController? avaliablequantityTextController2;
  String? Function(BuildContext, String?)?
      avaliablequantityTextController2Validator;
  String? _avaliablequantityTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa el stock';
    }

    return null;
  }

  // State field(s) for totalquantity1 widget.
  FocusNode? totalquantity1FocusNode1;
  TextEditingController? totalquantity1TextController1;
  String? Function(BuildContext, String?)?
      totalquantity1TextController1Validator;
  String? _totalquantity1TextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa la cantidad total del producto';
    }

    return null;
  }

  // State field(s) for DropDown1 widget.
  String? dropDown1Value2;
  FormFieldController<String>? dropDown1ValueController2;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;
  String? _textController10Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa cantidad necesaria del ingrediente';
    }

    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController11;
  String? Function(BuildContext, String?)? textController11Validator;
  String? _textController11Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa unidad de medida';
    }

    return null;
  }

  // State field(s) for avaliablequantity widget.
  FocusNode? avaliablequantityFocusNode3;
  TextEditingController? avaliablequantityTextController3;
  String? Function(BuildContext, String?)?
      avaliablequantityTextController3Validator;
  String? _avaliablequantityTextController3Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa el stock correcto';
    }

    return null;
  }

  // State field(s) for totalquantity1 widget.
  FocusNode? totalquantity1FocusNode2;
  TextEditingController? totalquantity1TextController2;
  String? Function(BuildContext, String?)?
      totalquantity1TextController2Validator;
  String? _totalquantity1TextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa la cantidad total del ingrediente';
    }

    return null;
  }

  // State field(s) for cant_prod widget.
  FocusNode? cantProdFocusNode;
  TextEditingController? cantProdTextController;
  String? Function(BuildContext, String?)? cantProdTextControllerValidator;
  String? _cantProdTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa cantidad a producir';
    }

    return null;
  }

  // State field(s) for costo_aprox widget.
  FocusNode? costoAproxFocusNode;
  TextEditingController? costoAproxTextController;
  String? Function(BuildContext, String?)? costoAproxTextControllerValidator;
  String? _costoAproxTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa costo aproximado';
    }

    return null;
  }

  DateTime? datePicked;

  @override
  void initState(BuildContext context) {
    insertImageModel = createModel(context, () => InsertImageModel());
    productnameTextControllerValidator = _productnameTextControllerValidator;
    textController2Validator = _textController2Validator;
    textController3Validator = _textController3Validator;
    avaliablequantityTextController1Validator =
        _avaliablequantityTextController1Validator;
    totalquantityTextControllerValidator =
        _totalquantityTextControllerValidator;
    textController6Validator = _textController6Validator;
    textController7Validator = _textController7Validator;
    avaliablequantityTextController2Validator =
        _avaliablequantityTextController2Validator;
    totalquantity1TextController1Validator =
        _totalquantity1TextController1Validator;
    textController10Validator = _textController10Validator;
    textController11Validator = _textController11Validator;
    avaliablequantityTextController3Validator =
        _avaliablequantityTextController3Validator;
    totalquantity1TextController2Validator =
        _totalquantity1TextController2Validator;
    cantProdTextControllerValidator = _cantProdTextControllerValidator;
    costoAproxTextControllerValidator = _costoAproxTextControllerValidator;
  }

  @override
  void dispose() {
    insertImageModel.dispose();
    productnameFocusNode?.dispose();
    productnameTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController2?.dispose();

    textFieldFocusNode2?.dispose();
    textController3?.dispose();

    avaliablequantityFocusNode1?.dispose();
    avaliablequantityTextController1?.dispose();

    totalquantityFocusNode?.dispose();
    totalquantityTextController?.dispose();

    textFieldFocusNode3?.dispose();
    textController6?.dispose();

    textFieldFocusNode4?.dispose();
    textController7?.dispose();

    avaliablequantityFocusNode2?.dispose();
    avaliablequantityTextController2?.dispose();

    totalquantity1FocusNode1?.dispose();
    totalquantity1TextController1?.dispose();

    textFieldFocusNode5?.dispose();
    textController10?.dispose();

    textFieldFocusNode6?.dispose();
    textController11?.dispose();

    avaliablequantityFocusNode3?.dispose();
    avaliablequantityTextController3?.dispose();

    totalquantity1FocusNode2?.dispose();
    totalquantity1TextController2?.dispose();

    cantProdFocusNode?.dispose();
    cantProdTextController?.dispose();

    costoAproxFocusNode?.dispose();
    costoAproxTextController?.dispose();
  }
}
