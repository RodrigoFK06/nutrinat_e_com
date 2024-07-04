import '/backend/api_requests/api_calls.dart';
import '/components/top_nav/top_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_home_admin_widget.dart' show MainHomeAdminWidget;
import 'package:flutter/material.dart';

class MainHomeAdminModel extends FlutterFlowModel<MainHomeAdminWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for topNav component.
  late TopNavModel topNavModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - API (CreatePDF)] action in Button widget.
  ApiCallResponse? apiResulthsz;

  @override
  void initState(BuildContext context) {
    topNavModel = createModel(context, () => TopNavModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topNavModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
