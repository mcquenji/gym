import 'package:flutter/material.dart';
import 'package:gym/features/themes/themes.dart';
import 'package:riverpod/riverpod.dart';

final primarySwatchProvider = Provider<MaterialColor>((ref) {
  var brightness = ref.watch(deviceBrightnessProvider);

  return brightness == Brightness.dark
      ? _createMaterialColor(const Color(0xFF92A3FD))
      : _createMaterialColor(const Color(0xFF9DCEFF));
});

/// Credit to [nicky-song](https://gist.githubusercontent.com/nicky-song/244be04f1dbdba52788017f008477484/raw/9c1c0dadafa58e56f36cf8f0613c0cc435c401af/utils.dart)
MaterialColor _createMaterialColor(Color color) {
  List strengths = <double>[.05];
  Map<int, Color> swatch = {};
  final int r = color.red, g = color.green, b = color.blue;

  for (int i = 1; i < 10; i++) {
    strengths.add(0.1 * i);
  }
  for (var strength in strengths) {
    final double ds = 0.5 - strength;
    swatch[(strength * 1000).round()] = Color.fromRGBO(
      r + ((ds < 0 ? r : (255 - r)) * ds).round(),
      g + ((ds < 0 ? g : (255 - g)) * ds).round(),
      b + ((ds < 0 ? b : (255 - b)) * ds).round(),
      1,
    );
  }

  return MaterialColor(color.value, swatch);
}
