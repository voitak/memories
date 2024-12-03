part of 'camera_bloc.dart';

@freezed
sealed class CameraSideEffect with _$CameraSideEffect {
  const CameraSideEffect._();

  const factory CameraSideEffect.error() = _ErrorCameraSideEffect;
}
