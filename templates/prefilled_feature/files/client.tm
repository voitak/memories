import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part '{name}[-s]_rest_client.g.dart';

@RestApi()
abstract class {name}[-C]RestClient {
  factory {name}[-C]RestClient(Dio dio) = _{name}[-C]RestClient;

  @GET('/')
  Future<void> fetch();
}
