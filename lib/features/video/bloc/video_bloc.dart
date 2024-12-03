// ignore_for_file: depend_on_referenced_packages
import 'package:dio/dio.dart';
import 'package:flutter_bloc_side_effect/flutter_bloc_side_effect.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memories/features/video/repository/video_repository.dart';

part 'video_bloc.freezed.dart';

part 'video_event.dart';

part 'video_state.dart';

part 'video_side_effect.dart';

class VideoBloc extends Bloc<VideoEvent, VideoState>
    with BlocSideEffectMixin<VideoEvent, VideoState, VideoSideEffect>{
  VideoBloc({
    required VideoRepository repository,
  })  : _repository = repository,
        super(const VideoState.initial()) {
    on<VideoEvent>(
      (event, emitter) => event.map(
        initialize: (event) => _initialize(event, emitter),
      ),
    );
  }

  final VideoRepository _repository;

  Future<void> _initialize(
    _InitializeVideoEvent event,
    Emitter<VideoState> emitter,
  ) async {
    try {
        
    } on DioException catch (e, stackTrace) {
        
    } on Object catch (e, stackTrace) {
        
    }
  }
}
