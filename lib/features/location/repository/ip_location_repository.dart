import 'package:memories/features/location/models/ip_location/ip_location.dart';

abstract class IPLocationRepository {
  Future<IPLocation> fetchIPLocation();
}
