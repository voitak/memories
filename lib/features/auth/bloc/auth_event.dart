part of 'auth_bloc.dart';

@freezed
sealed class AuthEvent with _$AuthEvent {
  const AuthEvent._();

  const factory AuthEvent.initialize() = _InitializeAuthEvent;
}
