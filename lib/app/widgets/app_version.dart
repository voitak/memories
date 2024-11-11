import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:memories/app/core/app_meta_data.dart';
import 'package:memories/app/theme/app_theme_extensions.dart';

class AppVersion extends StatelessWidget {
  const AppVersion({required this.metaData, super.key});

  final AppMetaData metaData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: InkWell(
        onTap: () =>
            Clipboard.setData(ClipboardData(text: metaData.fullVersion)),
        child: Text(
          metaData.fullVersion,
          style: context.styles.h1.copyWith(
            color: context.colors.background.withOpacity(.5),
            fontSize: 8,
          ),
        ),
      ),
    );
  }
}
