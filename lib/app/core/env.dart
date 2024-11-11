import 'package:flutter_dotenv/flutter_dotenv.dart';

final class Env {
  factory Env() => _instance ??= Env._();

  Env._();

  static Env? _instance;

  // ignore: avoid-unassigned-late-fields
  static late final Environment env;

  final String authBaseUrl = dotenv.env['AUTH_BASE_URL'] ?? '';

  final String ipBaseUrl = dotenv.env['IP_BASE_URL'] ?? '';

  final String ipInfoBaseUrl = dotenv.env['IP_INFO_BASE_URL'] ?? '';
}

enum Environment { dev, prod }
