import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

import 'package:gym/features/themes/themes.dart';

final greyscaleProvider = Provider<Greyscale>((ref) {
  return Greyscale(
    grey1: const Color(0xFF7B6F72),
    grey2: const Color(0xffADA4A5),
    grey3: const Color(0xffDDDADA),
  );
});
