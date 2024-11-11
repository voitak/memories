// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ip_location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$IPLocationImpl _$$IPLocationImplFromJson(Map<String, dynamic> json) =>
    _$IPLocationImpl(
      ip: json['ip'] as String,
      hostname: json['hostname'] as String?,
      city: json['city'] as String?,
      region: json['region'] as String?,
      country: json['country'] as String?,
      loc: json['loc'] as String?,
      org: json['org'] as String?,
      postal: json['postal'] as String?,
      timezone: json['timezone'] as String?,
      readme: json['readme'] as String?,
      query: json['query'] as String?,
    );

Map<String, dynamic> _$$IPLocationImplToJson(_$IPLocationImpl instance) =>
    <String, dynamic>{
      'ip': instance.ip,
      'hostname': instance.hostname,
      'city': instance.city,
      'region': instance.region,
      'country': instance.country,
      'loc': instance.loc,
      'org': instance.org,
      'postal': instance.postal,
      'timezone': instance.timezone,
      'readme': instance.readme,
      'query': instance.query,
    };
