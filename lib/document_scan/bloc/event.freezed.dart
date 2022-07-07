// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DocumentScanEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Size previewSize, Size cropFrameSize) makePhoto,
    required TResult Function() pickFromFile,
    required TResult Function() closeHint,
    required TResult Function() initialController,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Size previewSize, Size cropFrameSize)? makePhoto,
    TResult Function()? pickFromFile,
    TResult Function()? closeHint,
    TResult Function()? initialController,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Size previewSize, Size cropFrameSize)? makePhoto,
    TResult Function()? pickFromFile,
    TResult Function()? closeHint,
    TResult Function()? initialController,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialDocumentScanEvent value) initial,
    required TResult Function(MakePhotoDocumentScanEvent value) makePhoto,
    required TResult Function(PickFromFileDocumentScanEvent value) pickFromFile,
    required TResult Function(CloseHintDocumentScanEvent value) closeHint,
    required TResult Function(InitialControllerDocumentScanEvent value)
        initialController,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialDocumentScanEvent value)? initial,
    TResult Function(MakePhotoDocumentScanEvent value)? makePhoto,
    TResult Function(PickFromFileDocumentScanEvent value)? pickFromFile,
    TResult Function(CloseHintDocumentScanEvent value)? closeHint,
    TResult Function(InitialControllerDocumentScanEvent value)?
        initialController,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDocumentScanEvent value)? initial,
    TResult Function(MakePhotoDocumentScanEvent value)? makePhoto,
    TResult Function(PickFromFileDocumentScanEvent value)? pickFromFile,
    TResult Function(CloseHintDocumentScanEvent value)? closeHint,
    TResult Function(InitialControllerDocumentScanEvent value)?
        initialController,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DocumentScanEventCopyWith<$Res> {
  factory $DocumentScanEventCopyWith(
          DocumentScanEvent value, $Res Function(DocumentScanEvent) then) =
      _$DocumentScanEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$DocumentScanEventCopyWithImpl<$Res>
    implements $DocumentScanEventCopyWith<$Res> {
  _$DocumentScanEventCopyWithImpl(this._value, this._then);

  final DocumentScanEvent _value;
  // ignore: unused_field
  final $Res Function(DocumentScanEvent) _then;
}

/// @nodoc
abstract class _$$InitialDocumentScanEventCopyWith<$Res> {
  factory _$$InitialDocumentScanEventCopyWith(_$InitialDocumentScanEvent value,
          $Res Function(_$InitialDocumentScanEvent) then) =
      __$$InitialDocumentScanEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialDocumentScanEventCopyWithImpl<$Res>
    extends _$DocumentScanEventCopyWithImpl<$Res>
    implements _$$InitialDocumentScanEventCopyWith<$Res> {
  __$$InitialDocumentScanEventCopyWithImpl(_$InitialDocumentScanEvent _value,
      $Res Function(_$InitialDocumentScanEvent) _then)
      : super(_value, (v) => _then(v as _$InitialDocumentScanEvent));

  @override
  _$InitialDocumentScanEvent get _value =>
      super._value as _$InitialDocumentScanEvent;
}

/// @nodoc

class _$InitialDocumentScanEvent implements InitialDocumentScanEvent {
  const _$InitialDocumentScanEvent();

  @override
  String toString() {
    return 'DocumentScanEvent.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialDocumentScanEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Size previewSize, Size cropFrameSize) makePhoto,
    required TResult Function() pickFromFile,
    required TResult Function() closeHint,
    required TResult Function() initialController,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Size previewSize, Size cropFrameSize)? makePhoto,
    TResult Function()? pickFromFile,
    TResult Function()? closeHint,
    TResult Function()? initialController,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Size previewSize, Size cropFrameSize)? makePhoto,
    TResult Function()? pickFromFile,
    TResult Function()? closeHint,
    TResult Function()? initialController,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialDocumentScanEvent value) initial,
    required TResult Function(MakePhotoDocumentScanEvent value) makePhoto,
    required TResult Function(PickFromFileDocumentScanEvent value) pickFromFile,
    required TResult Function(CloseHintDocumentScanEvent value) closeHint,
    required TResult Function(InitialControllerDocumentScanEvent value)
        initialController,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialDocumentScanEvent value)? initial,
    TResult Function(MakePhotoDocumentScanEvent value)? makePhoto,
    TResult Function(PickFromFileDocumentScanEvent value)? pickFromFile,
    TResult Function(CloseHintDocumentScanEvent value)? closeHint,
    TResult Function(InitialControllerDocumentScanEvent value)?
        initialController,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDocumentScanEvent value)? initial,
    TResult Function(MakePhotoDocumentScanEvent value)? makePhoto,
    TResult Function(PickFromFileDocumentScanEvent value)? pickFromFile,
    TResult Function(CloseHintDocumentScanEvent value)? closeHint,
    TResult Function(InitialControllerDocumentScanEvent value)?
        initialController,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialDocumentScanEvent implements DocumentScanEvent {
  const factory InitialDocumentScanEvent() = _$InitialDocumentScanEvent;
}

/// @nodoc
abstract class _$$MakePhotoDocumentScanEventCopyWith<$Res> {
  factory _$$MakePhotoDocumentScanEventCopyWith(
          _$MakePhotoDocumentScanEvent value,
          $Res Function(_$MakePhotoDocumentScanEvent) then) =
      __$$MakePhotoDocumentScanEventCopyWithImpl<$Res>;
  $Res call({Size previewSize, Size cropFrameSize});
}

/// @nodoc
class __$$MakePhotoDocumentScanEventCopyWithImpl<$Res>
    extends _$DocumentScanEventCopyWithImpl<$Res>
    implements _$$MakePhotoDocumentScanEventCopyWith<$Res> {
  __$$MakePhotoDocumentScanEventCopyWithImpl(
      _$MakePhotoDocumentScanEvent _value,
      $Res Function(_$MakePhotoDocumentScanEvent) _then)
      : super(_value, (v) => _then(v as _$MakePhotoDocumentScanEvent));

  @override
  _$MakePhotoDocumentScanEvent get _value =>
      super._value as _$MakePhotoDocumentScanEvent;

  @override
  $Res call({
    Object? previewSize = freezed,
    Object? cropFrameSize = freezed,
  }) {
    return _then(_$MakePhotoDocumentScanEvent(
      previewSize == freezed
          ? _value.previewSize
          : previewSize // ignore: cast_nullable_to_non_nullable
              as Size,
      cropFrameSize == freezed
          ? _value.cropFrameSize
          : cropFrameSize // ignore: cast_nullable_to_non_nullable
              as Size,
    ));
  }
}

/// @nodoc

class _$MakePhotoDocumentScanEvent implements MakePhotoDocumentScanEvent {
  const _$MakePhotoDocumentScanEvent(this.previewSize, this.cropFrameSize);

  @override
  final Size previewSize;
  @override
  final Size cropFrameSize;

  @override
  String toString() {
    return 'DocumentScanEvent.makePhoto(previewSize: $previewSize, cropFrameSize: $cropFrameSize)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MakePhotoDocumentScanEvent &&
            const DeepCollectionEquality()
                .equals(other.previewSize, previewSize) &&
            const DeepCollectionEquality()
                .equals(other.cropFrameSize, cropFrameSize));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(previewSize),
      const DeepCollectionEquality().hash(cropFrameSize));

  @JsonKey(ignore: true)
  @override
  _$$MakePhotoDocumentScanEventCopyWith<_$MakePhotoDocumentScanEvent>
      get copyWith => __$$MakePhotoDocumentScanEventCopyWithImpl<
          _$MakePhotoDocumentScanEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Size previewSize, Size cropFrameSize) makePhoto,
    required TResult Function() pickFromFile,
    required TResult Function() closeHint,
    required TResult Function() initialController,
  }) {
    return makePhoto(previewSize, cropFrameSize);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Size previewSize, Size cropFrameSize)? makePhoto,
    TResult Function()? pickFromFile,
    TResult Function()? closeHint,
    TResult Function()? initialController,
  }) {
    return makePhoto?.call(previewSize, cropFrameSize);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Size previewSize, Size cropFrameSize)? makePhoto,
    TResult Function()? pickFromFile,
    TResult Function()? closeHint,
    TResult Function()? initialController,
    required TResult orElse(),
  }) {
    if (makePhoto != null) {
      return makePhoto(previewSize, cropFrameSize);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialDocumentScanEvent value) initial,
    required TResult Function(MakePhotoDocumentScanEvent value) makePhoto,
    required TResult Function(PickFromFileDocumentScanEvent value) pickFromFile,
    required TResult Function(CloseHintDocumentScanEvent value) closeHint,
    required TResult Function(InitialControllerDocumentScanEvent value)
        initialController,
  }) {
    return makePhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialDocumentScanEvent value)? initial,
    TResult Function(MakePhotoDocumentScanEvent value)? makePhoto,
    TResult Function(PickFromFileDocumentScanEvent value)? pickFromFile,
    TResult Function(CloseHintDocumentScanEvent value)? closeHint,
    TResult Function(InitialControllerDocumentScanEvent value)?
        initialController,
  }) {
    return makePhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDocumentScanEvent value)? initial,
    TResult Function(MakePhotoDocumentScanEvent value)? makePhoto,
    TResult Function(PickFromFileDocumentScanEvent value)? pickFromFile,
    TResult Function(CloseHintDocumentScanEvent value)? closeHint,
    TResult Function(InitialControllerDocumentScanEvent value)?
        initialController,
    required TResult orElse(),
  }) {
    if (makePhoto != null) {
      return makePhoto(this);
    }
    return orElse();
  }
}

abstract class MakePhotoDocumentScanEvent implements DocumentScanEvent {
  const factory MakePhotoDocumentScanEvent(
          final Size previewSize, final Size cropFrameSize) =
      _$MakePhotoDocumentScanEvent;

  Size get previewSize => throw _privateConstructorUsedError;
  Size get cropFrameSize => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$MakePhotoDocumentScanEventCopyWith<_$MakePhotoDocumentScanEvent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PickFromFileDocumentScanEventCopyWith<$Res> {
  factory _$$PickFromFileDocumentScanEventCopyWith(
          _$PickFromFileDocumentScanEvent value,
          $Res Function(_$PickFromFileDocumentScanEvent) then) =
      __$$PickFromFileDocumentScanEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PickFromFileDocumentScanEventCopyWithImpl<$Res>
    extends _$DocumentScanEventCopyWithImpl<$Res>
    implements _$$PickFromFileDocumentScanEventCopyWith<$Res> {
  __$$PickFromFileDocumentScanEventCopyWithImpl(
      _$PickFromFileDocumentScanEvent _value,
      $Res Function(_$PickFromFileDocumentScanEvent) _then)
      : super(_value, (v) => _then(v as _$PickFromFileDocumentScanEvent));

  @override
  _$PickFromFileDocumentScanEvent get _value =>
      super._value as _$PickFromFileDocumentScanEvent;
}

/// @nodoc

class _$PickFromFileDocumentScanEvent implements PickFromFileDocumentScanEvent {
  const _$PickFromFileDocumentScanEvent();

  @override
  String toString() {
    return 'DocumentScanEvent.pickFromFile()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PickFromFileDocumentScanEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Size previewSize, Size cropFrameSize) makePhoto,
    required TResult Function() pickFromFile,
    required TResult Function() closeHint,
    required TResult Function() initialController,
  }) {
    return pickFromFile();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Size previewSize, Size cropFrameSize)? makePhoto,
    TResult Function()? pickFromFile,
    TResult Function()? closeHint,
    TResult Function()? initialController,
  }) {
    return pickFromFile?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Size previewSize, Size cropFrameSize)? makePhoto,
    TResult Function()? pickFromFile,
    TResult Function()? closeHint,
    TResult Function()? initialController,
    required TResult orElse(),
  }) {
    if (pickFromFile != null) {
      return pickFromFile();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialDocumentScanEvent value) initial,
    required TResult Function(MakePhotoDocumentScanEvent value) makePhoto,
    required TResult Function(PickFromFileDocumentScanEvent value) pickFromFile,
    required TResult Function(CloseHintDocumentScanEvent value) closeHint,
    required TResult Function(InitialControllerDocumentScanEvent value)
        initialController,
  }) {
    return pickFromFile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialDocumentScanEvent value)? initial,
    TResult Function(MakePhotoDocumentScanEvent value)? makePhoto,
    TResult Function(PickFromFileDocumentScanEvent value)? pickFromFile,
    TResult Function(CloseHintDocumentScanEvent value)? closeHint,
    TResult Function(InitialControllerDocumentScanEvent value)?
        initialController,
  }) {
    return pickFromFile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDocumentScanEvent value)? initial,
    TResult Function(MakePhotoDocumentScanEvent value)? makePhoto,
    TResult Function(PickFromFileDocumentScanEvent value)? pickFromFile,
    TResult Function(CloseHintDocumentScanEvent value)? closeHint,
    TResult Function(InitialControllerDocumentScanEvent value)?
        initialController,
    required TResult orElse(),
  }) {
    if (pickFromFile != null) {
      return pickFromFile(this);
    }
    return orElse();
  }
}

abstract class PickFromFileDocumentScanEvent implements DocumentScanEvent {
  const factory PickFromFileDocumentScanEvent() =
      _$PickFromFileDocumentScanEvent;
}

/// @nodoc
abstract class _$$CloseHintDocumentScanEventCopyWith<$Res> {
  factory _$$CloseHintDocumentScanEventCopyWith(
          _$CloseHintDocumentScanEvent value,
          $Res Function(_$CloseHintDocumentScanEvent) then) =
      __$$CloseHintDocumentScanEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CloseHintDocumentScanEventCopyWithImpl<$Res>
    extends _$DocumentScanEventCopyWithImpl<$Res>
    implements _$$CloseHintDocumentScanEventCopyWith<$Res> {
  __$$CloseHintDocumentScanEventCopyWithImpl(
      _$CloseHintDocumentScanEvent _value,
      $Res Function(_$CloseHintDocumentScanEvent) _then)
      : super(_value, (v) => _then(v as _$CloseHintDocumentScanEvent));

  @override
  _$CloseHintDocumentScanEvent get _value =>
      super._value as _$CloseHintDocumentScanEvent;
}

/// @nodoc

class _$CloseHintDocumentScanEvent implements CloseHintDocumentScanEvent {
  const _$CloseHintDocumentScanEvent();

  @override
  String toString() {
    return 'DocumentScanEvent.closeHint()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CloseHintDocumentScanEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Size previewSize, Size cropFrameSize) makePhoto,
    required TResult Function() pickFromFile,
    required TResult Function() closeHint,
    required TResult Function() initialController,
  }) {
    return closeHint();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Size previewSize, Size cropFrameSize)? makePhoto,
    TResult Function()? pickFromFile,
    TResult Function()? closeHint,
    TResult Function()? initialController,
  }) {
    return closeHint?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Size previewSize, Size cropFrameSize)? makePhoto,
    TResult Function()? pickFromFile,
    TResult Function()? closeHint,
    TResult Function()? initialController,
    required TResult orElse(),
  }) {
    if (closeHint != null) {
      return closeHint();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialDocumentScanEvent value) initial,
    required TResult Function(MakePhotoDocumentScanEvent value) makePhoto,
    required TResult Function(PickFromFileDocumentScanEvent value) pickFromFile,
    required TResult Function(CloseHintDocumentScanEvent value) closeHint,
    required TResult Function(InitialControllerDocumentScanEvent value)
        initialController,
  }) {
    return closeHint(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialDocumentScanEvent value)? initial,
    TResult Function(MakePhotoDocumentScanEvent value)? makePhoto,
    TResult Function(PickFromFileDocumentScanEvent value)? pickFromFile,
    TResult Function(CloseHintDocumentScanEvent value)? closeHint,
    TResult Function(InitialControllerDocumentScanEvent value)?
        initialController,
  }) {
    return closeHint?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDocumentScanEvent value)? initial,
    TResult Function(MakePhotoDocumentScanEvent value)? makePhoto,
    TResult Function(PickFromFileDocumentScanEvent value)? pickFromFile,
    TResult Function(CloseHintDocumentScanEvent value)? closeHint,
    TResult Function(InitialControllerDocumentScanEvent value)?
        initialController,
    required TResult orElse(),
  }) {
    if (closeHint != null) {
      return closeHint(this);
    }
    return orElse();
  }
}

abstract class CloseHintDocumentScanEvent implements DocumentScanEvent {
  const factory CloseHintDocumentScanEvent() = _$CloseHintDocumentScanEvent;
}

/// @nodoc
abstract class _$$InitialControllerDocumentScanEventCopyWith<$Res> {
  factory _$$InitialControllerDocumentScanEventCopyWith(
          _$InitialControllerDocumentScanEvent value,
          $Res Function(_$InitialControllerDocumentScanEvent) then) =
      __$$InitialControllerDocumentScanEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialControllerDocumentScanEventCopyWithImpl<$Res>
    extends _$DocumentScanEventCopyWithImpl<$Res>
    implements _$$InitialControllerDocumentScanEventCopyWith<$Res> {
  __$$InitialControllerDocumentScanEventCopyWithImpl(
      _$InitialControllerDocumentScanEvent _value,
      $Res Function(_$InitialControllerDocumentScanEvent) _then)
      : super(_value, (v) => _then(v as _$InitialControllerDocumentScanEvent));

  @override
  _$InitialControllerDocumentScanEvent get _value =>
      super._value as _$InitialControllerDocumentScanEvent;
}

/// @nodoc

class _$InitialControllerDocumentScanEvent
    implements InitialControllerDocumentScanEvent {
  const _$InitialControllerDocumentScanEvent();

  @override
  String toString() {
    return 'DocumentScanEvent.initialController()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialControllerDocumentScanEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Size previewSize, Size cropFrameSize) makePhoto,
    required TResult Function() pickFromFile,
    required TResult Function() closeHint,
    required TResult Function() initialController,
  }) {
    return initialController();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Size previewSize, Size cropFrameSize)? makePhoto,
    TResult Function()? pickFromFile,
    TResult Function()? closeHint,
    TResult Function()? initialController,
  }) {
    return initialController?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Size previewSize, Size cropFrameSize)? makePhoto,
    TResult Function()? pickFromFile,
    TResult Function()? closeHint,
    TResult Function()? initialController,
    required TResult orElse(),
  }) {
    if (initialController != null) {
      return initialController();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialDocumentScanEvent value) initial,
    required TResult Function(MakePhotoDocumentScanEvent value) makePhoto,
    required TResult Function(PickFromFileDocumentScanEvent value) pickFromFile,
    required TResult Function(CloseHintDocumentScanEvent value) closeHint,
    required TResult Function(InitialControllerDocumentScanEvent value)
        initialController,
  }) {
    return initialController(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(InitialDocumentScanEvent value)? initial,
    TResult Function(MakePhotoDocumentScanEvent value)? makePhoto,
    TResult Function(PickFromFileDocumentScanEvent value)? pickFromFile,
    TResult Function(CloseHintDocumentScanEvent value)? closeHint,
    TResult Function(InitialControllerDocumentScanEvent value)?
        initialController,
  }) {
    return initialController?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialDocumentScanEvent value)? initial,
    TResult Function(MakePhotoDocumentScanEvent value)? makePhoto,
    TResult Function(PickFromFileDocumentScanEvent value)? pickFromFile,
    TResult Function(CloseHintDocumentScanEvent value)? closeHint,
    TResult Function(InitialControllerDocumentScanEvent value)?
        initialController,
    required TResult orElse(),
  }) {
    if (initialController != null) {
      return initialController(this);
    }
    return orElse();
  }
}

abstract class InitialControllerDocumentScanEvent implements DocumentScanEvent {
  const factory InitialControllerDocumentScanEvent() =
      _$InitialControllerDocumentScanEvent;
}
