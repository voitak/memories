import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart' as bloc_concurrency;
import 'package:flutter/material.dart';
import 'package:flutter_bloc_side_effect/flutter_bloc_side_effect.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:memories/app/app.dart';
import 'package:memories/app/core/app_initializer.dart';
import 'package:memories/app/dependencies/dependencies.dart';
import 'package:memories/app/logging/bloc_logging/bloc_log_observer.dart';
import 'package:memories/app/logging/logger.dart';
import 'package:memories/app/router/app_router.dart';
import 'package:memories/app/widgets/inherited_dependencies.dart';
import 'package:memories/app/widgets/views/splash_screen.dart';

void main() {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();
      final RouterConfig<Object> router = AppRouter().router;
      Bloc.observer = const AppBlocObserver();
      Bloc.transformer = bloc_concurrency.sequential<Object?>();
      final initializationProgress =
          ValueNotifier<({double progress, String message})>(
        (progress: 0, message: ''),
      );
      /// Set true if there is a need to fetch fonts from fonts.google.com
      GoogleFonts.config.allowRuntimeFetching = false;
      runApp(SplashScreen(initializationProgress: initializationProgress));
      await initializeApp(
        onProgress: (double progress, String message) => initializationProgress
            .value = (progress: progress, message: message),
        onSuccess: (Dependencies dependencies) => runApp(
          InheritedDependencies(
            dependencies: dependencies,
            child: App(router: router),
          ),
        ),
        // TODO(Khismatullin): implement error screen
        onError: logError,
      );
    },
    logError,
    zoneSpecification: ZoneSpecification(
      print: (Zone self, ZoneDelegate parent, Zone zone, String line) {
        parent.print(
          zone,
          '[${DateFormat('HH:mm:ss.SSS').format(DateTime.now())}] $line',
        );
      },
    ),
  );
}
