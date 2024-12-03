// ignore_for_file: depend_on_referenced_packages
import 'package:dio/dio.dart';
import 'package:flutter_bloc_side_effect/flutter_bloc_side_effect.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memories/features/gallery/repository/gallery_repository.dart';

part 'gallery_bloc.freezed.dart';

part 'gallery_event.dart';

part 'gallery_state.dart';

part 'gallery_side_effect.dart';

class GalleryBloc extends Bloc<GalleryEvent, GalleryState>
    with BlocSideEffectMixin<GalleryEvent, GalleryState, GallerySideEffect>{
  GalleryBloc({
    required GalleryRepository repository,
  })  : _repository = repository,
        super(const GalleryState.initial()) {
    on<GalleryEvent>(
      (event, emitter) => event.map(
        initialize: (event) => _initialize(event, emitter),
      ),
    );
  }

  final GalleryRepository _repository;

  Future<void> _initialize(
    _InitializeGalleryEvent event,
    Emitter<GalleryState> emitter,
  ) async {
    try {
        
    } on DioException catch (e, stackTrace) {
        
    } on Object catch (e, stackTrace) {
        
    }
  }
}
