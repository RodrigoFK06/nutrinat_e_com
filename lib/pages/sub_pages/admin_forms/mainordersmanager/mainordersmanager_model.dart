import '/components/orders_list_widget.dart';
import '/components/top_nav/top_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mainordersmanager_widget.dart' show MainordersmanagerWidget;
import 'package:flutter/material.dart';

class MainordersmanagerModel extends FlutterFlowModel<MainordersmanagerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for topNav component.
  late TopNavModel topNavModel;
  // Model for OrdersList component.
  late OrdersListModel ordersListModel;

  @override
  void initState(BuildContext context) {
    topNavModel = createModel(context, () => TopNavModel());
    ordersListModel = createModel(context, () => OrdersListModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topNavModel.dispose();
    ordersListModel.dispose();
  }
}
