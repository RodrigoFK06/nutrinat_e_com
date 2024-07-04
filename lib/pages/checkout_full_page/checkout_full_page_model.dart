import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/add_address_base/add_address_base_widget.dart';
import '/components/gradient_button/gradient_button_widget.dart';
import '/components/top_nav/top_nav_widget.dart';
import '/components/u_i_marker/u_i_marker_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'checkout_full_page_widget.dart' show CheckoutFullPageWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class CheckoutFullPageModel extends FlutterFlowModel<CheckoutFullPageWidget> {
  ///  Local state fields for this page.

  int stepNumber = 1;

  AddressStruct? address;
  void updateAddressStruct(Function(AddressStruct) updateFn) {
    updateFn(address ??= AddressStruct());
  }

  ShippingOptionsStruct? shippingOption;
  void updateShippingOptionStruct(Function(ShippingOptionsStruct) updateFn) {
    updateFn(shippingOption ??= ShippingOptionsStruct());
  }

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for topNav component.
  late TopNavModel topNavModel;
  // Model for gradientButton component.
  late GradientButtonModel gradientButtonModel;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // Model for addAddress_Base component.
  late AddAddressBaseModel addAddressBaseModel;
  // Model for UI_Marker component.
  late UIMarkerModel uIMarkerModel1;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // Model for UI_Marker component.
  late UIMarkerModel uIMarkerModel2;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController4;
  String? Function(BuildContext, String?)? textController4Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController7;
  String? Function(BuildContext, String?)? textController7Validator;
  // Stores action output result for [Backend Call - API (GetTokenCard)] action in Button widget.
  ApiCallResponse? apiResultlnn;
  // Model for UI_Marker component.
  late UIMarkerModel uIMarkerModel3;
  // Stores action output result for [Backend Call - API (UUID)] action in Button widget.
  ApiCallResponse? uuidOut;
  // Stores action output result for [Backend Call - API (PayCard)] action in Button widget.
  ApiCallResponse? apiResultgu3;
  // Stores action output result for [Backend Call - API (lastDocument)] action in Button widget.
  ApiCallResponse? suggested;
  // Stores action output result for [Backend Call - API (sendBill)] action in Button widget.
  ApiCallResponse? bill;

  @override
  void initState(BuildContext context) {
    topNavModel = createModel(context, () => TopNavModel());
    gradientButtonModel = createModel(context, () => GradientButtonModel());
    addAddressBaseModel = createModel(context, () => AddAddressBaseModel());
    uIMarkerModel1 = createModel(context, () => UIMarkerModel());
    uIMarkerModel2 = createModel(context, () => UIMarkerModel());
    uIMarkerModel3 = createModel(context, () => UIMarkerModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topNavModel.dispose();
    gradientButtonModel.dispose();
    expandableExpandableController1.dispose();
    addAddressBaseModel.dispose();
    uIMarkerModel1.dispose();
    expandableExpandableController2.dispose();
    uIMarkerModel2.dispose();
    expandableExpandableController3.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    textFieldFocusNode4?.dispose();
    textController4?.dispose();

    textFieldFocusNode5?.dispose();
    textController5?.dispose();

    textFieldFocusNode6?.dispose();
    textController6?.dispose();

    textFieldFocusNode7?.dispose();
    textController7?.dispose();

    uIMarkerModel3.dispose();
  }
}
