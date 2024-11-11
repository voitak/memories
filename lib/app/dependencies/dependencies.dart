import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:intl/intl.dart';
import 'package:memories/app/core/app_meta_data.dart';
import 'package:memories/app/core/env.dart';
import 'package:memories/app/dio_interceptors/log_interceptor.dart';
import 'package:memories/app/extensions/num.dart';
import 'package:memories/app/utils/dio_options.dart';
import 'package:memories/app/widgets/inherited_dependencies.dart';
import 'package:memories/features/auth/clients/auth_rest_client.dart';
import 'package:memories/features/auth/repository/auth_repository.dart';
import 'package:memories/features/auth/repository/auth_repository_impl.dart';
import 'package:memories/features/location/bloc/location_bloc.dart';
import 'package:memories/features/location/clients/ip/ip_rest_client.dart';
import 'package:memories/features/location/clients/ip_info/ip_info_rest_client.dart';
import 'package:memories/features/location/repository/ip_location_repository.dart';
import 'package:memories/features/location/repository/ip_location_repository_impl.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:shared_preferences/shared_preferences.dart';

typedef _InitializationStep = FutureOr<void> Function(
  DevDependencies dependencies,
);

abstract interface class Dependencies {
  factory Dependencies.of(BuildContext context) =>
      InheritedDependencies.of(context);

  abstract final Env env;
  abstract final AppMetaData metaData;
  abstract final SharedPreferences prefs;
  abstract final FlutterSecureStorage secureStorage;
  abstract final Dio ipDio;
  abstract final IPRestClient ipRestClient;
  abstract final Dio ipInfoDio;
  abstract final IPInfoRestClient ipInfoRestClient;
  abstract final IPLocationRepository ipLocationRepository;
  abstract final LocationBloc locationBloc;
  abstract final Dio authDio;
  abstract final AuthRestClient authRestClient;
  abstract final AuthRepository authRepository;
}

final class DevDependencies implements Dependencies {
  @override
  late final Env env;

  @override
  late final AppMetaData metaData;

  @override
  late final SharedPreferences prefs;

  @override
  late final FlutterSecureStorage secureStorage;

  @override
  late final Dio ipDio;

  @override
  late final IPRestClient ipRestClient;

  @override
  late final Dio ipInfoDio;

  @override
  late final IPInfoRestClient ipInfoRestClient;

  @override
  late final IPLocationRepository ipLocationRepository;

  @override
  late final LocationBloc locationBloc;

  @override
  late final Dio authDio;

  @override
  late final AuthRestClient authRestClient;

  @override
  late final AuthRepository authRepository;

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
    'Environment initialization': (DevDependencies dependencies) async {
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
    'Meta Data initialization': (DevDependencies dependencies) async {
      final packageInfo = await PackageInfo.fromPlatform();
      dependencies.metaData = AppMetaData(
        version: packageInfo.version,
        buildNumber: packageInfo.buildNumber,
      );
    },
    'Shared preferences initialization': (DevDependencies dependencies) async =>
        dependencies.prefs = await SharedPreferences.getInstance(),
    'Secure storage initialization': (DevDependencies dependencies) async {
      await const FlutterSecureStorage().readAll();
      dependencies.secureStorage = const FlutterSecureStorage();
    },
    'Auth service initialization': (DevDependencies dependencies) {
      dependencies
        ..authDio = Dio(getDioOptions(dependencies.env.authBaseUrl))
        ..authRestClient = AuthRestClient(dependencies.authDio)
        ..authRepository = AuthRepositoryImpl(
          client: dependencies.authRestClient,
        );
      dependencies.authDio.interceptors.add(DioLogInterceptor.normal());
    },
    'IP Location service initialization': (DevDependencies dependencies) {
      dependencies
        ..ipDio = Dio(getDioOptions(dependencies.env.ipBaseUrl))
        ..ipRestClient = IPRestClient(dependencies.ipDio)
        ..ipInfoDio = Dio(getDioOptions(dependencies.env.ipInfoBaseUrl))
        ..ipInfoRestClient = IPInfoRestClient(dependencies.ipInfoDio)
        ..ipLocationRepository = IPLocationRepositoryImpl(
          ipRestClient: dependencies.ipRestClient,
          ipInfoRestClient: dependencies.ipInfoRestClient,
        )
        ..locationBloc = LocationBloc(
          repository: dependencies.ipLocationRepository,
        );
      dependencies.ipDio.interceptors.addAll([DioLogInterceptor.normal()]);
      dependencies.ipInfoDio.interceptors.addAll([DioLogInterceptor.normal()]);
      dependencies.locationBloc.add(const LocationEvent.fetchData());
    },
    'Initialization complete': (_) =>
        Future<void>.delayed(const Duration(seconds: 1)),
  };
}

enum DependenciesType { dev, test }
