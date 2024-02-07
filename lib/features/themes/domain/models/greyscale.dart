import 'package:flutter/material.dart';

class Greyscale extends ThemeExtension<Greyscale> {
  /// The darkest color in the greyscale palette
  Color grey1;

  /// The middle color in the greyscale palette
  Color grey2;

  /// The lightest color in the greyscale palette
  Color grey3;

  Greyscale({
    required this.grey1,
    required this.grey2,
    required this.grey3,
  });

  @override
  ThemeExtension<Greyscale> copyWith(
      {Color? grey1, Color? grey2, Color? grey3}) {
    return Greyscale(
      grey1: grey1 ?? this.grey1,
      grey2: grey2 ?? this.grey2,
      grey3: grey3 ?? this.grey3,
    );
  }

  @override
  ThemeExtension<Greyscale> lerp(
      covariant ThemeExtension<Greyscale>? other, double t) {
    if (other == null) return this;

    if (other is Greyscale) {
      return Greyscale(
        grey1: Color.lerp(grey1, other.grey1, t)!,
        grey2: Color.lerp(grey2, other.grey2, t)!,
        grey3: Color.lerp(grey3, other.grey3, t)!,
      );
    }

    return this;
  }
}
