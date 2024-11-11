part of '{name}[-s]_bloc.dart';

@freezed
sealed class {name}[-C]Event with _${name}[-C]Event {
  const {name}[-C]Event._();

  const factory {name}[-C]Event.initialize() = _Initialize{name}[-C]Event;
}
