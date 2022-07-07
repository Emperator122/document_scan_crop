import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import '../../bloc/bloc.dart';
import '../../bloc/event.dart';
import '../../bloc/state.dart';
import 'overlay_widget.dart';

class HorizontalCameraWidget extends StatelessWidget {
  final DocumentScanBloc bloc;
  final DocumentScanLoadedState loadedState;
  late final GlobalKey cropFrameGlobalKey;
  late final GlobalKey cameraPreviewGlobalKey;

  HorizontalCameraWidget({
    Key? key,
    required this.bloc,
    required this.loadedState,
  }) : super(key: key) {
    cropFrameGlobalKey = GlobalKey();
    cameraPreviewGlobalKey = GlobalKey();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Center(
          child: AspectRatio(
            aspectRatio: loadedState.controller.value.aspectRatio,
            child: CameraPreview(
              loadedState.controller,
              key: cameraPreviewGlobalKey,
              child: OverlayWidget(
                showHint: loadedState.showHint,
                cropFrameGlobalKey: cropFrameGlobalKey,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: SizedBox(
              height: 35,
              width: MediaQuery.of(context).size.width * 0.5,
              child: ElevatedButton(
                child: (loadedState.imageUploading)
                    ? const SizedBox(
                        height: 30,
                        child: CircularProgressIndicator(
                          color: Colors.white,
                          strokeWidth: 1,
                        ),
                      )
                    : const Text(
                        'Scan!',
                      ),
                onPressed: () async {
                  if (loadedState.imageUploading) {
                    return;
                  }

                  final previewSize = cameraPreviewGlobalKey.currentContext!.size!;
                  final cropFrameSize = cropFrameGlobalKey.currentContext!.size!;

                  bloc.add(
                      DocumentScanEvent.makePhoto(previewSize, cropFrameSize));
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
