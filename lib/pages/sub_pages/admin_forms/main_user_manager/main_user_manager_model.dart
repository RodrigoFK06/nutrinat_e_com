import '/components/top_nav/top_nav_widget.dart';
import '/components/user_list_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'main_user_manager_widget.dart' show MainUserManagerWidget;
import 'package:flutter/material.dart';

class MainUserManagerModel extends FlutterFlowModel<MainUserManagerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for topNav component.
  late TopNavModel topNavModel;
  // Model for UserList component.
  late UserListModel userListModel;

  @override
  void initState(BuildContext context) {
    topNavModel = createModel(context, () => TopNavModel());
    userListModel = createModel(context, () => UserListModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    topNavModel.dispose();
    userListModel.dispose();
  }
}
