// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notifications_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$NotificationsEvent {
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
    required TResult Function(_InitializeNotificationsEvent value) initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeNotificationsEvent value)? initialize,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeNotificationsEvent value)? initialize,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsEventCopyWith<$Res> {
  factory $NotificationsEventCopyWith(
          NotificationsEvent value, $Res Function(NotificationsEvent) then) =
      _$NotificationsEventCopyWithImpl<$Res, NotificationsEvent>;
}

/// @nodoc
class _$NotificationsEventCopyWithImpl<$Res, $Val extends NotificationsEvent>
    implements $NotificationsEventCopyWith<$Res> {
  _$NotificationsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitializeNotificationsEventImplCopyWith<$Res> {
  factory _$$InitializeNotificationsEventImplCopyWith(
          _$InitializeNotificationsEventImpl value,
          $Res Function(_$InitializeNotificationsEventImpl) then) =
      __$$InitializeNotificationsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeNotificationsEventImplCopyWithImpl<$Res>
    extends _$NotificationsEventCopyWithImpl<$Res,
        _$InitializeNotificationsEventImpl>
    implements _$$InitializeNotificationsEventImplCopyWith<$Res> {
  __$$InitializeNotificationsEventImplCopyWithImpl(
      _$InitializeNotificationsEventImpl _value,
      $Res Function(_$InitializeNotificationsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationsEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitializeNotificationsEventImpl extends _InitializeNotificationsEvent {
  const _$InitializeNotificationsEventImpl() : super._();

  @override
  String toString() {
    return 'NotificationsEvent.initialize()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeNotificationsEventImpl);
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
    required TResult Function(_InitializeNotificationsEvent value) initialize,
  }) {
    return initialize(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeNotificationsEvent value)? initialize,
  }) {
    return initialize?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeNotificationsEvent value)? initialize,
    required TResult orElse(),
  }) {
    if (initialize != null) {
      return initialize(this);
    }
    return orElse();
  }
}

abstract class _InitializeNotificationsEvent extends NotificationsEvent {
  const factory _InitializeNotificationsEvent() =
      _$InitializeNotificationsEventImpl;
  const _InitializeNotificationsEvent._() : super._();
}

/// @nodoc
mixin _$NotificationsState {
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
    required TResult Function(_InitialNotificationsState value) initial,
    required TResult Function(_LoadingNotificationsState value) loading,
    required TResult Function(_IdleNotificationsState value) idle,
    required TResult Function(_ErrorNotificationsState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialNotificationsState value)? initial,
    TResult? Function(_LoadingNotificationsState value)? loading,
    TResult? Function(_IdleNotificationsState value)? idle,
    TResult? Function(_ErrorNotificationsState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNotificationsState value)? initial,
    TResult Function(_LoadingNotificationsState value)? loading,
    TResult Function(_IdleNotificationsState value)? idle,
    TResult Function(_ErrorNotificationsState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsStateCopyWith<$Res> {
  factory $NotificationsStateCopyWith(
          NotificationsState value, $Res Function(NotificationsState) then) =
      _$NotificationsStateCopyWithImpl<$Res, NotificationsState>;
}

/// @nodoc
class _$NotificationsStateCopyWithImpl<$Res, $Val extends NotificationsState>
    implements $NotificationsStateCopyWith<$Res> {
  _$NotificationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialNotificationsStateImplCopyWith<$Res> {
  factory _$$InitialNotificationsStateImplCopyWith(
          _$InitialNotificationsStateImpl value,
          $Res Function(_$InitialNotificationsStateImpl) then) =
      __$$InitialNotificationsStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialNotificationsStateImplCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res,
        _$InitialNotificationsStateImpl>
    implements _$$InitialNotificationsStateImplCopyWith<$Res> {
  __$$InitialNotificationsStateImplCopyWithImpl(
      _$InitialNotificationsStateImpl _value,
      $Res Function(_$InitialNotificationsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialNotificationsStateImpl extends _InitialNotificationsState {
  const _$InitialNotificationsStateImpl() : super._();

  @override
  String toString() {
    return 'NotificationsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialNotificationsStateImpl);
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
    required TResult Function(_InitialNotificationsState value) initial,
    required TResult Function(_LoadingNotificationsState value) loading,
    required TResult Function(_IdleNotificationsState value) idle,
    required TResult Function(_ErrorNotificationsState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialNotificationsState value)? initial,
    TResult? Function(_LoadingNotificationsState value)? loading,
    TResult? Function(_IdleNotificationsState value)? idle,
    TResult? Function(_ErrorNotificationsState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNotificationsState value)? initial,
    TResult Function(_LoadingNotificationsState value)? loading,
    TResult Function(_IdleNotificationsState value)? idle,
    TResult Function(_ErrorNotificationsState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialNotificationsState extends NotificationsState {
  const factory _InitialNotificationsState() = _$InitialNotificationsStateImpl;
  const _InitialNotificationsState._() : super._();
}

/// @nodoc
abstract class _$$LoadingNotificationsStateImplCopyWith<$Res> {
  factory _$$LoadingNotificationsStateImplCopyWith(
          _$LoadingNotificationsStateImpl value,
          $Res Function(_$LoadingNotificationsStateImpl) then) =
      __$$LoadingNotificationsStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingNotificationsStateImplCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res,
        _$LoadingNotificationsStateImpl>
    implements _$$LoadingNotificationsStateImplCopyWith<$Res> {
  __$$LoadingNotificationsStateImplCopyWithImpl(
      _$LoadingNotificationsStateImpl _value,
      $Res Function(_$LoadingNotificationsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingNotificationsStateImpl extends _LoadingNotificationsState {
  const _$LoadingNotificationsStateImpl() : super._();

  @override
  String toString() {
    return 'NotificationsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingNotificationsStateImpl);
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
    required TResult Function(_InitialNotificationsState value) initial,
    required TResult Function(_LoadingNotificationsState value) loading,
    required TResult Function(_IdleNotificationsState value) idle,
    required TResult Function(_ErrorNotificationsState value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialNotificationsState value)? initial,
    TResult? Function(_LoadingNotificationsState value)? loading,
    TResult? Function(_IdleNotificationsState value)? idle,
    TResult? Function(_ErrorNotificationsState value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNotificationsState value)? initial,
    TResult Function(_LoadingNotificationsState value)? loading,
    TResult Function(_IdleNotificationsState value)? idle,
    TResult Function(_ErrorNotificationsState value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _LoadingNotificationsState extends NotificationsState {
  const factory _LoadingNotificationsState() = _$LoadingNotificationsStateImpl;
  const _LoadingNotificationsState._() : super._();
}

/// @nodoc
abstract class _$$IdleNotificationsStateImplCopyWith<$Res> {
  factory _$$IdleNotificationsStateImplCopyWith(
          _$IdleNotificationsStateImpl value,
          $Res Function(_$IdleNotificationsStateImpl) then) =
      __$$IdleNotificationsStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$IdleNotificationsStateImplCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res, _$IdleNotificationsStateImpl>
    implements _$$IdleNotificationsStateImplCopyWith<$Res> {
  __$$IdleNotificationsStateImplCopyWithImpl(
      _$IdleNotificationsStateImpl _value,
      $Res Function(_$IdleNotificationsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$IdleNotificationsStateImpl extends _IdleNotificationsState {
  const _$IdleNotificationsStateImpl() : super._();

  @override
  String toString() {
    return 'NotificationsState.idle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdleNotificationsStateImpl);
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
    required TResult Function(_InitialNotificationsState value) initial,
    required TResult Function(_LoadingNotificationsState value) loading,
    required TResult Function(_IdleNotificationsState value) idle,
    required TResult Function(_ErrorNotificationsState value) error,
  }) {
    return idle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialNotificationsState value)? initial,
    TResult? Function(_LoadingNotificationsState value)? loading,
    TResult? Function(_IdleNotificationsState value)? idle,
    TResult? Function(_ErrorNotificationsState value)? error,
  }) {
    return idle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNotificationsState value)? initial,
    TResult Function(_LoadingNotificationsState value)? loading,
    TResult Function(_IdleNotificationsState value)? idle,
    TResult Function(_ErrorNotificationsState value)? error,
    required TResult orElse(),
  }) {
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class _IdleNotificationsState extends NotificationsState {
  const factory _IdleNotificationsState() = _$IdleNotificationsStateImpl;
  const _IdleNotificationsState._() : super._();
}

/// @nodoc
abstract class _$$ErrorNotificationsStateImplCopyWith<$Res> {
  factory _$$ErrorNotificationsStateImplCopyWith(
          _$ErrorNotificationsStateImpl value,
          $Res Function(_$ErrorNotificationsStateImpl) then) =
      __$$ErrorNotificationsStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorNotificationsStateImplCopyWithImpl<$Res>
    extends _$NotificationsStateCopyWithImpl<$Res,
        _$ErrorNotificationsStateImpl>
    implements _$$ErrorNotificationsStateImplCopyWith<$Res> {
  __$$ErrorNotificationsStateImplCopyWithImpl(
      _$ErrorNotificationsStateImpl _value,
      $Res Function(_$ErrorNotificationsStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorNotificationsStateImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorNotificationsStateImpl extends _ErrorNotificationsState {
  const _$ErrorNotificationsStateImpl({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'NotificationsState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorNotificationsStateImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorNotificationsStateImplCopyWith<_$ErrorNotificationsStateImpl>
      get copyWith => __$$ErrorNotificationsStateImplCopyWithImpl<
          _$ErrorNotificationsStateImpl>(this, _$identity);

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
    required TResult Function(_InitialNotificationsState value) initial,
    required TResult Function(_LoadingNotificationsState value) loading,
    required TResult Function(_IdleNotificationsState value) idle,
    required TResult Function(_ErrorNotificationsState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialNotificationsState value)? initial,
    TResult? Function(_LoadingNotificationsState value)? loading,
    TResult? Function(_IdleNotificationsState value)? idle,
    TResult? Function(_ErrorNotificationsState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialNotificationsState value)? initial,
    TResult Function(_LoadingNotificationsState value)? loading,
    TResult Function(_IdleNotificationsState value)? idle,
    TResult Function(_ErrorNotificationsState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorNotificationsState extends NotificationsState {
  const factory _ErrorNotificationsState({required final String message}) =
      _$ErrorNotificationsStateImpl;
  const _ErrorNotificationsState._() : super._();

  String get message;

  /// Create a copy of NotificationsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorNotificationsStateImplCopyWith<_$ErrorNotificationsStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NotificationsSideEffect {
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
    required TResult Function(_ErrorNotificationsSideEffect value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ErrorNotificationsSideEffect value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorNotificationsSideEffect value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationsSideEffectCopyWith<$Res> {
  factory $NotificationsSideEffectCopyWith(NotificationsSideEffect value,
          $Res Function(NotificationsSideEffect) then) =
      _$NotificationsSideEffectCopyWithImpl<$Res, NotificationsSideEffect>;
}

/// @nodoc
class _$NotificationsSideEffectCopyWithImpl<$Res,
        $Val extends NotificationsSideEffect>
    implements $NotificationsSideEffectCopyWith<$Res> {
  _$NotificationsSideEffectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NotificationsSideEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ErrorNotificationsSideEffectImplCopyWith<$Res> {
  factory _$$ErrorNotificationsSideEffectImplCopyWith(
          _$ErrorNotificationsSideEffectImpl value,
          $Res Function(_$ErrorNotificationsSideEffectImpl) then) =
      __$$ErrorNotificationsSideEffectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ErrorNotificationsSideEffectImplCopyWithImpl<$Res>
    extends _$NotificationsSideEffectCopyWithImpl<$Res,
        _$ErrorNotificationsSideEffectImpl>
    implements _$$ErrorNotificationsSideEffectImplCopyWith<$Res> {
  __$$ErrorNotificationsSideEffectImplCopyWithImpl(
      _$ErrorNotificationsSideEffectImpl _value,
      $Res Function(_$ErrorNotificationsSideEffectImpl) _then)
      : super(_value, _then);

  /// Create a copy of NotificationsSideEffect
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ErrorNotificationsSideEffectImpl extends _ErrorNotificationsSideEffect {
  const _$ErrorNotificationsSideEffectImpl() : super._();

  @override
  String toString() {
    return 'NotificationsSideEffect.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorNotificationsSideEffectImpl);
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
    required TResult Function(_ErrorNotificationsSideEffect value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ErrorNotificationsSideEffect value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ErrorNotificationsSideEffect value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorNotificationsSideEffect extends NotificationsSideEffect {
  const factory _ErrorNotificationsSideEffect() =
      _$ErrorNotificationsSideEffectImpl;
  const _ErrorNotificationsSideEffect._() : super._();
}
