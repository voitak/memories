part of 'location_bloc.dart';

@freezed
sealed class LocationEvent with _$LocationEvent {
  const LocationEvent._();

  const factory LocationEvent.fetchData() = _FetchLocationEvent;
}
