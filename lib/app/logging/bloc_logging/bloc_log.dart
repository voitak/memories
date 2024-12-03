// ignore_for_file: avoid-dynamic

import 'dart:developer';
import 'dart:ui';

import 'package:flutter_bloc_side_effect/flutter_bloc_side_effect.dart';
import 'package:memories/app/logging/log_hub.dart';
import 'package:memories/features/camera/bloc/camera_bloc.dart';
import 'package:memories/features/gallery/bloc/gallery_bloc.dart';

enum BlocLogLevel {
  /// Disable all logs
  none,

  /// Log every change
  normal,

  /// Log only prioritized changes
  priority,
}

void handleBlocChange(BlocBase<dynamic> bloc, Change<dynamic> change) =>
    _handleBlocLog(
      type: bloc.runtimeType,
      log: () => log('[${bloc.runtimeType} change]\n$change'),
    );

void handleBlocError(
  BlocBase<dynamic> bloc,
  Object error,
  StackTrace stackTrace,
) =>
    _handleBlocLog(
      type: bloc.runtimeType,
      log: () =>
          log('[${bloc.runtimeType} error]\n$error\nStacktrace: $stackTrace'),
    );

void _handleBlocLog({required Object type, required VoidCallback log}) {
  switch (_blocLogLevelFromType(type)) {
    case BlocLogLevel.none:
      return;
    case BlocLogLevel.priority:
      if (globalBlocLoggerLevel == BlocLogLevel.none) return;
      return log();
    case BlocLogLevel.normal:
      if (globalBlocLoggerLevel == BlocLogLevel.none) return;
      if (globalBlocLoggerLevel == BlocLogLevel.priority) return;
      return log();
  }
}

BlocLogLevel _blocLogLevelFromType(Object type) {
  if (!_blocLogLevelsMap.containsKey(type)) return BlocLogLevel.none;

  return _blocLogLevelsMap[type]!;
}

/// Append all new BLoCs here to let them log on changes.
/// By default there will be no logs at all for new BLoCs.
const Map<Object, BlocLogLevel> _blocLogLevelsMap = {
  GalleryBloc: BlocLogLevel.normal,
  CameraBloc: BlocLogLevel.normal,
};
