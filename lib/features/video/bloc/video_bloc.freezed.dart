// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$VideoEvent {
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
    required TResult Function(_InitializeVideoEvent value) initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeVideoEvent value)? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeVideoEvent value)? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoEventCopyWith<$Res> {
  factory $VideoEventCopyWith(
          VideoEvent value, $Res Function(VideoEvent) then) =
      _$VideoEventCopyWithImpl<$Res, VideoEvent>;
}

/// @nodoc
class _$VideoEventCopyWithImpl<$Res, $Val extends VideoEvent>
    implements $VideoEventCopyWith<$Res> {
  _$VideoEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializeVideoEventImplCopyWith<$Res> {
  factory _$$InitializeVideoEventImplCopyWith(_$InitializeVideoEventImpl value,
          $Res Function(_$InitializeVideoEventImpl) then) =
      __$$InitializeVideoEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeVideoEventImplCopyWithImpl<$Res>
    extends _$VideoEventCopyWithImpl<$Res, _$InitializeVideoEventImpl>
    implements _$$InitializeVideoEventImplCopyWith<$Res> {
  __$$InitializeVideoEventImplCopyWithImpl(_$InitializeVideoEventImpl _value,
      $Res Function(_$InitializeVideoEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializeVideoEventImpl extends _InitializeVideoEvent {
  const _$InitializeVideoEventImpl() : super._();

  @override
  String toString() {
    return 'VideoEvent.initialize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeVideoEventImpl);
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
    required TResult Function(_InitializeVideoEvent value) initialize,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeVideoEvent value)? initialize,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeVideoEvent value)? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _InitializeVideoEvent extends VideoEvent {
  const factory _InitializeVideoEvent() = _$InitializeVideoEventImpl;
  const _InitializeVideoEvent._() : super._();
}

/// @nodoc
mixin _$VideoState {
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
    required TResult Function(_InitialVideoState value) initial,
    required TResult Function(_LoadingVideoState value) loading,
    required TResult Function(_IdleVideoState value) idle,
    required TResult Function(_ErrorVideoState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialVideoState value)? initial,
    TResult? Function(_LoadingVideoState value)? loading,
    TResult? Function(_IdleVideoState value)? idle,
    TResult? Function(_ErrorVideoState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialVideoState value)? initial,
    TResult Function(_LoadingVideoState value)? loading,
    TResult Function(_IdleVideoState value)? idle,
    TResult Function(_ErrorVideoState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoStateCopyWith<$Res> {
  factory $VideoStateCopyWith(
          VideoState value, $Res Function(VideoState) then) =
      _$VideoStateCopyWithImpl<$Res, VideoState>;
}

/// @nodoc
class _$VideoStateCopyWithImpl<$Res, $Val extends VideoState>
    implements $VideoStateCopyWith<$Res> {
  _$VideoStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialVideoStateImplCopyWith<$Res> {
  factory _$$InitialVideoStateImplCopyWith(_$InitialVideoStateImpl value,
          $Res Function(_$InitialVideoStateImpl) then) =
      __$$InitialVideoStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialVideoStateImplCopyWithImpl<$Res>
    extends _$VideoStateCopyWithImpl<$Res, _$InitialVideoStateImpl>
    implements _$$InitialVideoStateImplCopyWith<$Res> {
  __$$InitialVideoStateImplCopyWithImpl(_$InitialVideoStateImpl _value,
      $Res Function(_$InitialVideoStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialVideoStateImpl extends _InitialVideoState {
  const _$InitialVideoStateImpl() : super._();

  @override
  String toString() {
    return 'VideoState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialVideoStateImpl);
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
    required TResult Function(_InitialVideoState value) initial,
    required TResult Function(_LoadingVideoState value) loading,
    required TResult Function(_IdleVideoState value) idle,
    required TResult Function(_ErrorVideoState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialVideoState value)? initial,
    TResult? Function(_LoadingVideoState value)? loading,
    TResult? Function(_IdleVideoState value)? idle,
    TResult? Function(_ErrorVideoState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialVideoState value)? initial,
    TResult Function(_LoadingVideoState value)? loading,
    TResult Function(_IdleVideoState value)? idle,
    TResult Function(_ErrorVideoState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialVideoState extends VideoState {
  const factory _InitialVideoState() = _$InitialVideoStateImpl;
  const _InitialVideoState._() : super._();
}

/// @nodoc
abstract class _$$LoadingVideoStateImplCopyWith<$Res> {
  factory _$$LoadingVideoStateImplCopyWith(_$LoadingVideoStateImpl value,
          $Res Function(_$LoadingVideoStateImpl) then) =
      __$$LoadingVideoStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingVideoStateImplCopyWithImpl<$Res>
    extends _$VideoStateCopyWithImpl<$Res, _$LoadingVideoStateImpl>
    implements _$$LoadingVideoStateImplCopyWith<$Res> {
  __$$LoadingVideoStateImplCopyWithImpl(_$LoadingVideoStateImpl _value,
      $Res Function(_$LoadingVideoStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingVideoStateImpl extends _LoadingVideoState {
  const _$LoadingVideoStateImpl() : super._();

  @override
  String toString() {
    return 'VideoState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingVideoStateImpl);
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
    required TResult Function(_InitialVideoState value) initial,
    required TResult Function(_LoadingVideoState value) loading,
    required TResult Function(_IdleVideoState value) idle,
    required TResult Function(_ErrorVideoState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialVideoState value)? initial,
    TResult? Function(_LoadingVideoState value)? loading,
    TResult? Function(_IdleVideoState value)? idle,
    TResult? Function(_ErrorVideoState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialVideoState value)? initial,
    TResult Function(_LoadingVideoState value)? loading,
    TResult Function(_IdleVideoState value)? idle,
    TResult Function(_ErrorVideoState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingVideoState extends VideoState {
  const factory _LoadingVideoState() = _$LoadingVideoStateImpl;
  const _LoadingVideoState._() : super._();
}

/// @nodoc
abstract class _$$IdleVideoStateImplCopyWith<$Res> {
  factory _$$IdleVideoStateImplCopyWith(_$IdleVideoStateImpl value,
          $Res Function(_$IdleVideoStateImpl) then) =
      __$$IdleVideoStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleVideoStateImplCopyWithImpl<$Res>
    extends _$VideoStateCopyWithImpl<$Res, _$IdleVideoStateImpl>
    implements _$$IdleVideoStateImplCopyWith<$Res> {
  __$$IdleVideoStateImplCopyWithImpl(
      _$IdleVideoStateImpl _value, $Res Function(_$IdleVideoStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdleVideoStateImpl extends _IdleVideoState {
  const _$IdleVideoStateImpl() : super._();

  @override
  String toString() {
    return 'VideoState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IdleVideoStateImpl);
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
    required TResult Function(_InitialVideoState value) initial,
    required TResult Function(_LoadingVideoState value) loading,
    required TResult Function(_IdleVideoState value) idle,
    required TResult Function(_ErrorVideoState value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialVideoState value)? initial,
    TResult? Function(_LoadingVideoState value)? loading,
    TResult? Function(_IdleVideoState value)? idle,
    TResult? Function(_ErrorVideoState value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialVideoState value)? initial,
    TResult Function(_LoadingVideoState value)? loading,
    TResult Function(_IdleVideoState value)? idle,
    TResult Function(_ErrorVideoState value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _IdleVideoState extends VideoState {
  const factory _IdleVideoState() = _$IdleVideoStateImpl;
  const _IdleVideoState._() : super._();
}

/// @nodoc
abstract class _$$ErrorVideoStateImplCopyWith<$Res> {
  factory _$$ErrorVideoStateImplCopyWith(_$ErrorVideoStateImpl value,
          $Res Function(_$ErrorVideoStateImpl) then) =
      __$$ErrorVideoStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorVideoStateImplCopyWithImpl<$Res>
    extends _$VideoStateCopyWithImpl<$Res, _$ErrorVideoStateImpl>
    implements _$$ErrorVideoStateImplCopyWith<$Res> {
  __$$ErrorVideoStateImplCopyWithImpl(
      _$ErrorVideoStateImpl _value, $Res Function(_$ErrorVideoStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorVideoStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorVideoStateImpl extends _ErrorVideoState {
  const _$ErrorVideoStateImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'VideoState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorVideoStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorVideoStateImplCopyWith<_$ErrorVideoStateImpl> get copyWith =>
      __$$ErrorVideoStateImplCopyWithImpl<_$ErrorVideoStateImpl>(
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
    required TResult Function(_InitialVideoState value) initial,
    required TResult Function(_LoadingVideoState value) loading,
    required TResult Function(_IdleVideoState value) idle,
    required TResult Function(_ErrorVideoState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialVideoState value)? initial,
    TResult? Function(_LoadingVideoState value)? loading,
    TResult? Function(_IdleVideoState value)? idle,
    TResult? Function(_ErrorVideoState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialVideoState value)? initial,
    TResult Function(_LoadingVideoState value)? loading,
    TResult Function(_IdleVideoState value)? idle,
    TResult Function(_ErrorVideoState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorVideoState extends VideoState {
  const factory _ErrorVideoState({required final String message}) =
      _$ErrorVideoStateImpl;
  const _ErrorVideoState._() : super._();

  String get message;

  /// Create a copy of VideoState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorVideoStateImplCopyWith<_$ErrorVideoStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VideoSideEffect {
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
    required TResult Function(_ErrorVideoSideEffect value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ErrorVideoSideEffect value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorVideoSideEffect value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoSideEffectCopyWith<$Res> {
  factory $VideoSideEffectCopyWith(
          VideoSideEffect value, $Res Function(VideoSideEffect) then) =
      _$VideoSideEffectCopyWithImpl<$Res, VideoSideEffect>;
}

/// @nodoc
class _$VideoSideEffectCopyWithImpl<$Res, $Val extends VideoSideEffect>
    implements $VideoSideEffectCopyWith<$Res> {
  _$VideoSideEffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VideoSideEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ErrorVideoSideEffectImplCopyWith<$Res> {
  factory _$$ErrorVideoSideEffectImplCopyWith(_$ErrorVideoSideEffectImpl value,
          $Res Function(_$ErrorVideoSideEffectImpl) then) =
      __$$ErrorVideoSideEffectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorVideoSideEffectImplCopyWithImpl<$Res>
    extends _$VideoSideEffectCopyWithImpl<$Res, _$ErrorVideoSideEffectImpl>
    implements _$$ErrorVideoSideEffectImplCopyWith<$Res> {
  __$$ErrorVideoSideEffectImplCopyWithImpl(_$ErrorVideoSideEffectImpl _value,
      $Res Function(_$ErrorVideoSideEffectImpl) _then)
      : super(_value, _then);

  /// Create a copy of VideoSideEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorVideoSideEffectImpl extends _ErrorVideoSideEffect {
  const _$ErrorVideoSideEffectImpl() : super._();

  @override
  String toString() {
    return 'VideoSideEffect.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorVideoSideEffectImpl);
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
    required TResult Function(_ErrorVideoSideEffect value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ErrorVideoSideEffect value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorVideoSideEffect value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorVideoSideEffect extends VideoSideEffect {
  const factory _ErrorVideoSideEffect() = _$ErrorVideoSideEffectImpl;
  const _ErrorVideoSideEffect._() : super._();
}
