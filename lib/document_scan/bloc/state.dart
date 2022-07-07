import 'package:camera/camera.dart';

abstract class DocumentScanState {}

class DocumentScanFailureState extends DocumentScanState {
  final DocumentScanLoadedState? successState;

  DocumentScanFailureState({this.successState});
}

class DocumentScanLoadingState extends DocumentScanState {}

class DocumentScanLoadedState extends DocumentScanState {
  final CameraController controller;
  final XFile? picture;
  final String? encodedPicture;
  final bool showHint;
  final bool imageUploading;

  DocumentScanLoadedState({
    this.picture,
    this.encodedPicture,
    required this.controller,
    required this.showHint,
    required this.imageUploading,
  });

  bool get hasEncodedPicture => encodedPicture != null;

  DocumentScanLoadedState copyWith({
    CameraController? controller,
    XFile? picture,
    String? encodedPicture,
    bool? showHint,
    bool? imageUploading,
  }) =>
      DocumentScanLoadedState(
        controller: controller ?? this.controller,
        picture: picture ?? this.picture,
        encodedPicture: encodedPicture ?? this.encodedPicture,
        showHint: showHint ?? this.showHint,
        imageUploading: imageUploading ?? this.imageUploading,
      );
}
