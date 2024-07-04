import '/components/material_list_widget.dart';
import '/components/top_nav/top_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_material_manager_widget.dart' show MainMaterialManagerWidget;
import 'package:flutter/material.dart';

class MainMaterialManagerModel
    extends FlutterFlowModel<MainMaterialManagerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for topNav component.
  late TopNavModel topNavModel;
  // Model for MaterialList component.
  late MaterialListModel materialListModel;

  @override
  void initState(BuildContext context) {
    topNavModel = createModel(context, () => TopNavModel());
    materialListModel = createModel(context, () => MaterialListModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topNavModel.dispose();
    materialListModel.dispose();
  }
}
