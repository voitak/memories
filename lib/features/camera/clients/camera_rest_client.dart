import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'camera_rest_client.g.dart';

@RestApi()
abstract class CameraRestClient {
  factory CameraRestClient(Dio dio) = _CameraRestClient;

  @GET('/')
  Future<void> fetch();
}
