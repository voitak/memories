// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: avoid-dynamic

import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:memories/app/logging/log_hub.dart';

enum DioLogLevel {
  /// Disable all logs
  none,

  /// Log every request
  normal,

  /// Log only prioritized requests
  priority,
}

class DioLogInterceptor implements InterceptorsWrapper {
  DioLogInterceptor.normal() {
    _level = DioLogLevel.normal;
  }

  DioLogInterceptor.priority() {
    _level = DioLogLevel.priority;
  }

  DioLogInterceptor.none() {
    _level = DioLogLevel.none;
  }

  late DioLogLevel _level;

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    _handleLog(() => _logRequest(options));
    handler.next(options);
  }

  @override
  void onResponse(
    Response<dynamic> response,
    ResponseInterceptorHandler handler,
  ) {
    _handleLog(() => _logResponse(response));
    handler.next(response);
  }

  @override
  void onError(DioException error, ErrorInterceptorHandler handler) {
    _handleLog(() => _logError(error));
    handler.next(error);
  }

  void _handleLog(VoidCallback log) {
    switch (_level) {
      case DioLogLevel.none:
        return;
      case DioLogLevel.priority:
        if (globalDioLoggerLevel == DioLogLevel.none) return;
        return log();
      case DioLogLevel.normal:
        if (globalDioLoggerLevel == DioLogLevel.none) return;
        if (globalDioLoggerLevel == DioLogLevel.priority) return;
        return log();
    }
  }

  void _logRequest(RequestOptions options) {
    String headers = '';
    options.headers
        .forEach((String key, dynamic value) => headers += '| $key: $value');
    log('┌------------------------------------------------------------------------------');
    log('| Request: ${options.method} ${options.uri}');
    log('| ${options.data}');
    log('| Headers:\n$headers');
    log('├------------------------------------------------------------------------------');
  }

  void _logResponse(Response<dynamic> response) {
    log('| Response [code ${response.statusCode ?? ''}]: ${response.data}');
    log('└------------------------------------------------------------------------------');
  }

  void _logError(DioException error) {
    log('| Error: ${error.error ?? ''}: ${error.response ?? ''}');
    log('└------------------------------------------------------------------------------');
  }
}
