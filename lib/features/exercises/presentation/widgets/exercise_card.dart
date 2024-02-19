import 'package:advanced_icon/advanced_icon.dart';
import 'package:flutter/material.dart';
import 'package:gym/features/exercises/exercises.dart';
import 'package:gym/shared/shared.dart';

class ExerciseCard extends StatelessWidget {
  const ExerciseCard({
    super.key,
    required this.exercise,
    this.subtitle,
    this.wrapper = _defaultWrapper,
    this.trailing,
  });

  final Exercise exercise;
  final Widget? subtitle;
  final Widget Function(BuildContext context, Widget child) wrapper;
  final Widget? trailing;

  static Widget _defaultWrapper(context, child) => child;

  @override
  Widget build(BuildContext context) {
    final content = Row(
      children: [
        // TODO: Image.asset() based on exercise.primaryMuscles.first
        CircleAvatar(
          backgroundColor: context.theme.primaryColor,
          radius: 30,
          child: Text(
            exercise.name[0].toUpperCase(),
            style: context.theme.textTheme.headlineMedium?.copyWith(
              color: context.theme.colorScheme.onPrimary,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                exercise.name,
                style: context.theme.textTheme.titleMedium,
              ),
              const SizedBox(height: 4),
              subtitle ??
                  Text(
                    "${exercise.category.name} | ${exercise.primaryMuscles.first.name}",
                    style: context.theme.textTheme.bodySmall?.copyWith(
                      color:
                          context.theme.colorScheme.onSurface.withOpacity(0.6),
                    ),
                  ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        trailing ??
            AdvancedIcon(
              icon: IconlyLight.arrowRightCircle,
              gradient: context.theme.gradients.secondaryGradient.linear,
              size: 40,
            ),
      ],
    );

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: context.theme.cardColor,
        boxShadow: [
          BoxShadow(
            color: context.theme.colorScheme.onSurface.withOpacity(0.1),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      padding: const EdgeInsets.all(16),
      child: wrapper(context, content),
    );
  }
}
