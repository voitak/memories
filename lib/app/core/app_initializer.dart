import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:memories/app/dependencies/dependencies.dart';
import 'package:memories/app/logging/logger.dart';

Future<Dependencies> initializeApp({
  void Function(double progress, String message)? onProgress,
  FutureOr<void> Function(Dependencies dependencies)? onSuccess,
  void Function(Object error, StackTrace stackTrace)?
      onError, // DependenciesType? type = DependenciesType.dev,
}) =>
    Future(() async {
      late final WidgetsBinding binding;
      final stopwatch = Stopwatch()..start();
      try {
        binding = WidgetsFlutterBinding.ensureInitialized()..deferFirstFrame();
        await SystemChrome.setPreferredOrientations([
          DeviceOrientation.portraitUp,
          DeviceOrientation.portraitDown,
        ]);
        _setExceptionsCatching();
        // initialize test dependencies here
        final dependencies =
            await DevDependencies.initialize(onProgress: onProgress)
                .timeout(const Duration(minutes: 1));
        await onSuccess?.call(dependencies);
        return dependencies;
      } on Object catch (error, stackTrace) {
        onError?.call(error, stackTrace);
        logError(error, stackTrace);
        rethrow;
      } finally {
        stopwatch.stop();
        binding.addPostFrameCallback((_) {
          // Closes splash screen, and show the app layout.
          binding.allowFirstFrame();
        });
      }
    });

void _setExceptionsCatching() {
  try {
    PlatformDispatcher.instance.onError = (error, stackTrace) {
      logError(error, stackTrace);
      return true;
    };
    final sourceFlutterError = FlutterError.onError;
    FlutterError.onError = (details) {
      sourceFlutterError?.call(details);
    };
  } on Object catch (error, stackTrace) {
    logError(error, stackTrace);
  }
}
