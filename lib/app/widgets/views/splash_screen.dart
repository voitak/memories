import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:memories/app/models/app_meta_data.dart';
import 'package:memories/app/theme/app_theme_data.dart';
import 'package:memories/app/widgets/app_version.dart';
import 'package:package_info_plus/package_info_plus.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({required this.initializationProgress, super.key});

  final ValueNotifier<({String message, double progress})>
      initializationProgress;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemeData.light,
      darkTheme: AppThemeData.dark,
      home: Scaffold(
        body: Center(
          child: FutureBuilder<PackageInfo>(
            future: PackageInfo.fromPlatform(),
            builder:
                (BuildContext context, AsyncSnapshot<PackageInfo> snapshot) {
              return ValueListenableBuilder<
                  ({String message, double progress})>(
                valueListenable: initializationProgress,
                builder: (
                  BuildContext _,
                  ({String message, double progress}) value,
                  Widget? __,
                ) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      Text(
                        NumberFormat.percentPattern().format(value.progress),
                        style: const TextStyle(fontSize: 18),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        value.message.isEmpty ? 'Loading' : value.message,
                        style: const TextStyle(fontSize: 12),
                      ),
                      const Spacer(),
                      if (snapshot.hasData)
                        AppVersion(
                          metaData: AppMetaData(
                            version: snapshot.data!.version,
                            buildNumber: snapshot.data!.buildNumber,
                          ),
                        )
                      else
                        const AppVersion(
                          metaData: AppMetaData(
                            version: '',
                            buildNumber: '',
                          ),
                        ),
                    ],
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
