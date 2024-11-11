import 'package:memories/features/auth/models/user.dart';

abstract interface class AuthRepository {
  Future<User> signInSilently();
}
