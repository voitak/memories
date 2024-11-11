part of 'location_bloc.dart';

@freezed
sealed class LocationState with _$LocationState {
  const LocationState._();

  const factory LocationState.initial() = _InitialLocationState;

  const factory LocationState.loading() = _LoadingLocationState;

  const factory LocationState.loaded({required IPLocation location}) =
      _LoadedLocationState;

  const factory LocationState.error({required String message}) =
      _ErrorLocationState;

  bool get isInitial => maybeMap(initial: (_) => true, orElse: () => false);

  bool get isLoading => maybeMap(loading: (_) => true, orElse: () => false);

  bool get isLoaded => maybeMap(loaded: (_) => true, orElse: () => false);

  String? get errorMessage => mapOrNull(error: (state) => state.message);

  String get ip => maybeMap(
        loaded: (state) => state.location.ip,
        orElse: () => 'not loaded'.hardCoded,
      );

  IPLocation? get ipLocation => mapOrNull(loaded: (state) => state.location);
}
