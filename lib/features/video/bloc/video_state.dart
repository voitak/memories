part of 'video_bloc.dart';

@freezed
sealed class VideoState with _$VideoState {
  const VideoState._();

  const factory VideoState.initial() = _InitialVideoState;

  const factory VideoState.loading() = _LoadingVideoState;

  const factory VideoState.idle() = _IdleVideoState;

  const factory VideoState.error({
    required String message,
  }) = _ErrorVideoState;

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
