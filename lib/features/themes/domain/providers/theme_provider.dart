import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

/// Provides the current [ThemeData] based on the device's theme mode.
final themeProvider = Provider<ThemeData>((ref) {
  // TODO: light or dark theme

  return ThemeData(
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
});
