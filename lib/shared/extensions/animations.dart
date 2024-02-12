import 'package:flutter/material.dart';
import 'package:gym/shared/shared.dart';

extension AnimationExt on Animate {
  Animate sleek({
    Duration? delay,
    Duration duration = const Duration(milliseconds: 400),
    Curve? curve = Curves.easeOutExpo,
    double? begin,
    double? end,
  }) {
    return slideY(
      begin: 0.5,
      end: 0.0,
      curve: curve,
      duration: duration,
      delay: delay,
    ).fadeIn(
      curve: curve,
      duration: duration,
      delay: delay,
    );
  }
}
