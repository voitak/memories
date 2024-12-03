import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'notifications_rest_client.g.dart';

@RestApi()
abstract class NotificationsRestClient {
  factory NotificationsRestClient(Dio dio) = _NotificationsRestClient;

  @GET('/')
  Future<void> fetch();
}
