import '/components/production_list_widget.dart';
import '/components/top_nav/top_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_product_inventory_widget.dart' show MainProductInventoryWidget;
import 'package:flutter/material.dart';

class MainProductInventoryModel
    extends FlutterFlowModel<MainProductInventoryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for topNav component.
  late TopNavModel topNavModel;
  // Model for ProductionList component.
  late ProductionListModel productionListModel;

  @override
  void initState(BuildContext context) {
    topNavModel = createModel(context, () => TopNavModel());
    productionListModel = createModel(context, () => ProductionListModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topNavModel.dispose();
    productionListModel.dispose();
  }
}
