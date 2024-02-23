import 'package:flutter/material.dart';

class ShadowTheme extends ThemeExtension<ShadowTheme> {
  final Shadows buttonShadow;
  final Shadows defaultShadow;
  final Shadows longPressShadow;
  final Shadows bottomNavBar;

  ShadowTheme({
    required this.buttonShadow,
    required this.defaultShadow,
    required this.longPressShadow,
    required this.bottomNavBar,
  });

  @override
  ThemeExtension<ShadowTheme> copyWith({
    Shadows? buttonShadow,
    Shadows? defaultShadow,
    Shadows? longPressShadow,
    Shadows? bottomNavBar,
  }) {
    return ShadowTheme(
      buttonShadow: buttonShadow ?? this.buttonShadow,
      defaultShadow: defaultShadow ?? this.defaultShadow,
      longPressShadow: longPressShadow ?? this.longPressShadow,
      bottomNavBar: bottomNavBar ?? this.bottomNavBar,
    );
  }

  @override
  ThemeExtension<ShadowTheme> lerp(
      covariant ThemeExtension<ShadowTheme>? other, double t) {
    if (other == null) return this;

    if (other is! ShadowTheme) {
      return ShadowTheme(
        buttonShadow: lerpShadow(buttonShadow, [], t),
        defaultShadow: lerpShadow(defaultShadow, [], t),
        longPressShadow: lerpShadow(longPressShadow, [], t),
        bottomNavBar: lerpShadow(bottomNavBar, [], t),
      );
    }

    return ShadowTheme(
      buttonShadow: lerpShadow(buttonShadow, other.buttonShadow, t),
      defaultShadow: lerpShadow(defaultShadow, other.defaultShadow, t),
      longPressShadow: lerpShadow(longPressShadow, other.longPressShadow, t),
      bottomNavBar: lerpShadow(bottomNavBar, other.bottomNavBar, t),
    );
  }

  static Shadows lerpShadow(Shadows a, Shadows b, double t) {
    final length = a.length > b.length ? a.length : b.length;
    final shadows = <BoxShadow>[];
    for (var i = 0; i < length; i++) {
      final shadowA = a.length > i ? a[i] : a.last;
      final shadowB = b.length > i ? b[i] : b.last;
      shadows.add(BoxShadow.lerp(shadowA, shadowB, t)!);
    }
    return shadows;
  }
}

typedef Shadows = List<BoxShadow>;
