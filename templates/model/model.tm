// ignore_for_file: invalid_annotation_target
// ignore:  depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

part '{name}[-s].freezed.dart';
part '{name}[-s].g.dart';

@freezed
class {name}[-C] with _${name}[-C] {
  factory {name}[-C]({
    /// Identifier
    required String id,
  }) = _{name}[-C];

  factory {name}[-C].fromJson(Map<String, dynamic> json) =>
      _${name}[-C]FromJson(json);
}
