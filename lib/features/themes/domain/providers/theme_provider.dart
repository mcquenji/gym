import 'package:flutter/material.dart';
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
    dropdownMenuTheme: DropdownMenuThemeData(
      textStyle: textTheme.bodySmall?.copyWith(
        color: greyscale.grey1,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: colorScheme.surface,
        hoverColor: Colors.transparent,
        focusColor: colorScheme.surface,
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        focusedBorder: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide.none,
        ),
        hintStyle: textTheme.bodyMedium?.copyWith(
          color: greyscale.grey2,
        ),
        labelStyle: textTheme.bodyMedium?.copyWith(
          color: greyscale.grey1,
        ),
        iconColor: greyscale.grey1,
        prefixIconColor: greyscale.grey1,
        suffixIconColor: greyscale.grey1,
        contentPadding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 16,
        ),
      ),
      menuStyle: MenuStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        backgroundColor: MaterialStateProperty.all(colorScheme.surface),
        elevation: MaterialStateProperty.all(8),
        shadowColor: MaterialStateProperty.all(
          greyscale.grey3.withOpacity(0.3),
        ),
        surfaceTintColor: MaterialStateProperty.all(colorScheme.surface),
        side: MaterialStateProperty.all(
          BorderSide.none,
        ),
      ),
    ),
  );
});
