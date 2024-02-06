import 'package:flutter/material.dart';

extension ThemeContextExt on BuildContext {
  ThemeData get theme => Theme.of(this);
}

extension ThemeStateExt on State {
  ThemeData get theme => context.theme;
}
