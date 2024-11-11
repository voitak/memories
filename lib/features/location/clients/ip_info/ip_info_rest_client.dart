import 'package:dio/dio.dart';
import 'package:memories/features/location/models/ip_location/ip_location.dart';
import 'package:retrofit/retrofit.dart';

part 'ip_info_rest_client.g.dart';

@RestApi()
abstract class IPInfoRestClient {
  factory IPInfoRestClient(Dio ipInfoDio) = _IPInfoRestClient;

  @GET('/{ip}/geo')
  Future<IPLocation> fetchGeoInfo({@Path('ip') required String ip});
}
