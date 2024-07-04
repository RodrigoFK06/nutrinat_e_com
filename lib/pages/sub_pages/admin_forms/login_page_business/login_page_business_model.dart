import '/components/nutrinat_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_page_business_widget.dart' show LoginPageBusinessWidget;
import 'package:flutter/material.dart';

class LoginPageBusinessModel extends FlutterFlowModel<LoginPageBusinessWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for NUTRINAT component.
  late NutrinatModel nutrinatModel;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for password widget.
  FocusNode? passwordFocusNode;
  TextEditingController? passwordTextController;
  late bool passwordVisibility;
  String? Function(BuildContext, String?)? passwordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    nutrinatModel = createModel(context, () => NutrinatModel());
    passwordVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nutrinatModel.dispose();
    tabBarController?.dispose();
    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    passwordFocusNode?.dispose();
    passwordTextController?.dispose();
  }
}
