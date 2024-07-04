import '/flutter_flow/flutter_flow_util.dart';
import 'insert_image_widget.dart' show InsertImageWidget;
import 'package:flutter/material.dart';

class InsertImageModel extends FlutterFlowModel<InsertImageWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
