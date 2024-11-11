import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'ip_rest_client.g.dart';

@RestApi()
abstract class IPRestClient {
  factory IPRestClient(Dio ipDio) = _IPRestClient;

  @GET('/')
  Future<Map<String, String>> getIP({@Query('format') String json = 'json'});
}
