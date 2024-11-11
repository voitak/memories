// ignore_for_file: depend_on_referenced_packages
import 'package:flutter_bloc_side_effect/flutter_bloc_side_effect.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memories/features/auth/models/user.dart';
import 'package:memories/features/auth/repository/auth_repository.dart';

part 'auth_bloc.freezed.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  AuthBloc({required AuthRepository repository})
      : _repository = repository,
        super(const AuthState.initial()) {
    on<AuthEvent>(
      (event, emitter) => event.map(
        initialize: (event) => _initialize(emitter),
      ),
    );
  }

  final AuthRepository _repository;

  Future<void> _initialize(Emitter<AuthState> emitter) async {
    try {
      emitter(const AuthState.loading());
      final user = await _repository.signInSilently();
      emitter(AuthState.idle(user: user));
    } on Object {
      rethrow;
    }
  }
}
