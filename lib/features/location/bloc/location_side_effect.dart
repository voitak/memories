part of 'location_bloc.dart';

@freezed
sealed class LocationSideEffect with _$LocationSideEffect {
  const LocationSideEffect._();

  const factory LocationSideEffect.error(String message) =
      _LocationErrorSideEffect;

  const factory LocationSideEffect.message(String message) =
      _LocationMessageSideEffect;
}
