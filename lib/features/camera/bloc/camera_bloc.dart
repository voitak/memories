// ignore_for_file: depend_on_referenced_packages
import 'package:dio/dio.dart';
import 'package:flutter_bloc_side_effect/flutter_bloc_side_effect.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memories/features/camera/repository/camera_repository.dart';

part 'camera_bloc.freezed.dart';

part 'camera_event.dart';

part 'camera_state.dart';

part 'camera_side_effect.dart';

class CameraBloc extends Bloc<CameraEvent, CameraState>
    with BlocSideEffectMixin<CameraEvent, CameraState, CameraSideEffect>{
  CameraBloc({
    required CameraRepository repository,
  })  : _repository = repository,
        super(const CameraState.initial()) {
    on<CameraEvent>(
      (event, emitter) => event.map(
        initialize: (event) => _initialize(event, emitter),
      ),
    );
  }

  final CameraRepository _repository;

  Future<void> _initialize(
    _InitializeCameraEvent event,
    Emitter<CameraState> emitter,
  ) async {
    try {
        
    } on DioException catch (e, stackTrace) {
        
    } on Object catch (e, stackTrace) {
        
    }
  }
}
