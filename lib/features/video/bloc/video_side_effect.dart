part of 'video_bloc.dart';

@freezed
sealed class VideoSideEffect with _$VideoSideEffect {
  const VideoSideEffect._();

  const factory VideoSideEffect.error() = _ErrorVideoSideEffect;
}
