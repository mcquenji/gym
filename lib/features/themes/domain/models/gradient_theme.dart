import 'package:flutter/material.dart';
import 'package:gym/features/themes/themes.dart';

class GradientTheme extends ThemeExtension<GradientTheme> {
  final GradientThemeData primaryGradient;
  final GradientThemeData secondaryGradient;

  GradientTheme({
    required this.primaryGradient,
    required this.secondaryGradient,
  });

  @override
  ThemeExtension<GradientTheme> copyWith(
      {GradientThemeData? primary, GradientThemeData? secondary}) {
    return GradientTheme(
      primaryGradient: primary ?? primaryGradient,
      secondaryGradient: secondary ?? secondaryGradient,
    );
  }

  @override
  ThemeExtension<GradientTheme> lerp(
      covariant ThemeExtension<GradientTheme>? other, double t) {
    if (other == null) return this;

    if (other is GradientTheme) {
      return GradientTheme(
        primaryGradient:
            GradientThemeData.lerp(primaryGradient, other.primaryGradient, t),
        secondaryGradient: GradientThemeData.lerp(
            secondaryGradient, other.secondaryGradient, t),
      );
    }

    return this;
  }

  static GradientTheme of(BuildContext context) =>
      Theme.of(context).extension<GradientTheme>()!;
}
