// ignore_for_file: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:theme_tailor_annotation/theme_tailor_annotation.dart';

part 'app_theme_extensions_colors.dart';

part 'app_theme_extensions.tailor.dart';

part 'app_theme_extensions_text_styles.dart';

/// You can get colors from context
///
/// context.colors.accent
@TailorMixin(themeGetter: ThemeGetter.onBuildContext)
class Colors extends ThemeExtension<Colors> with _$ColorsTailorMixin {
  Colors({
    required this.accent,
    required this.darkAccent,
    required this.background,
    required this.lightBackground,
    this.transparent = _AppColors.transparent,
  });

  @override
  final Color transparent;
  @override
  final Color background;
  @override
  final Color lightBackground;
  @override
  final Color accent;
  @override
  final Color darkAccent;
}

/// You can get styles from context
///
/// context.styles.h1.copyWith(color: Colors.red, fontSize: 15)
@TailorMixin(themeGetter: ThemeGetter.onBuildContext)
class Styles extends ThemeExtension<Styles> with _$StylesTailorMixin {
  Styles({required this.h1, required this.h2});

  @override
  final TextStyle h1;
  @override
  final TextStyle h2;
}

final lightColors = Colors(
  accent: _AppColors.blue,
  darkAccent: _AppColors.darkBlue,
  background: _AppColors.whiteGrey,
  lightBackground: _AppColors.white,
);

final darkColors = Colors(
  accent: _AppColors.blue,
  darkAccent: _AppColors.darkBlue,
  background: _AppColors.black,
  lightBackground: _AppColors.whiteGrey,
);

final lightStyles = Styles(
  h1: _TextStyles.instance.h1Style.copyWith(color: _AppColors.blue),
  h2: _TextStyles.instance.h2Style.copyWith(color: _AppColors.blue),
);

final darkStyles = Styles(
  h1: _TextStyles.instance.h1Style.copyWith(color: _AppColors.white),
  h2: _TextStyles.instance.h2Style.copyWith(color: _AppColors.whiteGrey),
);
