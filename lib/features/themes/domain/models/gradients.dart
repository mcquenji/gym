import 'package:flutter/material.dart';
import 'package:gym/features/themes/themes.dart';

class Gradients extends ThemeExtension<Gradients> {
  final GradientThemeData primaryGradient;
  final GradientThemeData secondaryGradient;

  Gradients({
    required this.primaryGradient,
    required this.secondaryGradient,
  });

  @override
  ThemeExtension<Gradients> copyWith(
      {GradientThemeData? primary, GradientThemeData? secondary}) {
    return Gradients(
      primaryGradient: primary ?? this.primaryGradient,
      secondaryGradient: secondary ?? this.secondaryGradient,
    );
  }

  @override
  ThemeExtension<Gradients> lerp(
      covariant ThemeExtension<Gradients>? other, double t) {
    if (other == null) return this;

    if (other is Gradients) {
      return Gradients(
        primaryGradient:
            GradientThemeData.lerp(primaryGradient, other.primaryGradient, t),
        secondaryGradient: GradientThemeData.lerp(
            secondaryGradient, other.secondaryGradient, t),
      );
    }

    return this;
  }

  static Gradients of(BuildContext context) =>
      Theme.of(context).extension<Gradients>()!;
}
