import 'package:flutter/material.dart';
import 'package:gym/shared/shared.dart';

extension AnimationExt on Animate {
  Animate sleek({
    Duration? delay,
    Duration duration = const Duration(milliseconds: 400),
    Curve? curve = Curves.easeOutExpo,
    double? begin,
    double? end,
    AnimationStagger? stagger,
  }) {
    assert(
      delay == null && stagger == null || ((delay == null) ^ (stagger == null)),
      'You can only use either delay or stagger, not both.',
    );

    return slideY(
      begin: 0.5,
      end: 0.0,
      curve: curve,
      duration: duration,
      delay: delay ?? stagger?.add(),
    ).fadeIn(
      curve: curve,
      duration: duration,
      delay: delay ?? stagger?.add(),
    );
  }
}

class AnimationStagger {
  /// The duration to wait before starting the first animation.
  final Duration delay;

  /// The duration to wait between each animation.
  final Duration increment;

  AnimationStagger({
    this.delay = const Duration(milliseconds: 0),
    this.increment = const Duration(milliseconds: 100),
  });

  int animations = 0;

  Duration add() {
    final duration = delay + (increment * animations);
    animations++;
    return duration;
  }
}
