import '/components/insert_image_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'actualiceformuser_widget.dart' show ActualiceformuserWidget;
import 'package:flutter/material.dart';

class ActualiceformuserModel extends FlutterFlowModel<ActualiceformuserWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // Model for InsertImage component.
  late InsertImageModel insertImageModel;
  // State field(s) for comboTipoUsuario widget.
  String? comboTipoUsuarioValue;
  FormFieldController<String>? comboTipoUsuarioValueController;

  @override
  void initState(BuildContext context) {
    insertImageModel = createModel(context, () => InsertImageModel());
  }

  @override
  void dispose() {
    insertImageModel.dispose();
  }
}
