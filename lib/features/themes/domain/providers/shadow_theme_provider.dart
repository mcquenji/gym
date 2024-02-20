import 'package:flutter/material.dart';
import 'package:gym/features/themes/themes.dart';
import 'package:riverpod/riverpod.dart';

final shadowThemeProvider = Provider<ShadowTheme>((ref) {
  final colorScheme = ref.watch(colorSchemeProvider);

  return ShadowTheme(
    defaultShadow: [
      BoxShadow(
        color: colorScheme.onSurface.withOpacity(0.08),
        blurRadius: 15,
        offset: const Offset(0, 5),
      ),
    ],
    buttonShadow: kElevationToShadow[8]!,
  );
});
