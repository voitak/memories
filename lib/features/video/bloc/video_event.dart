part of 'video_bloc.dart';

@freezed
sealed class VideoEvent with _$VideoEvent {
  const VideoEvent._();

  const factory VideoEvent.initialize() = _InitializeVideoEvent;
}
