// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'camera_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CameraEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeCameraEvent value) initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeCameraEvent value)? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeCameraEvent value)? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraEventCopyWith<$Res> {
  factory $CameraEventCopyWith(
          CameraEvent value, $Res Function(CameraEvent) then) =
      _$CameraEventCopyWithImpl<$Res, CameraEvent>;
}

/// @nodoc
class _$CameraEventCopyWithImpl<$Res, $Val extends CameraEvent>
    implements $CameraEventCopyWith<$Res> {
  _$CameraEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CameraEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializeCameraEventImplCopyWith<$Res> {
  factory _$$InitializeCameraEventImplCopyWith(
          _$InitializeCameraEventImpl value,
          $Res Function(_$InitializeCameraEventImpl) then) =
      __$$InitializeCameraEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeCameraEventImplCopyWithImpl<$Res>
    extends _$CameraEventCopyWithImpl<$Res, _$InitializeCameraEventImpl>
    implements _$$InitializeCameraEventImplCopyWith<$Res> {
  __$$InitializeCameraEventImplCopyWithImpl(_$InitializeCameraEventImpl _value,
      $Res Function(_$InitializeCameraEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of CameraEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializeCameraEventImpl extends _InitializeCameraEvent {
  const _$InitializeCameraEventImpl() : super._();

  @override
  String toString() {
    return 'CameraEvent.initialize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeCameraEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initialize,
  }) {
    return initialize();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initialize,
  }) {
    return initialize?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeCameraEvent value) initialize,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeCameraEvent value)? initialize,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeCameraEvent value)? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _InitializeCameraEvent extends CameraEvent {
  const factory _InitializeCameraEvent() = _$InitializeCameraEventImpl;
  const _InitializeCameraEvent._() : super._();
}

/// @nodoc
mixin _$CameraState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? idle,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCameraState value) initial,
    required TResult Function(_LoadingCameraState value) loading,
    required TResult Function(_IdleCameraState value) idle,
    required TResult Function(_ErrorCameraState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCameraState value)? initial,
    TResult? Function(_LoadingCameraState value)? loading,
    TResult? Function(_IdleCameraState value)? idle,
    TResult? Function(_ErrorCameraState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCameraState value)? initial,
    TResult Function(_LoadingCameraState value)? loading,
    TResult Function(_IdleCameraState value)? idle,
    TResult Function(_ErrorCameraState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraStateCopyWith<$Res> {
  factory $CameraStateCopyWith(
          CameraState value, $Res Function(CameraState) then) =
      _$CameraStateCopyWithImpl<$Res, CameraState>;
}

/// @nodoc
class _$CameraStateCopyWithImpl<$Res, $Val extends CameraState>
    implements $CameraStateCopyWith<$Res> {
  _$CameraStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialCameraStateImplCopyWith<$Res> {
  factory _$$InitialCameraStateImplCopyWith(_$InitialCameraStateImpl value,
          $Res Function(_$InitialCameraStateImpl) then) =
      __$$InitialCameraStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCameraStateImplCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res, _$InitialCameraStateImpl>
    implements _$$InitialCameraStateImplCopyWith<$Res> {
  __$$InitialCameraStateImplCopyWithImpl(_$InitialCameraStateImpl _value,
      $Res Function(_$InitialCameraStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialCameraStateImpl extends _InitialCameraState {
  const _$InitialCameraStateImpl() : super._();

  @override
  String toString() {
    return 'CameraState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialCameraStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? idle,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function(String message)? error,
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
    required TResult Function(_InitialCameraState value) initial,
    required TResult Function(_LoadingCameraState value) loading,
    required TResult Function(_IdleCameraState value) idle,
    required TResult Function(_ErrorCameraState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCameraState value)? initial,
    TResult? Function(_LoadingCameraState value)? loading,
    TResult? Function(_IdleCameraState value)? idle,
    TResult? Function(_ErrorCameraState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCameraState value)? initial,
    TResult Function(_LoadingCameraState value)? loading,
    TResult Function(_IdleCameraState value)? idle,
    TResult Function(_ErrorCameraState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialCameraState extends CameraState {
  const factory _InitialCameraState() = _$InitialCameraStateImpl;
  const _InitialCameraState._() : super._();
}

/// @nodoc
abstract class _$$LoadingCameraStateImplCopyWith<$Res> {
  factory _$$LoadingCameraStateImplCopyWith(_$LoadingCameraStateImpl value,
          $Res Function(_$LoadingCameraStateImpl) then) =
      __$$LoadingCameraStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCameraStateImplCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res, _$LoadingCameraStateImpl>
    implements _$$LoadingCameraStateImplCopyWith<$Res> {
  __$$LoadingCameraStateImplCopyWithImpl(_$LoadingCameraStateImpl _value,
      $Res Function(_$LoadingCameraStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingCameraStateImpl extends _LoadingCameraState {
  const _$LoadingCameraStateImpl() : super._();

  @override
  String toString() {
    return 'CameraState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingCameraStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? idle,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCameraState value) initial,
    required TResult Function(_LoadingCameraState value) loading,
    required TResult Function(_IdleCameraState value) idle,
    required TResult Function(_ErrorCameraState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCameraState value)? initial,
    TResult? Function(_LoadingCameraState value)? loading,
    TResult? Function(_IdleCameraState value)? idle,
    TResult? Function(_ErrorCameraState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCameraState value)? initial,
    TResult Function(_LoadingCameraState value)? loading,
    TResult Function(_IdleCameraState value)? idle,
    TResult Function(_ErrorCameraState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingCameraState extends CameraState {
  const factory _LoadingCameraState() = _$LoadingCameraStateImpl;
  const _LoadingCameraState._() : super._();
}

/// @nodoc
abstract class _$$IdleCameraStateImplCopyWith<$Res> {
  factory _$$IdleCameraStateImplCopyWith(_$IdleCameraStateImpl value,
          $Res Function(_$IdleCameraStateImpl) then) =
      __$$IdleCameraStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleCameraStateImplCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res, _$IdleCameraStateImpl>
    implements _$$IdleCameraStateImplCopyWith<$Res> {
  __$$IdleCameraStateImplCopyWithImpl(
      _$IdleCameraStateImpl _value, $Res Function(_$IdleCameraStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdleCameraStateImpl extends _IdleCameraState {
  const _$IdleCameraStateImpl() : super._();

  @override
  String toString() {
    return 'CameraState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IdleCameraStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function(String message) error,
  }) {
    return idle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? idle,
    TResult? Function(String message)? error,
  }) {
    return idle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCameraState value) initial,
    required TResult Function(_LoadingCameraState value) loading,
    required TResult Function(_IdleCameraState value) idle,
    required TResult Function(_ErrorCameraState value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCameraState value)? initial,
    TResult? Function(_LoadingCameraState value)? loading,
    TResult? Function(_IdleCameraState value)? idle,
    TResult? Function(_ErrorCameraState value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCameraState value)? initial,
    TResult Function(_LoadingCameraState value)? loading,
    TResult Function(_IdleCameraState value)? idle,
    TResult Function(_ErrorCameraState value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _IdleCameraState extends CameraState {
  const factory _IdleCameraState() = _$IdleCameraStateImpl;
  const _IdleCameraState._() : super._();
}

/// @nodoc
abstract class _$$ErrorCameraStateImplCopyWith<$Res> {
  factory _$$ErrorCameraStateImplCopyWith(_$ErrorCameraStateImpl value,
          $Res Function(_$ErrorCameraStateImpl) then) =
      __$$ErrorCameraStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorCameraStateImplCopyWithImpl<$Res>
    extends _$CameraStateCopyWithImpl<$Res, _$ErrorCameraStateImpl>
    implements _$$ErrorCameraStateImplCopyWith<$Res> {
  __$$ErrorCameraStateImplCopyWithImpl(_$ErrorCameraStateImpl _value,
      $Res Function(_$ErrorCameraStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorCameraStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorCameraStateImpl extends _ErrorCameraState {
  const _$ErrorCameraStateImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'CameraState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorCameraStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCameraStateImplCopyWith<_$ErrorCameraStateImpl> get copyWith =>
      __$$ErrorCameraStateImplCopyWithImpl<_$ErrorCameraStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() idle,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function()? idle,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? idle,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialCameraState value) initial,
    required TResult Function(_LoadingCameraState value) loading,
    required TResult Function(_IdleCameraState value) idle,
    required TResult Function(_ErrorCameraState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialCameraState value)? initial,
    TResult? Function(_LoadingCameraState value)? loading,
    TResult? Function(_IdleCameraState value)? idle,
    TResult? Function(_ErrorCameraState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialCameraState value)? initial,
    TResult Function(_LoadingCameraState value)? loading,
    TResult Function(_IdleCameraState value)? idle,
    TResult Function(_ErrorCameraState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorCameraState extends CameraState {
  const factory _ErrorCameraState({required final String message}) =
      _$ErrorCameraStateImpl;
  const _ErrorCameraState._() : super._();

  String get message;

  /// Create a copy of CameraState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorCameraStateImplCopyWith<_$ErrorCameraStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CameraSideEffect {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ErrorCameraSideEffect value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ErrorCameraSideEffect value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorCameraSideEffect value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CameraSideEffectCopyWith<$Res> {
  factory $CameraSideEffectCopyWith(
          CameraSideEffect value, $Res Function(CameraSideEffect) then) =
      _$CameraSideEffectCopyWithImpl<$Res, CameraSideEffect>;
}

/// @nodoc
class _$CameraSideEffectCopyWithImpl<$Res, $Val extends CameraSideEffect>
    implements $CameraSideEffectCopyWith<$Res> {
  _$CameraSideEffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CameraSideEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ErrorCameraSideEffectImplCopyWith<$Res> {
  factory _$$ErrorCameraSideEffectImplCopyWith(
          _$ErrorCameraSideEffectImpl value,
          $Res Function(_$ErrorCameraSideEffectImpl) then) =
      __$$ErrorCameraSideEffectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorCameraSideEffectImplCopyWithImpl<$Res>
    extends _$CameraSideEffectCopyWithImpl<$Res, _$ErrorCameraSideEffectImpl>
    implements _$$ErrorCameraSideEffectImplCopyWith<$Res> {
  __$$ErrorCameraSideEffectImplCopyWithImpl(_$ErrorCameraSideEffectImpl _value,
      $Res Function(_$ErrorCameraSideEffectImpl) _then)
      : super(_value, _then);

  /// Create a copy of CameraSideEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorCameraSideEffectImpl extends _ErrorCameraSideEffect {
  const _$ErrorCameraSideEffectImpl() : super._();

  @override
  String toString() {
    return 'CameraSideEffect.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorCameraSideEffectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ErrorCameraSideEffect value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ErrorCameraSideEffect value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorCameraSideEffect value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorCameraSideEffect extends CameraSideEffect {
  const factory _ErrorCameraSideEffect() = _$ErrorCameraSideEffectImpl;
  const _ErrorCameraSideEffect._() : super._();
}
