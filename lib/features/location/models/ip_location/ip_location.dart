// ignore_for_file: invalid_annotation_target
// ignore:  depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ip_location.freezed.dart';

part 'ip_location.g.dart';

@freezed
class IPLocation with _$IPLocation {
  factory IPLocation({
    required String ip,
    String? hostname,
    String? city,
    String? region,
    String? country,
    String? loc,
    String? org,
    String? postal,
    String? timezone,
    String? readme,
    @JsonKey(name: 'query') String? query,
  }) = _IPLocation;

  factory IPLocation.fromJson(Map<String, dynamic> json) =>
      _$IPLocationFromJson(json);
}
