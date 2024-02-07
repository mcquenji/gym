import 'dart:ui';

import 'package:gym/features/themes/themes.dart';

class StdSystemBrightnessService extends SystemBrightnessService {
  final List<VoidCallback> _callbacks = [];

  StdSystemBrightnessService() {
    PlatformDispatcher.instance.onPlatformBrightnessChanged = () {
      for (final callback in _callbacks) {
        callback();
      }
    };
  }

  @override
  Brightness getSystemBrightness() =>
      PlatformDispatcher.instance.platformBrightness;

  @override
  void registerBrightnessChangeCallback(VoidCallback callback) {
    _callbacks.add(callback);
  }
}
