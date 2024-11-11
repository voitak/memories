part of 'auth_bloc.dart';

@freezed
sealed class AuthState with _$AuthState {
  const AuthState._();

  const factory AuthState.initial() = _InitialAuthState;

  const factory AuthState.loading() = _LoadingAuthState;

  const factory AuthState.idle({required User user}) = _IdleAuthState;

  const factory AuthState.error({required String message}) = _ErrorAuthState;

  bool get isInitial => maybeMap(initial: (_) => true, orElse: () => false);

  bool get isLoading => maybeMap(loading: (_) => true, orElse: () => false);

  bool get isIdle => maybeMap(idle: (_) => true, orElse: () => false);

  bool get isError => maybeMap(error: (_) => true, orElse: () => false);

  String? get errorMessage => mapOrNull(error: (state) => state.message);
}
