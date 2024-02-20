import 'package:flutter/material.dart';
import 'package:gym/features/themes/themes.dart';
import 'package:riverpod/riverpod.dart';

final gradientsProvider = Provider<GradientTheme>((ref) {
  return GradientTheme(
    primaryGradient: GradientThemeData(
      startColor: const Color(0xFF9DCEFF),
      endColor: const Color(0xFF92A3FD),
    ),
    secondaryGradient: GradientThemeData(
      startColor: const Color(0xFFEEA4CE),
      endColor: const Color(0xFFC58BF2),
    ),
  );
});
