import '/components/top_nav/top_nav_widget.dart';
import '/components/tree_ingredients/tree_ingredients_widget.dart';
import '/components/two_ingredients/two_ingredients_widget.dart';
import '/components/u_i_marker/u_i_marker_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_production_widget.dart' show MainProductionWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class MainProductionModel extends FlutterFlowModel<MainProductionWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for topNav component.
  late TopNavModel topNavModel;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // Model for twoIngredients component.
  late TwoIngredientsModel twoIngredientsModel1;
  // Model for UI_Marker component.
  late UIMarkerModel uIMarkerModel1;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // Model for treeIngredients component.
  late TreeIngredientsModel treeIngredientsModel;
  // Model for UI_Marker component.
  late UIMarkerModel uIMarkerModel2;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // Model for twoIngredients component.
  late TwoIngredientsModel twoIngredientsModel2;
  // Model for UI_Marker component.
  late UIMarkerModel uIMarkerModel3;

  @override
  void initState(BuildContext context) {
    topNavModel = createModel(context, () => TopNavModel());
    twoIngredientsModel1 = createModel(context, () => TwoIngredientsModel());
    uIMarkerModel1 = createModel(context, () => UIMarkerModel());
    treeIngredientsModel = createModel(context, () => TreeIngredientsModel());
    uIMarkerModel2 = createModel(context, () => UIMarkerModel());
    twoIngredientsModel2 = createModel(context, () => TwoIngredientsModel());
    uIMarkerModel3 = createModel(context, () => UIMarkerModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topNavModel.dispose();
    expandableExpandableController1.dispose();
    twoIngredientsModel1.dispose();
    uIMarkerModel1.dispose();
    expandableExpandableController2.dispose();
    treeIngredientsModel.dispose();
    uIMarkerModel2.dispose();
    expandableExpandableController3.dispose();
    twoIngredientsModel2.dispose();
    uIMarkerModel3.dispose();
  }
}
