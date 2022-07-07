import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event.freezed.dart';

@freezed
abstract class DocumentScanEvent with _$DocumentScanEvent {
  const factory DocumentScanEvent.initial() = InitialDocumentScanEvent;
  const factory DocumentScanEvent.makePhoto(
    Size previewSize,
    Size cropFrameSize,
  ) = MakePhotoDocumentScanEvent;
  const factory DocumentScanEvent.pickFromFile() =
      PickFromFileDocumentScanEvent;
  const factory DocumentScanEvent.closeHint() = CloseHintDocumentScanEvent;
  const factory DocumentScanEvent.initialController() =
      InitialControllerDocumentScanEvent;
}
