// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gallery_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GalleryEvent {
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
    required TResult Function(_InitializeGalleryEvent value) initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeGalleryEvent value)? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeGalleryEvent value)? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryEventCopyWith<$Res> {
  factory $GalleryEventCopyWith(
          GalleryEvent value, $Res Function(GalleryEvent) then) =
      _$GalleryEventCopyWithImpl<$Res, GalleryEvent>;
}

/// @nodoc
class _$GalleryEventCopyWithImpl<$Res, $Val extends GalleryEvent>
    implements $GalleryEventCopyWith<$Res> {
  _$GalleryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GalleryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializeGalleryEventImplCopyWith<$Res> {
  factory _$$InitializeGalleryEventImplCopyWith(
          _$InitializeGalleryEventImpl value,
          $Res Function(_$InitializeGalleryEventImpl) then) =
      __$$InitializeGalleryEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeGalleryEventImplCopyWithImpl<$Res>
    extends _$GalleryEventCopyWithImpl<$Res, _$InitializeGalleryEventImpl>
    implements _$$InitializeGalleryEventImplCopyWith<$Res> {
  __$$InitializeGalleryEventImplCopyWithImpl(
      _$InitializeGalleryEventImpl _value,
      $Res Function(_$InitializeGalleryEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of GalleryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializeGalleryEventImpl extends _InitializeGalleryEvent {
  const _$InitializeGalleryEventImpl() : super._();

  @override
  String toString() {
    return 'GalleryEvent.initialize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeGalleryEventImpl);
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
    required TResult Function(_InitializeGalleryEvent value) initialize,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeGalleryEvent value)? initialize,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeGalleryEvent value)? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _InitializeGalleryEvent extends GalleryEvent {
  const factory _InitializeGalleryEvent() = _$InitializeGalleryEventImpl;
  const _InitializeGalleryEvent._() : super._();
}

/// @nodoc
mixin _$GalleryState {
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
    required TResult Function(_InitialGalleryState value) initial,
    required TResult Function(_LoadingGalleryState value) loading,
    required TResult Function(_IdleGalleryState value) idle,
    required TResult Function(_ErrorGalleryState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialGalleryState value)? initial,
    TResult? Function(_LoadingGalleryState value)? loading,
    TResult? Function(_IdleGalleryState value)? idle,
    TResult? Function(_ErrorGalleryState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialGalleryState value)? initial,
    TResult Function(_LoadingGalleryState value)? loading,
    TResult Function(_IdleGalleryState value)? idle,
    TResult Function(_ErrorGalleryState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryStateCopyWith<$Res> {
  factory $GalleryStateCopyWith(
          GalleryState value, $Res Function(GalleryState) then) =
      _$GalleryStateCopyWithImpl<$Res, GalleryState>;
}

/// @nodoc
class _$GalleryStateCopyWithImpl<$Res, $Val extends GalleryState>
    implements $GalleryStateCopyWith<$Res> {
  _$GalleryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GalleryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialGalleryStateImplCopyWith<$Res> {
  factory _$$InitialGalleryStateImplCopyWith(_$InitialGalleryStateImpl value,
          $Res Function(_$InitialGalleryStateImpl) then) =
      __$$InitialGalleryStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialGalleryStateImplCopyWithImpl<$Res>
    extends _$GalleryStateCopyWithImpl<$Res, _$InitialGalleryStateImpl>
    implements _$$InitialGalleryStateImplCopyWith<$Res> {
  __$$InitialGalleryStateImplCopyWithImpl(_$InitialGalleryStateImpl _value,
      $Res Function(_$InitialGalleryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GalleryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialGalleryStateImpl extends _InitialGalleryState {
  const _$InitialGalleryStateImpl() : super._();

  @override
  String toString() {
    return 'GalleryState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialGalleryStateImpl);
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
    required TResult Function(_InitialGalleryState value) initial,
    required TResult Function(_LoadingGalleryState value) loading,
    required TResult Function(_IdleGalleryState value) idle,
    required TResult Function(_ErrorGalleryState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialGalleryState value)? initial,
    TResult? Function(_LoadingGalleryState value)? loading,
    TResult? Function(_IdleGalleryState value)? idle,
    TResult? Function(_ErrorGalleryState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialGalleryState value)? initial,
    TResult Function(_LoadingGalleryState value)? loading,
    TResult Function(_IdleGalleryState value)? idle,
    TResult Function(_ErrorGalleryState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialGalleryState extends GalleryState {
  const factory _InitialGalleryState() = _$InitialGalleryStateImpl;
  const _InitialGalleryState._() : super._();
}

/// @nodoc
abstract class _$$LoadingGalleryStateImplCopyWith<$Res> {
  factory _$$LoadingGalleryStateImplCopyWith(_$LoadingGalleryStateImpl value,
          $Res Function(_$LoadingGalleryStateImpl) then) =
      __$$LoadingGalleryStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingGalleryStateImplCopyWithImpl<$Res>
    extends _$GalleryStateCopyWithImpl<$Res, _$LoadingGalleryStateImpl>
    implements _$$LoadingGalleryStateImplCopyWith<$Res> {
  __$$LoadingGalleryStateImplCopyWithImpl(_$LoadingGalleryStateImpl _value,
      $Res Function(_$LoadingGalleryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GalleryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingGalleryStateImpl extends _LoadingGalleryState {
  const _$LoadingGalleryStateImpl() : super._();

  @override
  String toString() {
    return 'GalleryState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingGalleryStateImpl);
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
    required TResult Function(_InitialGalleryState value) initial,
    required TResult Function(_LoadingGalleryState value) loading,
    required TResult Function(_IdleGalleryState value) idle,
    required TResult Function(_ErrorGalleryState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialGalleryState value)? initial,
    TResult? Function(_LoadingGalleryState value)? loading,
    TResult? Function(_IdleGalleryState value)? idle,
    TResult? Function(_ErrorGalleryState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialGalleryState value)? initial,
    TResult Function(_LoadingGalleryState value)? loading,
    TResult Function(_IdleGalleryState value)? idle,
    TResult Function(_ErrorGalleryState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingGalleryState extends GalleryState {
  const factory _LoadingGalleryState() = _$LoadingGalleryStateImpl;
  const _LoadingGalleryState._() : super._();
}

/// @nodoc
abstract class _$$IdleGalleryStateImplCopyWith<$Res> {
  factory _$$IdleGalleryStateImplCopyWith(_$IdleGalleryStateImpl value,
          $Res Function(_$IdleGalleryStateImpl) then) =
      __$$IdleGalleryStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleGalleryStateImplCopyWithImpl<$Res>
    extends _$GalleryStateCopyWithImpl<$Res, _$IdleGalleryStateImpl>
    implements _$$IdleGalleryStateImplCopyWith<$Res> {
  __$$IdleGalleryStateImplCopyWithImpl(_$IdleGalleryStateImpl _value,
      $Res Function(_$IdleGalleryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GalleryState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdleGalleryStateImpl extends _IdleGalleryState {
  const _$IdleGalleryStateImpl() : super._();

  @override
  String toString() {
    return 'GalleryState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$IdleGalleryStateImpl);
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
    required TResult Function(_InitialGalleryState value) initial,
    required TResult Function(_LoadingGalleryState value) loading,
    required TResult Function(_IdleGalleryState value) idle,
    required TResult Function(_ErrorGalleryState value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialGalleryState value)? initial,
    TResult? Function(_LoadingGalleryState value)? loading,
    TResult? Function(_IdleGalleryState value)? idle,
    TResult? Function(_ErrorGalleryState value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialGalleryState value)? initial,
    TResult Function(_LoadingGalleryState value)? loading,
    TResult Function(_IdleGalleryState value)? idle,
    TResult Function(_ErrorGalleryState value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _IdleGalleryState extends GalleryState {
  const factory _IdleGalleryState() = _$IdleGalleryStateImpl;
  const _IdleGalleryState._() : super._();
}

/// @nodoc
abstract class _$$ErrorGalleryStateImplCopyWith<$Res> {
  factory _$$ErrorGalleryStateImplCopyWith(_$ErrorGalleryStateImpl value,
          $Res Function(_$ErrorGalleryStateImpl) then) =
      __$$ErrorGalleryStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorGalleryStateImplCopyWithImpl<$Res>
    extends _$GalleryStateCopyWithImpl<$Res, _$ErrorGalleryStateImpl>
    implements _$$ErrorGalleryStateImplCopyWith<$Res> {
  __$$ErrorGalleryStateImplCopyWithImpl(_$ErrorGalleryStateImpl _value,
      $Res Function(_$ErrorGalleryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of GalleryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorGalleryStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorGalleryStateImpl extends _ErrorGalleryState {
  const _$ErrorGalleryStateImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'GalleryState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorGalleryStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of GalleryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorGalleryStateImplCopyWith<_$ErrorGalleryStateImpl> get copyWith =>
      __$$ErrorGalleryStateImplCopyWithImpl<_$ErrorGalleryStateImpl>(
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
    required TResult Function(_InitialGalleryState value) initial,
    required TResult Function(_LoadingGalleryState value) loading,
    required TResult Function(_IdleGalleryState value) idle,
    required TResult Function(_ErrorGalleryState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialGalleryState value)? initial,
    TResult? Function(_LoadingGalleryState value)? loading,
    TResult? Function(_IdleGalleryState value)? idle,
    TResult? Function(_ErrorGalleryState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialGalleryState value)? initial,
    TResult Function(_LoadingGalleryState value)? loading,
    TResult Function(_IdleGalleryState value)? idle,
    TResult Function(_ErrorGalleryState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorGalleryState extends GalleryState {
  const factory _ErrorGalleryState({required final String message}) =
      _$ErrorGalleryStateImpl;
  const _ErrorGalleryState._() : super._();

  String get message;

  /// Create a copy of GalleryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorGalleryStateImplCopyWith<_$ErrorGalleryStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GallerySideEffect {
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
    required TResult Function(_ErrorGallerySideEffect value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ErrorGallerySideEffect value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorGallerySideEffect value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GallerySideEffectCopyWith<$Res> {
  factory $GallerySideEffectCopyWith(
          GallerySideEffect value, $Res Function(GallerySideEffect) then) =
      _$GallerySideEffectCopyWithImpl<$Res, GallerySideEffect>;
}

/// @nodoc
class _$GallerySideEffectCopyWithImpl<$Res, $Val extends GallerySideEffect>
    implements $GallerySideEffectCopyWith<$Res> {
  _$GallerySideEffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GallerySideEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ErrorGallerySideEffectImplCopyWith<$Res> {
  factory _$$ErrorGallerySideEffectImplCopyWith(
          _$ErrorGallerySideEffectImpl value,
          $Res Function(_$ErrorGallerySideEffectImpl) then) =
      __$$ErrorGallerySideEffectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorGallerySideEffectImplCopyWithImpl<$Res>
    extends _$GallerySideEffectCopyWithImpl<$Res, _$ErrorGallerySideEffectImpl>
    implements _$$ErrorGallerySideEffectImplCopyWith<$Res> {
  __$$ErrorGallerySideEffectImplCopyWithImpl(
      _$ErrorGallerySideEffectImpl _value,
      $Res Function(_$ErrorGallerySideEffectImpl) _then)
      : super(_value, _then);

  /// Create a copy of GallerySideEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorGallerySideEffectImpl extends _ErrorGallerySideEffect {
  const _$ErrorGallerySideEffectImpl() : super._();

  @override
  String toString() {
    return 'GallerySideEffect.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorGallerySideEffectImpl);
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
    required TResult Function(_ErrorGallerySideEffect value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ErrorGallerySideEffect value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorGallerySideEffect value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorGallerySideEffect extends GallerySideEffect {
  const factory _ErrorGallerySideEffect() = _$ErrorGallerySideEffectImpl;
  const _ErrorGallerySideEffect._() : super._();
}
