import 'package:flutter/material.dart';
import 'package:gym/shared/shared.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class WorkoutCardActionButton extends StatelessWidget {
  const WorkoutCardActionButton({
    super.key,
    required this.text,
    this.onPressed,
  });

  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: onPressed == null ? 0.5 : 1,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          decoration: BoxDecoration(
            color: context.theme.colorScheme.surface,
            shape: BoxShape.circle,
          ),
          child: GradientText(
            text,
            style: context.theme.textTheme.titleSmall,
            colors: context.theme.gradients.primaryGradient.linear.colors,
          ),
        ),
      ),
    );
  }
}
