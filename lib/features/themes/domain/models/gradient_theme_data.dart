import 'package:flutter/material.dart';

class GradientThemeData {
  final Color startColor;
  final Color endColor;

  GradientThemeData({
    required this.startColor,
    required this.endColor,
  });

  static GradientThemeData lerp(
      GradientThemeData a, GradientThemeData b, double t) {
    return GradientThemeData(
      startColor: Color.lerp(a.startColor, b.startColor, t)!,
      endColor: Color.lerp(a.endColor, b.endColor, t)!,
    );
  }

  LinearGradient get linear {
    return LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [startColor, endColor],
    );
  }

  RadialGradient get radial {
    return RadialGradient(
      center: Alignment.center,
      radius: 0.5,
      colors: [startColor, endColor],
    );
  }

  SweepGradient get sweep {
    return SweepGradient(
      startAngle: 0.0,
      endAngle: 3.14,
      colors: [startColor, endColor],
    );
  }
}
