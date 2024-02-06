import 'package:flutter/material.dart';
import 'package:gym/features/themes/themes.dart';
import 'package:riverpod/riverpod.dart';

/// Provides the current [ThemeData] based on the device's theme mode.
final themeProvider = Provider<ThemeData>((ref) {
  var gradients = ref.watch(gradientsProvider);

  return ThemeData(
    primarySwatch: ref.watch(primarySwatchProvider),
    brightness: ref.watch(deviceBrightnessProvider),
    textTheme: ref.watch(textThemeProvider),
    extensions: [
      gradients,
    ],
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          Colors.transparent,
        ),
      ),
    ),
  );
});
