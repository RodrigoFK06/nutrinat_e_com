import '/components/insert_image_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'userform_widget.dart' show UserformWidget;
import 'package:flutter/material.dart';

class UserformModel extends FlutterFlowModel<UserformWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for InsertImage component.
  late InsertImageModel insertImageModel;
  // State field(s) for useremail widget.
  FocusNode? useremailFocusNode;
  TextEditingController? useremailTextController;
  String? Function(BuildContext, String?)? useremailTextControllerValidator;
  String? _useremailTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa tu correo';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for userpass widget.
  FocusNode? userpassFocusNode;
  TextEditingController? userpassTextController;
  late bool userpassVisibility;
  String? Function(BuildContext, String?)? userpassTextControllerValidator;
  String? _userpassTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Ingresa tu contraseña';
    }

    if (val.length < 6) {
      return 'Requires at least 6 characters.';
    }

    return null;
  }

  // State field(s) for usertype widget.
  FocusNode? usertypeFocusNode;
  TextEditingController? usertypeTextController;
  String? Function(BuildContext, String?)? usertypeTextControllerValidator;
  String? _usertypeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Selecciona el tipo de usuario';
    }

    return null;
  }

  // State field(s) for comboTipoUsuario widget.
  String? comboTipoUsuarioValue;
  FormFieldController<String>? comboTipoUsuarioValueController;

  @override
  void initState(BuildContext context) {
    insertImageModel = createModel(context, () => InsertImageModel());
    useremailTextControllerValidator = _useremailTextControllerValidator;
    userpassVisibility = false;
    userpassTextControllerValidator = _userpassTextControllerValidator;
    usertypeTextControllerValidator = _usertypeTextControllerValidator;
  }

  @override
  void dispose() {
    insertImageModel.dispose();
    useremailFocusNode?.dispose();
    useremailTextController?.dispose();

    userpassFocusNode?.dispose();
    userpassTextController?.dispose();

    usertypeFocusNode?.dispose();
    usertypeTextController?.dispose();
  }
}
