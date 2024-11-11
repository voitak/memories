// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, unused_element, unnecessary_cast

part of 'app_theme_extensions.dart';

// **************************************************************************
// TailorAnnotationsGenerator
// **************************************************************************

mixin _$ColorsTailorMixin on ThemeExtension<Colors> {
  Color get transparent;
  Color get background;
  Color get lightBackground;
  Color get accent;
  Color get darkAccent;

  @override
  Colors copyWith({
    Color? transparent,
    Color? background,
    Color? lightBackground,
    Color? accent,
    Color? darkAccent,
  }) {
    return Colors(
      transparent: transparent ?? this.transparent,
      background: background ?? this.background,
      lightBackground: lightBackground ?? this.lightBackground,
      accent: accent ?? this.accent,
      darkAccent: darkAccent ?? this.darkAccent,
    );
  }

  @override
  Colors lerp(covariant ThemeExtension<Colors>? other, double t) {
    if (other is! Colors) return this as Colors;
    return Colors(
      transparent: Color.lerp(transparent, other.transparent, t)!,
      background: Color.lerp(background, other.background, t)!,
      lightBackground: Color.lerp(lightBackground, other.lightBackground, t)!,
      accent: Color.lerp(accent, other.accent, t)!,
      darkAccent: Color.lerp(darkAccent, other.darkAccent, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Colors &&
            const DeepCollectionEquality()
                .equals(transparent, other.transparent) &&
            const DeepCollectionEquality()
                .equals(background, other.background) &&
            const DeepCollectionEquality()
                .equals(lightBackground, other.lightBackground) &&
            const DeepCollectionEquality().equals(accent, other.accent) &&
            const DeepCollectionEquality()
                .equals(darkAccent, other.darkAccent));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(transparent),
      const DeepCollectionEquality().hash(background),
      const DeepCollectionEquality().hash(lightBackground),
      const DeepCollectionEquality().hash(accent),
      const DeepCollectionEquality().hash(darkAccent),
    );
  }
}

extension ColorsBuildContext on BuildContext {
  Colors get colors => Theme.of(this).extension<Colors>()!;
}

mixin _$StylesTailorMixin on ThemeExtension<Styles> {
  TextStyle get h1;
  TextStyle get h2;

  @override
  Styles copyWith({
    TextStyle? h1,
    TextStyle? h2,
  }) {
    return Styles(
      h1: h1 ?? this.h1,
      h2: h2 ?? this.h2,
    );
  }

  @override
  Styles lerp(covariant ThemeExtension<Styles>? other, double t) {
    if (other is! Styles) return this as Styles;
    return Styles(
      h1: TextStyle.lerp(h1, other.h1, t)!,
      h2: TextStyle.lerp(h2, other.h2, t)!,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Styles &&
            const DeepCollectionEquality().equals(h1, other.h1) &&
            const DeepCollectionEquality().equals(h2, other.h2));
  }

  @override
  int get hashCode {
    return Object.hash(
      runtimeType.hashCode,
      const DeepCollectionEquality().hash(h1),
      const DeepCollectionEquality().hash(h2),
    );
  }
}

extension StylesBuildContext on BuildContext {
  Styles get styles => Theme.of(this).extension<Styles>()!;
}
