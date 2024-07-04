import '/components/nutrinat_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'top_nav_widget.dart' show TopNavWidget;
import 'package:flutter/material.dart';

class TopNavModel extends FlutterFlowModel<TopNavWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for NUTRINAT component.
  late NutrinatModel nutrinatModel;

  @override
  void initState(BuildContext context) {
    nutrinatModel = createModel(context, () => NutrinatModel());
  }

  @override
  void dispose() {
    nutrinatModel.dispose();
  }
}
