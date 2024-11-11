// ignore_for_file: depend_on_referenced_packages
import 'package:flutter_bloc_side_effect/flutter_bloc_side_effect.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memories/app/extensions/string.dart';
import 'package:memories/features/location/models/ip_location/ip_location.dart';
import 'package:memories/features/location/repository/ip_location_repository.dart';

part 'location_bloc.freezed.dart';

part 'location_event.dart';

part 'location_side_effect.dart';

part 'location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState>
    with BlocSideEffectMixin<LocationEvent, LocationState, LocationSideEffect> {
  LocationBloc({required IPLocationRepository repository})
      : _repository = repository,
        super(const LocationState.initial()) {
    on<LocationEvent>(
      (event, emitter) => event.map(
        fetchData: (event) => _fetchData(emitter),
      ),
    );
  }

  final IPLocationRepository _repository;

  Future<void> _fetchData(Emitter<LocationState> emitter) async {
    try {
      emitter(const LocationState.loading());
      emitSideEffect(const LocationSideEffect.message('loading'));
      final location = await _repository.fetchIPLocation();
      emitter(LocationState.loaded(location: location));
      emitSideEffect(const LocationSideEffect.message('complete'));
    } catch (e) {
      emitter(LocationState.error(message: e.toString()));
      emitSideEffect(const LocationSideEffect.error('error'));
    }
  }
}
