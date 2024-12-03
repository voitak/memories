import 'dart:io';
import 'dart:ui';

import 'package:dio/dio.dart';
import 'package:memories/app/models/tokens/tokens.dart';

class AuthInterceptor extends QueuedInterceptor {
  AuthInterceptor({
    required this.refreshTokens,
    required this.fetchTokens,
    required this.onErrorOccurred,
  });

  final Future<Tokens> Function() refreshTokens;
  final Future<Tokens?> Function() fetchTokens;
  final VoidCallback onErrorOccurred;

  @override
  Future<void> onRequest(
    RequestOptions options,
    RequestInterceptorHandler handler,
  ) async {
    Tokens? tokens = await fetchTokens();
    if (tokens == null) {
      onErrorOccurred();
      return handler.reject(DioException(
        requestOptions: options..extra['tokenErrorType'] = 'Empty token',
        type: DioExceptionType.cancel,
      ));
    }
    if (tokens.refreshToken.isExpired) {
      onErrorOccurred();
      return handler.reject(DioException(
        requestOptions: options
          ..extra['tokenErrorType'] = 'Refresh token has expired',
        type: DioExceptionType.cancel,
      ));
    }
    if (tokens.accessToken.isExpired) {
      try {
        tokens = await refreshTokens();
      } on Object {
        onErrorOccurred();
        return handler.reject(DioException(
          requestOptions: options
            ..extra['tokenErrorType'] = 'Unable to refresh token',
          type: DioExceptionType.cancel,
        ));
      }
    }
    options.headers[HttpHeaders.authorizationHeader] =
        'Bearer ${tokens.accessToken}';
    return handler.next(options);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == 403 || err.response?.statusCode == 401) {
      err.requestOptions.extra['tokenErrorType'] = 'Invalid access token';
      onErrorOccurred();
    }
    return handler.reject(err);
  }
}
