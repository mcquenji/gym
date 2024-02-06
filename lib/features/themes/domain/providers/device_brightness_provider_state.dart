import 'dart:ui';

import 'package:gym/features/themes/domain/domain.dart';
import 'package:riverpod/riverpod.dart';

class ThemeBrightnessProvider extends StateNotifier<Brightness> {
  final SystemBrightnessService systemBrightnessService;

  ThemeBrightnessProvider(this.systemBrightnessService)
      : super(systemBrightnessService.getSystemBrightness()) {
    systemBrightnessService.registerBrightnessChangeCallback(
      () {
        state = systemBrightnessService.getSystemBrightness();
      },
    );
  }
}
