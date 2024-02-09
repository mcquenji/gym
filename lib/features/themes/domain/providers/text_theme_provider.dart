import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod/riverpod.dart';

final textThemeProvider = Provider<TextTheme>((ref) {
  var theme = GoogleFonts.poppinsTextTheme();

  // somehow this also affects textBodySmall????
  // return theme.copyWith(
  //   titleLarge: theme.titleLarge!.copyWith(
  //     fontWeight: FontWeight.w900,
  //   ),
  //   titleMedium: theme.titleMedium!.copyWith(
  //     fontWeight: FontWeight.w900,
  //   ),
  //   titleSmall: theme.titleSmall!.copyWith(
  //     fontWeight: FontWeight.w900,
  //   ),
  // );

  return theme;
});
