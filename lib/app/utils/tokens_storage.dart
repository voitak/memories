// ignore_for_file: library_private_types_in_public_api

import 'dart:convert';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:memories/app/models/tokens/tokens.dart';

const String _defaultTokensKey = 'tokens_storage.tokens';

class TokensStorage {
  TokensStorage({
    required FlutterSecureStorage storage,
    this.key = _defaultTokensKey,
  }) : _storage = storage;

  final FlutterSecureStorage _storage;
  final String key;

  Tokens? _tokens;

  Future<void> write(Tokens tokens) async {
    _tokens = tokens;
    await _storage.write(key: key, value: jsonEncode(tokens.toJson()));
  }

  Future<Tokens?> read() async {
    final json = await _storage.read(key: key);
    if (json == null) return null;
    final tokens = Tokens.fromJson(jsonDecode(json) as Map<String, dynamic>);
    return _tokens = tokens;
  }

  /// Available after any other IO operation. Otherwise, returns *null*.
  Tokens? readSync() => _tokens;

  Future<void> clear() async {
    await _storage.delete(key: key);
    _tokens = null;
  }
}
