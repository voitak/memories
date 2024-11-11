part of '{name}[-s]_bloc.dart';

@freezed
sealed class {name}[-C]State with _${name}[-C]State {
  const {name}[-C]State._();

  const factory {name}[-C]State.initial() = _Initial{name}[-C]State;

  const factory {name}[-C]State.loading() = _Loading{name}[-C]State;

  const factory {name}[-C]State.idle() = _Idle{name}[-C]State;

  const factory {name}[-C]State.error({
    required String message,
  }) = _Error{name}[-C]State;

  bool get isInitial => maybeMap(
        initial: (_) => true,
        orElse: () => false,
      );

  bool get isLoading => maybeMap(
        loading: (_) => true,
        orElse: () => false,
      );

  bool get isIdle => maybeMap(
        idle: (_) => true,
        orElse: () => false,
      );
      
  bool get isError => maybeMap(
        error: (_) => true,
        orElse: () => false,
      );

  String? get errorMessage => mapOrNull(
        error: (state) => state.message,
      );
}
