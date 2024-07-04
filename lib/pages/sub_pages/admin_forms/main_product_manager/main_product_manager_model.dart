import '/components/product_list_widget.dart';
import '/components/top_nav/top_nav_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_product_manager_widget.dart' show MainProductManagerWidget;
import 'package:flutter/material.dart';

class MainProductManagerModel
    extends FlutterFlowModel<MainProductManagerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for topNav component.
  late TopNavModel topNavModel;
  // Model for ProductList component.
  late ProductListModel productListModel;

  @override
  void initState(BuildContext context) {
    topNavModel = createModel(context, () => TopNavModel());
    productListModel = createModel(context, () => ProductListModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topNavModel.dispose();
    productListModel.dispose();
  }
}
