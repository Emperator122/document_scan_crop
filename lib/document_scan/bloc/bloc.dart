import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_image/flutter_native_image.dart';
import 'package:image_picker/image_picker.dart';

import 'event.dart';
import 'state.dart';

class DocumentScanBloc extends Bloc<DocumentScanEvent, DocumentScanState> {
  late final List<CameraDescription> _cameras;
  late final CameraController _controller;
  late final CameraDescription _camera;

  DocumentScanBloc() : super(DocumentScanLoadingState()) {
    add(const DocumentScanEvent.initial());
  }

  DocumentScanLoadedState get _imageUploadingState => DocumentScanLoadedState(
        controller: _controller,
        showHint: false,
        imageUploading: true,
      );

  DocumentScanLoadedState get _controllerInitializedState =>
      DocumentScanLoadedState(
        controller: _controller,
        showHint: false,
        imageUploading: false,
      );

  DocumentScanFailureState get _documentScanFailureState {
    DocumentScanLoadedState? loadedState;
    if (state is DocumentScanLoadedState) {
      loadedState = state as DocumentScanLoadedState;
    } else if (state is DocumentScanFailureState) {
      loadedState = (state as DocumentScanFailureState).successState;
    }

    loadedState = loadedState?.copyWith(imageUploading: false);
    return DocumentScanFailureState(successState: loadedState);
  }

  @override
  Stream<DocumentScanState> mapEventToState(DocumentScanEvent event) =>
      event.when(
        initial: _onInitial,
        makePhoto: _onMakePhoto,
        pickFromFile: _onPickFromFile,
        closeHint: _onCloseHint,
        initialController: _onInitialController,
      );

  Stream<DocumentScanState> _onInitial() async* {
    yield DocumentScanLoadingState();
    _cameras = await availableCameras();
    _camera = _cameras.first;

    _controller = CameraController(
      _camera,
      ResolutionPreset.medium,
    );

    yield* _onInitialController();
  }

  Stream<DocumentScanState> _onInitialController() async* {
    if (!_controller.value.isInitialized) {
      await _controller.initialize();
    }

    yield _controllerInitializedState;
  }

  Stream<DocumentScanState> _onMakePhoto(Size previewSize, Size cropFrameSize) async* {
    yield _imageUploadingState;
    final picture = await _controller.takePicture();

    yield* _pictureProcess(picture, previewSize, cropFrameSize);
  }

  Stream<DocumentScanState> _onPickFromFile() async* {
    final picture =
        await ImagePicker.platform.getImage(source: ImageSource.gallery);

    if (picture == null) {
      yield _documentScanFailureState;
      return;
    }
    yield _imageUploadingState;
    yield* _pictureProcess(picture);
  }

  Stream<DocumentScanState> _pictureProcess(XFile picture,
      [Size? previewSize, Size? cropFrameSize]) async* {
    try {
      final path = picture.path;

      late final File pictureFile;
      if(previewSize != null && cropFrameSize != null) {
        pictureFile = await _cropImage(path, previewSize, cropFrameSize);
      } else {
        pictureFile = File(path);
      }


      List<int> imageBytes = pictureFile.readAsBytesSync();
      final base64Image = base64Encode(imageBytes);

      yield DocumentScanLoadedState(
        controller: _controller,
        picture: picture,
        encodedPicture: base64Image,
        showHint: false,
        imageUploading: false,
      );
    } catch (e) {
      yield _documentScanFailureState;
    }
  }

  Stream<DocumentScanState> _onCloseHint() async* {
    yield _controllerInitializedState;
  }

  Future<File> _cropImage(String path, Size previewSize, Size cropFrameSize) async {
    // get image properties
    final properties = await FlutterNativeImage.getImageProperties(path);

    // check image size
    if (properties.height == null || properties.width == null) {
      throw const FileSystemException('Wrong image file');
    }

    // calculate ratio
    final framePreviewRatio = Size(
      cropFrameSize.width / previewSize.width,
      cropFrameSize.height / previewSize.height,
    );

    // get correct image size
    final imgSize = properties.orientatedSize;

    // calculate crop size using ratio
    final cropSize = Size(
      imgSize.width * framePreviewRatio.width,
      imgSize.height * framePreviewRatio.height,
    );

    // calculate top-left point of crop area in image
    final originPoint =
        imgSize.center(Offset(-cropSize.width / 2, -cropSize.height / 2));

    // crop image and return it
    late final File croppedFile;
    if (properties.orientation.isLandscape) {
      croppedFile = await FlutterNativeImage.cropImage(
        path,
        originPoint.dx.round(),
        originPoint.dy.round(),
        cropSize.width.round(),
        cropSize.height.round(),
      );
    } else {
      croppedFile = await FlutterNativeImage.cropImage(
        path,
        originPoint.dy.round(),
        originPoint.dx.round(),
        cropSize.height.round(),
        cropSize.width.round(),
      );
    }

    return croppedFile;
  }
}

extension ImgPropsExt on ImageProperties {
  int? get shortestSide =>
      width != null && height != null ? min(width!, height!) : null;
  int? get longestSide =>
      width != null && height != null ? max(width!, height!) : null;

  Size get orientatedSize {
    assert(width != null && height != null, 'can\'t get image size');
    return Size(
      orientation.isLandscape
          ? longestSide! * 1.0
          : shortestSide! * 1.0,
      orientation.isLandscape
          ? shortestSide! * 1.0
          : longestSide! * 1.0,
    );
  }
}

extension on ImageOrientation {
  bool get isLandscape =>
      this == ImageOrientation.normal || this == ImageOrientation.rotate180;
}
