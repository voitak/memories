import 'package:flutter/material.dart';
import 'package:memories/app/theme/app_theme_extensions.dart';
import 'package:shimmer/shimmer.dart';

class TemplateShimmer extends StatelessWidget {
  const TemplateShimmer({
    required this.isLoading,
    required this.child,
    this.baseColor,
    this.highlightColor,
    super.key,
  });

  final bool isLoading;
  final Widget child;
  final Color? baseColor;
  final Color? highlightColor;

  @override
  Widget build(BuildContext context) {
    final colors = context.colors;
    return isLoading
        ? Shimmer.fromColors(
            baseColor: baseColor ?? colors.accent,
            highlightColor: highlightColor ?? colors.darkAccent,
            child: child,
          )
        : child;
  }
}
