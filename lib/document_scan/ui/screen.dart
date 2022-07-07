import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/event.dart';
import 'widgets/horizontal_camera_widget.dart';
import 'widgets/vertical_camera_widget.dart';
import '../bloc/bloc.dart';
import '../bloc/state.dart';

class ScanDocumentScreen extends StatefulWidget {
  static const id = '/scanDocument';

  const ScanDocumentScreen({
    Key? key,
  }) : super(key: key);

  @override
  ScanDocumentScreenState createState() => ScanDocumentScreenState();
}

class ScanDocumentScreenState extends State<ScanDocumentScreen>
    with WidgetsBindingObserver {
  late final DocumentScanBloc _bloc;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    _bloc = context.read<DocumentScanBloc>();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    if (state == AppLifecycleState.resumed) {
      _bloc.add(const DocumentScanEvent.initialController());
    }
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    if (_bloc.state is DocumentScanLoadedState) {
      (_bloc.state as DocumentScanLoadedState).controller.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: (MediaQuery.of(context).orientation == Orientation.portrait)
          ? AppBar(
              title: const Text('Image Crop Test'),
            )
          : null,
      body: BlocListener<DocumentScanBloc, DocumentScanState>(
        bloc: _bloc,
        listener: (context, state) {
          if (state is DocumentScanFailureState) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Неизвестная ошибка'),
              ),
            );
          } else if (state is DocumentScanLoadedState &&
              state.hasEncodedPicture) {
            showDialog(
                context: context,
                builder: (context) {
                  return PageView(
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                              child: Image.file(File(state.picture!.path))),
                          Container(
                              decoration:
                                  const BoxDecoration(color: Colors.white),
                              child: const Text('Original')),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                              child: Image.memory(
                                  base64Decode(state.encodedPicture!))),
                          Container(
                              decoration:
                                  const BoxDecoration(color: Colors.white),
                              child: const Text('Cropped')),
                        ],
                      ),
                    ],
                  );
                });
          }
        },
        child: BlocBuilder<DocumentScanBloc, DocumentScanState>(
          bloc: _bloc,
          builder: (context, state) {
            if (state is DocumentScanLoadingState) {
              return const Center(child: CircularProgressIndicator());
            }

            DocumentScanLoadedState? loadedState;
            if (state is DocumentScanFailureState) {
              loadedState = state.successState;
            } else if (state is DocumentScanLoadedState) {
              loadedState = state;
            }

            if (loadedState != null) {
              if (MediaQuery.of(context).orientation == Orientation.portrait) {
                return VerticalCameraWidget(
                  bloc: _bloc,
                  loadedState: loadedState,
                );
              } else {
                return HorizontalCameraWidget(
                  bloc: _bloc,
                  loadedState: loadedState,
                );
              }
            }
            return const SizedBox();
          },
        ),
      ),
    );
  }
}
