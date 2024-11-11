import 'package:flutter/material.dart';

extension StringExtensions on String {
  @Deprecated('Do not forget to remove hardcoded strings')
  String get hardCoded => this;

  String get capitalized =>
      '${this[0].toUpperCase()}${substring(1).toLowerCase()}';

  Size getTextWidgetSize({
    TextStyle? style,
    int? maxLines,
    double? maxWidth,
  }) =>
      (TextPainter(
        text: TextSpan(text: this, style: style),
        maxLines: maxLines ?? 1,
        textDirection: TextDirection.ltr,
      )..layout(maxWidth: maxWidth ?? double.infinity))
          .size;
}
