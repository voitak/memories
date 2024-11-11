import 'package:memories/features/auth/clients/auth_rest_client.dart';
import 'package:memories/features/auth/models/user.dart';
import 'package:memories/features/auth/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  const AuthRepositoryImpl({required this.client});

  final AuthRestClient client;

  @override
  Future<User> signInSilently() => client.singIn();
}
