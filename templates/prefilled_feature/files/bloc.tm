// ignore_for_file: depend_on_referenced_packages
import 'package:dio/dio.dart';
import 'package:flutter_bloc_side_effect/side_effect_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part '{name}[-s]_bloc.freezed.dart';

part '{name}[-s]_event.dart';

part '{name}[-s]_state.dart';

class {name}[-C]Bloc extends Bloc<{name}[-C]Event, {name}[-C]State> {
  {name}[-C]Bloc({
    required {name}[-C]Repository repository,
  })  : _repository = repository,
        super(const {name}[-C]State.initial()) {
    on<{name}[-C]Event>(
      (event, emitter) => event.map(
        initialize: (event) => _initialize(event, emitter),
      ),
    );
  }

  final {name}[-C]Repository _repository;

  Future<void> _initialize(
    _Initialize{name}[-C]Event event,
    Emitter<{name}[-C]State> emitter,
  ) async {
    try {
        
    } on DioException catch (e, stackTrace) {
        
    } on Object catch (e, stackTrace) {
        
    }
  }
}
