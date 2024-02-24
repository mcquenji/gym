import 'dart:ui';

import 'package:gym/features/themes/domain/domain.dart';
import 'package:riverpod/riverpod.dart';

class ThemeBrightnessController extends StateNotifier<Brightness> {
  final SystemBrightnessService systemBrightnessService;

  ThemeBrightnessController(this.systemBrightnessService)
      : super(systemBrightnessService.getSystemBrightness()) {
    systemBrightnessService.registerBrightnessChangeCallback(
      () {
        state = systemBrightnessService.getSystemBrightness();
      },
    );
  }
}
