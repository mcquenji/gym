import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:gym/features/themes/domain/domain.dart';
import 'package:riverpod/riverpod.dart';

/// Provides the [Brightness] of the user's device.
final deviceBrightnessProvider =
    StateNotifierProvider<ThemeBrightnessController, Brightness>(
  (ref) {
    var systemBrightnessService = ref.watch(systemBrightnessServiceProvider);

    return ThemeBrightnessController(systemBrightnessService);
  },
);
