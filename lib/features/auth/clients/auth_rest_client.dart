import 'package:dio/dio.dart';
import 'package:memories/features/auth/models/user.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_rest_client.g.dart';

@RestApi()
abstract class AuthRestClient {
  factory AuthRestClient(Dio dio) = _AuthRestClient;

  @GET('/facts/random')
  Future<User> singIn();
}
