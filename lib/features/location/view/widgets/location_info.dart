import 'package:flutter/material.dart';
import 'package:memories/app/extensions/string.dart';
import 'package:memories/features/location/models/ip_location/ip_location.dart';
import 'package:memories/features/location/view/widgets/location_text.dart';

class LocationInfo extends StatelessWidget {
  const LocationInfo({required this.location, super.key});

  final IPLocation? location;

  @override
  Widget build(BuildContext context) {
    return location == null
        ? Text('No data'.hardCoded)
        : Material(
            borderRadius: BorderRadius.circular(14),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  LocationText(
                    title: 'hostname'.hardCoded,
                    info: location!.hostname,
                  ),
                  LocationText(
                    title: 'city'.hardCoded,
                    info: location!.city,
                  ),
                  LocationText(
                    title: 'region'.hardCoded,
                    info: location!.region,
                  ),
                  LocationText(
                    title: 'country'.hardCoded,
                    info: location!.country,
                  ),
                  LocationText(title: 'loc'.hardCoded, info: location!.loc),
                  LocationText(title: 'org'.hardCoded, info: location!.org),
                  LocationText(
                    title: 'postal'.hardCoded,
                    info: location!.postal,
                  ),
                ],
              ),
            ),
          );
  }
}
