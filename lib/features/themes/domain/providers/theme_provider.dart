import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

/// Provides the current [ThemeData] based on the device's theme mode.
final themeProvider = Provider<ThemeData>((ref) {
  var brightness = PlatformDispatcher.instance.platformBrightness;

  return brightness == Brightness.dark ? ThemeData.dark() : ThemeData.light();
});
