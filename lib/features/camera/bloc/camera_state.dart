part of 'camera_bloc.dart';

@freezed
sealed class CameraState with _$CameraState {
  const CameraState._();

  const factory CameraState.initial() = _InitialCameraState;

  const factory CameraState.loading() = _LoadingCameraState;

  const factory CameraState.idle() = _IdleCameraState;

  const factory CameraState.error({
    required String message,
  }) = _ErrorCameraState;

  bool get isInitial => maybeMap(
        initial: (_) => true,
        orElse: () => false,
      );

  bool get isLoading => maybeMap(
        loading: (_) => true,
        orElse: () => false,
      );

  bool get isIdle => maybeMap(
        idle: (_) => true,
        orElse: () => false,
      );
      
  bool get isError => maybeMap(
        error: (_) => true,
        orElse: () => false,
      );

  String? get errorMessage => mapOrNull(
        error: (state) => state.message,
      );
}
