part of '{name}[-s]_bloc.dart';

@freezed
sealed class {name}[-C]SideEffect with _${name}[-C]SideEffect {
  const {name}[-C]SideEffect._();

  const factory {name}[-C]SideEffect.error() = _Error{name}[-C]SideEffect;
}
