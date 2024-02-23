import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:riverpod/riverpod.dart';

final textThemeProvider = Provider<TextTheme>((ref) {
  return GoogleFonts.poppinsTextTheme();
});
