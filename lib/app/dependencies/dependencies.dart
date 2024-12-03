import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:intl/intl.dart';
import 'package:memories/app/core/env.dart';
import 'package:memories/app/dio_interceptors/log_interceptor.dart';
import 'package:memories/app/extensions/num.dart';
import 'package:memories/app/models/app_meta_data.dart';
import 'package:memories/app/utils/app_stats.dart';
import 'package:memories/app/utils/dio_options.dart';
import 'package:memories/app/utils/tokens_storage.dart';
import 'package:memories/app/widgets/inherited_dependencies.dart';
import 'package:memories/features/camera/bloc/camera_bloc.dart';
import 'package:memories/features/camera/repository/camera_repository.dart';
import 'package:memories/features/camera/repository/camera_repository_impl.dart';
import 'package:memories/features/gallery/bloc/gallery_bloc.dart';
import 'package:memories/features/gallery/repository/gallery_repository.dart';
import 'package:memories/features/gallery/repository/gallery_repository_impl.dart';
import 'package:memories/features/notifications/bloc/notifications_bloc.dart';
import 'package:memories/features/notifications/clients/notifications_rest_client.dart';
import 'package:memories/features/notifications/repository/notifications_repository.dart';
import 'package:memories/features/notifications/repository/notifications_repository_impl.dart';
import 'package:memories/features/video/bloc/video_bloc.dart';
import 'package:memories/features/video/clients/video_rest_client.dart';
import 'package:memories/features/video/repository/video_repository.dart';
import 'package:memories/features/video/repository/video_repository_impl.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

typedef _InitializationStep = FutureOr<void> Function(
  DevDependencies dependencies,
);

abstract interface class Dependencies {
  factory Dependencies.of(BuildContext context) =>
      InheritedDependencies.of(context);

  // CORE
  abstract final Env env;
  abstract final AppStats appStats;
  abstract final AppMetaData metaData;
  abstract final SharedPreferences prefs;
  abstract final FlutterSecureStorage secureStorage;
  abstract final TokensStorage tokensStorage;

  //  CAMERA
  abstract final CameraRepository cameraRepository;
  abstract final CameraBloc cameraBloc;

  // Gallery
  abstract final GalleryRepository galleryRepository;
  abstract final GalleryBloc galleryBloc;

  // Video
  abstract final Dio videoDio;
  abstract final VideoRestClient videoRestClient;
  abstract final VideoRepository videoRepository;
  abstract final VideoBloc videoBloc;

  // Notifications
  abstract final Dio notificationsDio;
  abstract final NotificationsRestClient notificationsRestClient;
  abstract final NotificationsRepository notificationsRepository;
  abstract final NotificationsBloc notificationsBloc;
}

final class DevDependencies implements Dependencies {
  // CORE
  @override
  late final Env env;

  @override
  late final AppStats appStats;

  @override
  late final AppMetaData metaData;

  @override
  late final SharedPreferences prefs;

  @override
  late final FlutterSecureStorage secureStorage;

  @override
  late final TokensStorage tokensStorage;

  // CAMERA
  @override
  late final CameraRepository cameraRepository;

  @override
  late final CameraBloc cameraBloc;

  // Gallery
  @override
  late final GalleryRepository galleryRepository;

  @override
  late final GalleryBloc galleryBloc;

  // Video
  @override
  late final Dio videoDio;

  @override
  late final VideoRestClient videoRestClient;

  @override
  late final VideoRepository videoRepository;

  @override
  late final VideoBloc videoBloc;

  // Notifications
  @override
  late final Dio notificationsDio;

  @override
  late final NotificationsRestClient notificationsRestClient;

  @override
  late final NotificationsRepository notificationsRepository;

  @override
  late final NotificationsBloc notificationsBloc;

  static Future<Dependencies> initialize({
    void Function(double progress, String message)? onProgress,
  }) async {
    final dependencies = DevDependencies();
    final totalSteps = _initializationSteps.length;
    int currentStep = 0;
    for (final step in _initializationSteps.entries) {
      currentStep++;
      final progress = currentStep / totalSteps;
      onProgress?.call(progress, step.key);
      if (kDebugMode) {
        debugPrint(
          'Initialization | ${currentStep.formatted}/${totalSteps.formatted} (${NumberFormat.percentPattern().format(progress)}) | "${step.key}"',
        );
      }
      await step.value(dependencies);
    }
    return dependencies;
  }

  static final Map<String, _InitializationStep> _initializationSteps =
      <String, _InitializationStep>{
    'Shared preferences initialization': (dependencies) async =>
        dependencies.prefs = await SharedPreferences.getInstance(),
    'Secure storage initialization': (DevDependencies dependencies) async {
      await const FlutterSecureStorage().readAll();
      dependencies.secureStorage = const FlutterSecureStorage();
    },
    'App stats initialization': (dependencies) async {
      dependencies.appStats = AppStats(prefs: dependencies.prefs);
      await dependencies.appStats.initialize();
    },
    'Environment initialization': (dependencies) async {
      Env.env =
          const String.fromEnvironment('env', defaultValue: 'dev') == 'dev'
              ? Environment.dev
              : Environment.prod;
      switch (Env.env) {
        case Environment.dev:
          await dotenv.load(fileName: '.configs/dev/configs.env');
        case Environment.prod:
          await dotenv.load(fileName: '.configs/prod/configs.env');
      }
      dependencies.env = Env();
    },
    'Meta Data initialization': (dependencies) async {
      final packageInfo = await PackageInfo.fromPlatform();
      dependencies.metaData = AppMetaData(
        version: packageInfo.version,
        buildNumber: packageInfo.buildNumber,
      );
    },

    'Camera initialization': (dependencies) {
      dependencies
        ..cameraRepository = CameraRepositoryImpl()
        ..cameraBloc = CameraBloc(
          repository: dependencies.cameraRepository,
        );
      // dependencies.locationBloc.add(const LocationEvent.fetchData());
    },
    'Gallery initialization': (dependencies) {
      dependencies
        ..galleryRepository = GalleryRepositoryImpl()
        ..galleryBloc = GalleryBloc(
          repository: dependencies.galleryRepository,
        );
      // dependencies.galleryBloc.add(const GalleryEvent.initialize());
    },
    'Video initialization': (dependencies) {
      dependencies
        ..videoDio = Dio(getDioOptions(dependencies.env.authBaseUrl))
        ..videoRestClient = VideoRestClient(dependencies.videoDio)
        ..videoRepository = VideoRepositoryImpl(
          client: dependencies.videoRestClient,
        )
        ..videoBloc = VideoBloc(
          repository: dependencies.videoRepository,
        );
      dependencies.videoDio.interceptors.addAll([DioLogInterceptor.normal()]);
      dependencies.videoBloc.add(const VideoEvent.initialize());
    },
    'Notifications initialization': (dependencies) {
      dependencies
        ..notificationsDio = Dio(getDioOptions(dependencies.env.authBaseUrl))
        ..notificationsRestClient =
            NotificationsRestClient(dependencies.notificationsDio)
        ..notificationsRepository = NotificationsRepositoryImpl(
          client: dependencies.notificationsRestClient,
        )
        ..notificationsBloc = NotificationsBloc(
          repository: dependencies.notificationsRepository,
        );
      dependencies.notificationsDio.interceptors
          .addAll([DioLogInterceptor.normal()]);
      dependencies.notificationsBloc.add(const NotificationsEvent.initialize());
    },
    // TODO(All): remove in real project
    'Initialization complete': (_) =>
        Future<void>.delayed(const Duration(seconds: 1)),
  };
}

enum DependenciesType { dev, test }
