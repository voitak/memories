// ignore_for_file: invalid_annotation_target
// ignore:  depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memories/app/models/token/token.dart';

part 'tokens.freezed.dart';
part 'tokens.g.dart';

@freezed
class Tokens with _$Tokens {
  factory Tokens({
    required Token accessToken,
    required Token refreshToken,
  }) = _Tokens;

  factory Tokens.fromJson(Map<String, dynamic> json) =>
      _$TokensFromJson(json);
}
