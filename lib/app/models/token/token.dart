// ignore_for_file: invalid_annotation_target
// ignore:  depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:jwt_decoder/jwt_decoder.dart';

part 'token.freezed.dart';
part 'token.g.dart';

@freezed
class Token with _$Token {
  factory Token({
    required String raw,
  }) = _Token;

  const Token._();

  factory Token.fromJson(Map<String, dynamic> json) => _$TokenFromJson(json);

  bool get isExpired => JwtDecoder.isExpired(raw);

  Map<String, dynamic> get decoded => JwtDecoder.decode(raw);
}
