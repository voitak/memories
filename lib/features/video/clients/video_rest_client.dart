import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'video_rest_client.g.dart';

@RestApi()
abstract class VideoRestClient {
  factory VideoRestClient(Dio dio) = _VideoRestClient;

  @GET('/')
  Future<void> fetch();
}
