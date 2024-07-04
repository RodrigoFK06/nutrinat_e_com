import '/backend/firebase_storage/storage.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'insert_image_model.dart';
export 'insert_image_model.dart';

class InsertImageWidget extends StatefulWidget {
  const InsertImageWidget({
    super.key,
    this.parameter1,
  });

  final String? parameter1;

  @override
  State<InsertImageWidget> createState() => _InsertImageWidgetState();
}

class _InsertImageWidgetState extends State<InsertImageWidget> {
  late InsertImageModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InsertImageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        final selectedMedia = await selectMedia(
          maxWidth: 2000.00,
          maxHeight: 3000.00,
          imageQuality: 100,
          mediaSource: MediaSource.photoGallery,
          multiImage: false,
        );
        if (selectedMedia != null &&
            selectedMedia
                .every((m) => validateFileFormat(m.storagePath, context))) {
          setState(() => _model.isDataUploading = true);
          var selectedUploadedFiles = <FFUploadedFile>[];

          var downloadUrls = <String>[];
          try {
            showUploadMessage(
              context,
              'Uploading file...',
              showLoading: true,
            );
            selectedUploadedFiles = selectedMedia
                .map((m) => FFUploadedFile(
                      name: m.storagePath.split('/').last,
                      bytes: m.bytes,
                      height: m.dimensions?.height,
                      width: m.dimensions?.width,
                      blurHash: m.blurHash,
                    ))
                .toList();

            downloadUrls = (await Future.wait(
              selectedMedia.map(
                (m) async => await uploadData(m.storagePath, m.bytes),
              ),
            ))
                .where((u) => u != null)
                .map((u) => u!)
                .toList();
          } finally {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            _model.isDataUploading = false;
          }
          if (selectedUploadedFiles.length == selectedMedia.length &&
              downloadUrls.length == selectedMedia.length) {
            setState(() {
              _model.uploadedLocalFile = selectedUploadedFiles.first;
              _model.uploadedFileUrl = downloadUrls.first;
            });
            showUploadMessage(context, 'Success!');
          } else {
            setState(() {});
            showUploadMessage(context, 'Failed to upload data');
            return;
          }
        }
      },
      child: Container(
        width: 100.0,
        height: 100.0,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Stack(
          alignment: const AlignmentDirectional(0.0, 0.0),
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                width: 90.0,
                height: 90.0,
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  'https://images.unsplash.com/photo-1536164261511-3a17e671d380?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=630&q=80',
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
            Align(
              alignment: const AlignmentDirectional(0.0, 1.0),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  width: 90.0,
                  height: 90.0,
                  clipBehavior: Clip.antiAlias,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    _model.uploadedFileUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
