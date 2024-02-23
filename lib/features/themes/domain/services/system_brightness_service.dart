import 'package:flutter/material.dart';

import 'package:gym/shared/shared.dart';

abstract class SystemBrightnessService extends Service {
  SystemBrightnessService() : super("SystemBrightness");

  Brightness getSystemBrightness();

  void registerBrightnessChangeCallback(VoidCallback callback);
}
