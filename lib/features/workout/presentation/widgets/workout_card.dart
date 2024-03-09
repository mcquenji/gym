import 'package:flutter/material.dart';
import 'package:gym/features/workout/workout.dart';
import 'package:gym/shared/shared.dart';

class WorkoutCard extends StatefulWidget {
  const WorkoutCard({
    super.key,
    required this.workout,
    this.contextMenuItems = const [],
    this.actionButton,
    this.subtitle,
  });

  final Workout workout;
  final List<ContextMenuItem> contextMenuItems;
  final Widget? actionButton;
  final String? subtitle;

  @override
  State<WorkoutCard> createState() => _WorkoutCardState();
}

class _WorkoutCardState extends State<WorkoutCard> {
  @override
  Widget build(BuildContext context) {
    final child = Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.surfaceVariant,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                widget.workout.name,
                style: theme.textTheme.titleMedium,
              ),
              const SizedBox(height: 8),
              Text(
                widget.subtitle ??
                    l10n.workoutCard_exercises(
                      widget.workout.exercises.length,
                    ),
                style: theme.textTheme.bodyMedium?.copyWith(
                  color: theme.greyscale.grey2,
                ),
              ),
              const SizedBox(height: 8),
              widget.actionButton ?? const SizedBox(),
            ],
          )
        ],
      ),
    );

    return widget.contextMenuItems.isNotEmpty
        ? ContextMenu(
            actions: widget.contextMenuItems,
            child: child,
          )
        : child;
  }
}
