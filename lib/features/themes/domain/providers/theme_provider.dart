import 'package:flutter/material.dart';
import 'package:gym/features/themes/themes.dart';
import 'package:gym/shared/shared.dart';
import 'package:riverpod/riverpod.dart';

/// Provides the current [ThemeData] based on the device's theme mode.
final themeProvider = Provider<ThemeData>((ref) {
  var colorScheme = ref.watch(colorSchemeProvider);
  var textTheme = ref.watch(textThemeProvider);
  var greyscale = ref.watch(greyscaleProvider);

  return ThemeData(
    primarySwatch: ref.watch(primarySwatchProvider),
    brightness: ref.watch(deviceBrightnessProvider),
    textTheme: textTheme,
    colorScheme: colorScheme,
    extensions: [
      ref.watch(gradientsProvider),
      ref.watch(shadowThemeProvider),
      greyscale,
    ],
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(
          Colors.transparent,
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      counterStyle: textTheme.bodySmall?.copyWith(
        color: greyscale.grey1,
        fontSize: 14,
      ),
      border: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: BorderSide.none,
      ),
      focusedBorder: UnderlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: BorderSide.none,
      ),
      filled: true,
      fillColor: colorScheme.outline,
      hoverColor: Colors.transparent,
      focusColor: colorScheme.outline,
      hintStyle: textTheme.bodySmall?.copyWith(
        color: greyscale.grey2,
        fontSize: 14,
      ),
      labelStyle: textTheme.bodySmall?.copyWith(
        color: greyscale.grey1,
        fontSize: 14,
      ),
      iconColor: greyscale.grey1,
      prefixIconColor: greyscale.grey1,
      suffixIconColor: greyscale.grey1,
      contentPadding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 16,
      ),
    ),
    splashFactory: NoSplash.splashFactory,
    splashColor: Colors.transparent,
    popupMenuTheme: PopupMenuThemeData(
      labelTextStyle: MaterialStateProperty.all(
        textTheme.bodyMedium,
      ),
      color: colorScheme.surface,
      textStyle: textTheme.bodyMedium.bold,
      position: PopupMenuPosition.under,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 8,
      shadowColor: greyscale.grey3.withOpacity(0.3),
      surfaceTintColor: colorScheme.surface,
    ),
    shadowColor: greyscale.grey3.withOpacity(0.3),
  );
});
