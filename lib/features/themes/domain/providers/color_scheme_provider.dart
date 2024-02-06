import 'package:riverpod/riverpod.dart';
import 'package:flutter/material.dart';
import 'package:gym/shared/shared.dart';
import 'package:gym/features/themes/themes.dart';

final colorSchemeProvider = Provider<ColorScheme>((ref) {
  var brightness = ref.watch(deviceBrightnessProvider);
  var gradients = ref.watch(gradientsProvider);

  return ColorScheme(
    brightness: brightness,
    primary: gradients.primaryGradient.startColor,
    onPrimary: Colors.white,
    secondary: gradients.secondaryGradient.startColor,
    onSecondary: Colors.white,
    error: Colors.red,
    onError: Colors.white,
    background: Colors.white,
    onBackground: Colors.black,
    surface: Colors.white,
    onSurface: Colors.black,
    surfaceVariant: const Color(0xFFeaf0ff),
    outline: const Color(0xFFF7F8F8),
  );
});
