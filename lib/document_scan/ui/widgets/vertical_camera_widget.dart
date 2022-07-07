import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import '../../bloc/bloc.dart';
import '../../bloc/event.dart';
import '../../bloc/state.dart';
import 'overlay_widget.dart';

class VerticalCameraWidget extends StatelessWidget {
  final DocumentScanBloc bloc;
  final DocumentScanLoadedState loadedState;
  late final GlobalKey cropFrameGlobalKey;
  late final GlobalKey cameraPreviewGlobalKey;

  VerticalCameraWidget({
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
            aspectRatio: 1 / loadedState.controller.value.aspectRatio,
            child: CameraPreview(loadedState.controller, key: cameraPreviewGlobalKey,),
          ),
        ),
        OverlayWidget(
          showHint: loadedState.showHint,
          cropFrameGlobalKey: cropFrameGlobalKey,
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding:
                const EdgeInsets.only(bottom: 80, left: 28, right: 28, top: 28),
            child: ElevatedButton(
              child: (loadedState.imageUploading)
                  ? const CircularProgressIndicator(
                      color: Colors.white,
                      strokeWidth: 1,
                    )
                  : Text(
                      (loadedState.showHint) ? 'Okay' : 'Scan!',
                      style: const TextStyle(fontSize: 14),
                    ),
              onPressed: () async {
                if (loadedState.imageUploading) {
                  return;
                }
                if (loadedState.showHint) {
                  bloc.add(const DocumentScanEvent.closeHint());
                } else {
                  final previewSize = cameraPreviewGlobalKey.currentContext!.size!;
                  final cropFrameSize = cropFrameGlobalKey.currentContext!.size!;
                  bloc.add(
                      DocumentScanEvent.makePhoto(previewSize, cropFrameSize));
                }
              },
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 18,
            ),
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(.1),
                  blurRadius: 10,
                )
              ],
            ),
            child: InkWell(
              onTap: () async {
                bloc.add(const DocumentScanEvent.pickFromFile());
              },
              child: Row(
                children: const [
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    'Выбрать из файла',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
