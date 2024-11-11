import 'package:dio/dio.dart';

BaseOptions getDioOptions(String url, {Map<String, String>? headers}) {
  return BaseOptions(
    baseUrl: url,
    contentType: 'application/json',
    receiveTimeout: const Duration(seconds: 20),
    connectTimeout: const Duration(seconds: 20),
    sendTimeout: const Duration(seconds: 20),
    headers: {
      // add common headers
      ...?headers,
    },
  );
}
