import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

/// Provides the current [ThemeData] based on the current user's theme.
///
/// In order to change the theme, the user's theme name must be changed (see [userController]).
final themeProvider = Provider<ThemeData>((ref) {
  // TODO: light or dark theme

  return ThemeData(
    primarySwatch: Colors.blue,
    visualDensity: VisualDensity.adaptivePlatformDensity,
  );
});
