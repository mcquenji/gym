import 'dart:ui';

import 'package:gym/features/themes/themes.dart';

class DebugSystemBrightnessService extends SystemBrightnessService {
  final List<VoidCallback> _callbacks = [];

  static Brightness _brightness = Brightness.light;

  DebugSystemBrightnessService() {
    _onBrightnessChangedDispatcher = () {
      for (final callback in _callbacks) {
        callback();
      }
    };
  }

  @override
  Brightness getSystemBrightness() => _brightness;

  @override
  void registerBrightnessChangeCallback(VoidCallback callback) {
    _callbacks.add(callback);
  }

  static void setBrightness(Brightness brightness) {
    _brightness = brightness;

    _onBrightnessChangedDispatcher?.call();
  }

  static VoidCallback? _onBrightnessChangedDispatcher;
}
