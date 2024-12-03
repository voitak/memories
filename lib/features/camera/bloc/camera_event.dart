part of 'camera_bloc.dart';

@freezed
sealed class CameraEvent with _$CameraEvent {
  const CameraEvent._();

  const factory CameraEvent.initialize() = _InitializeCameraEvent;
}
