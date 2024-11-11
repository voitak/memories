import 'package:memories/features/location/clients/ip/ip_rest_client.dart';
import 'package:memories/features/location/clients/ip_info/ip_info_rest_client.dart';
import 'package:memories/features/location/models/ip_location/ip_location.dart';
import 'package:memories/features/location/repository/ip_location_repository.dart';

class IPLocationRepositoryImpl implements IPLocationRepository {
  const IPLocationRepositoryImpl({
    required this.ipRestClient,
    required this.ipInfoRestClient,
  });

  final IPRestClient ipRestClient;
  final IPInfoRestClient ipInfoRestClient;

  @override
  Future<IPLocation> fetchIPLocation() async {
    final ip = (await ipRestClient.getIP())['ip'] ?? '127.0.0.0';
    return ipInfoRestClient.fetchGeoInfo(ip: ip);
  }
}
