import 'package:flutter/material.dart';

abstract class SystemBrightnessService {
  Brightness getSystemBrightness();

  void registerBrightnessChangeCallback(VoidCallback callback);
}
