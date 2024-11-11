part of 'app_theme_extensions.dart';

/// First add the styles here, after add to [Styles]
class _TextStyles {
  _TextStyles._();

  static _TextStyles? _instance;

  static final _TextStyles instance = _instance ??= _TextStyles._();

  /// Download font archive from fonts.google.com
  /// and put ttf files to google_fonts folder before
  final h1Style = GoogleFonts.actor();
  final h2Style = GoogleFonts.actor().copyWith(fontSize: 14).copyWith(
    fontFeatures: const [FontFeature.proportionalFigures()],
  );
}
