import '/components/insert_image_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'two_ingredients_widget.dart' show TwoIngredientsWidget;
import 'package:flutter/material.dart';

class TwoIngredientsModel extends FlutterFlowModel<TwoIngredientsWidget> {
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
  final avaliablequantityKey1 = GlobalKey();
  FocusNode? avaliablequantityFocusNode1;
  TextEditingController? avaliablequantityTextController1;
  String? avaliablequantitySelectedOption1;
  String? Function(BuildContext, String?)?
      avaliablequantityTextController1Validator;
  String? _avaliablequantityTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa el stock';
    }
    if (val != avaliablequantitySelectedOption1) {
      return 'Selecciona una opcion';
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
  String? dropDown1Value;
  FormFieldController<String>? dropDown1ValueController;
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
  final avaliablequantityKey2 = GlobalKey();
  FocusNode? avaliablequantityFocusNode2;
  TextEditingController? avaliablequantityTextController2;
  String? avaliablequantitySelectedOption2;
  String? Function(BuildContext, String?)?
      avaliablequantityTextController2Validator;
  String? _avaliablequantityTextController2Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa el stock';
    }
    if (val != avaliablequantitySelectedOption2) {
      return 'Selecciona una opcion';
    }

    return null;
  }

  // State field(s) for totalquantity1 widget.
  FocusNode? totalquantity1FocusNode;
  TextEditingController? totalquantity1TextController;
  String? Function(BuildContext, String?)?
      totalquantity1TextControllerValidator;
  String? _totalquantity1TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa la cantidad total del producto';
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
    totalquantity1TextControllerValidator =
        _totalquantity1TextControllerValidator;
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

    totalquantityFocusNode?.dispose();
    totalquantityTextController?.dispose();

    textFieldFocusNode3?.dispose();
    textController6?.dispose();

    textFieldFocusNode4?.dispose();
    textController7?.dispose();

    avaliablequantityFocusNode2?.dispose();

    totalquantity1FocusNode?.dispose();
    totalquantity1TextController?.dispose();

    cantProdFocusNode?.dispose();
    cantProdTextController?.dispose();

    costoAproxFocusNode?.dispose();
    costoAproxTextController?.dispose();
  }
}
