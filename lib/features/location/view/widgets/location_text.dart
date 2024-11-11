import 'package:flutter/material.dart';
import 'package:memories/app/extensions/string.dart';
import 'package:memories/app/theme/app_theme_extensions.dart';

class LocationText extends StatelessWidget {
  const LocationText({required this.title, required this.info, super.key});

  final String title;
  final String? info;

  @override
  Widget build(BuildContext context) {
    return RichText(
      textDirection: TextDirection.ltr,
      text: TextSpan(
        text: '$title: ',
        style: context.styles.h2,
        children: <TextSpan>[
          TextSpan(
            text: info ?? 'no data'.hardCoded,
            style: context.styles.h1,
          ),
        ],
      ),
    );
  }
}
