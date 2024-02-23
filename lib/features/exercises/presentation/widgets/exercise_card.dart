import 'package:advanced_icon/advanced_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gym/features/exercises/exercises.dart';
import 'package:gym/shared/shared.dart';

class ExerciseCard extends StatefulWidget {
  const ExerciseCard({
    super.key,
    required this.exercise,
    this.subtitle,
    this.wrapper = _defaultWrapper,
    this.trailing,
    this.actions = const [],
  });

  final Exercise exercise;
  final Widget? subtitle;
  final Widget Function(BuildContext context, Widget child) wrapper;
  final Widget? trailing;
  final List<PopupMenuItem> actions;

  static Widget _defaultWrapper(context, child) => child;

  @override
  State<ExerciseCard> createState() => _ExerciseCardState();
}

class _ExerciseCardState extends State<ExerciseCard> {
  bool isContextMenuOpen = false;

  void showContextMenu() async {
    if (isContextMenuOpen) return;

    final PopupMenuThemeData popupMenuTheme = PopupMenuTheme.of(context);
    final RenderBox button = context.findRenderObject()! as RenderBox;
    final RenderBox overlay =
        Navigator.of(context).overlay!.context.findRenderObject()! as RenderBox;
    final PopupMenuPosition popupMenuPosition =
        popupMenuTheme.position ?? PopupMenuPosition.over;
    late Offset offset;
    switch (popupMenuPosition) {
      case PopupMenuPosition.over:
        offset = Offset.zero;
      case PopupMenuPosition.under:
        offset = Offset(0, button.size.height + 8);
    }
    final RelativeRect position = RelativeRect.fromRect(
      Rect.fromPoints(
        button.localToGlobal(offset, ancestor: overlay),
        button.localToGlobal(button.size.bottomRight(Offset.zero) + offset,
            ancestor: overlay),
      ),
      Offset.zero & overlay.size,
    );

    setState(() {
      isContextMenuOpen = true;
    });

    await showMenu(
      context: context,
      position: position,
      items: <PopupMenuEntry>[
        ...widget.actions,
        if (widget.actions.isNotEmpty) const PopupMenuDivider(),
        PopupMenuIcon(
          icon: IconlyBroken.infoCircle,
          label: context.l10n.exercisesDetails_contextMenu,
          iconGradient: context.theme.gradients.primaryGradient.linear,
          onTap: () {
            context.router.push(
              ExerciseDetailsRoute(
                id: widget.exercise.id,
              ),
            );
          },
        ),
      ],
    );

    if (mounted) {
      setState(() {
        isContextMenuOpen = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final content = Row(
      children: [
        ClipOval(
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: theme.gradients.secondaryGradient.linear.colors
                    .map((e) => e.withOpacity(0.3))
                    .toList(),
                begin: theme.gradients.secondaryGradient.linear.begin,
                end: theme.gradients.secondaryGradient.linear.end,
                stops: theme.gradients.secondaryGradient.linear.stops,
                tileMode: theme.gradients.secondaryGradient.linear.tileMode,
                transform: theme.gradients.secondaryGradient.linear.transform,
              ),
            ),
            child: Center(
              child: widget.exercise.category.asset.svg(),
            ),
          ),
        ),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                widget.exercise.name,
                style: context.theme.textTheme.titleMedium,
              ),
              const SizedBox(height: 4),
              widget.subtitle ??
                  Text(
                    "${widget.exercise.category.localize(context)} | ${widget.exercise.primaryMuscles.first.localize(context)}",
                    style: context.theme.textTheme.bodySmall?.copyWith(
                      color:
                          context.theme.colorScheme.onSurface.withOpacity(0.6),
                    ),
                  ),
            ],
          ),
        ),
        const SizedBox(width: 8),
        widget.trailing ??
            AdvancedIcon(
              icon: IconlyLight.arrowRightCircle,
              gradient: context.theme.gradients.secondaryGradient.linear,
              size: 40,
            ),
      ],
    );

    return GestureDetector(
      onLongPress: showContextMenu,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: context.theme.cardColor,
          boxShadow: isContextMenuOpen
              ? context.theme.shadows.longPressShadow
              : context.theme.shadows.defaultShadow,
        ),
        padding: const EdgeInsets.all(16),
        child: widget.wrapper(context, content),
      ),
    );
  }
}

// Extension for MuscleGroup enum
extension MuscleGroupExtension on MuscleGroup {
  String localize(BuildContext context) {
    switch (this) {
      case MuscleGroup.abdominals:
        return context.l10n.exercises_enumMuscleGroup_abdominals;
      case MuscleGroup.middleBack:
        return context.l10n.exercises_enumMuscleGroup_middleBack;
      case MuscleGroup.adductors:
        return context.l10n.exercises_enumMuscleGroup_adductors;
      case MuscleGroup.biceps:
        return context.l10n.exercises_enumMuscleGroup_biceps;
      case MuscleGroup.quadriceps:
        return context.l10n.exercises_enumMuscleGroup_quadriceps;
      case MuscleGroup.lowerBack:
        return context.l10n.exercises_enumMuscleGroup_lowerBack;
      case MuscleGroup.lats:
        return context.l10n.exercises_enumMuscleGroup_lats;
      case MuscleGroup.hamstrings:
        return context.l10n.exercises_enumMuscleGroup_hamstrings;
      case MuscleGroup.chest:
        return context.l10n.exercises_enumMuscleGroup_chest;
      case MuscleGroup.neck:
        return context.l10n.exercises_enumMuscleGroup_neck;
      case MuscleGroup.abductors:
        return context.l10n.exercises_enumMuscleGroup_abductors;
      case MuscleGroup.glutes:
        return context.l10n.exercises_enumMuscleGroup_glutes;
      case MuscleGroup.calves:
        return context.l10n.exercises_enumMuscleGroup_calves;
      case MuscleGroup.triceps:
        return context.l10n.exercises_enumMuscleGroup_triceps;
      case MuscleGroup.traps:
        return context.l10n.exercises_enumMuscleGroup_traps;
      case MuscleGroup.shoulders:
        return context.l10n.exercises_enumMuscleGroup_shoulders;
      case MuscleGroup.forearms:
        return context.l10n.exercises_enumMuscleGroup_forearms;
    }
  }
}

// Extension for ExerciseLevel enum
extension ExerciseLevelExtension on ExerciseLevel {
  String localize(BuildContext context) {
    switch (this) {
      case ExerciseLevel.beginner:
        return context.l10n.exercises_enumExerciseLevel_beginner;
      case ExerciseLevel.intermediate:
        return context.l10n.exercises_enumExerciseLevel_intermediate;
      case ExerciseLevel.expert:
        return context.l10n.exercises_enumExerciseLevel_expert;
    }
  }
}

// Extension for ExerciseEquipment enum
extension ExerciseEquipmentExtension on ExerciseEquipment {
  String localize(BuildContext context) {
    switch (this) {
      case ExerciseEquipment.cable:
        return context.l10n.exercises_enumExerciseEquipment_cable;
      case ExerciseEquipment.bands:
        return context.l10n.exercises_enumExerciseEquipment_bands;
      case ExerciseEquipment.exerciseBall:
        return context.l10n.exercises_enumExerciseEquipment_exerciseBall;
      case ExerciseEquipment.machine:
        return context.l10n.exercises_enumExerciseEquipment_machine;
      case ExerciseEquipment.dumbbell:
        return context.l10n.exercises_enumExerciseEquipment_dumbbell;
      case ExerciseEquipment.eZCurlBar:
        return context.l10n.exercises_enumExerciseEquipment_eZCurlBar;
      case ExerciseEquipment.other:
        return context.l10n.exercises_enumExerciseEquipment_other;
      case ExerciseEquipment.barbell:
        return context.l10n.exercises_enumExerciseEquipment_barbell;
      case ExerciseEquipment.bodyOnly:
        return context.l10n.exercises_enumExerciseEquipment_bodyOnly;
      case ExerciseEquipment.foamRoll:
        return context.l10n.exercises_enumExerciseEquipment_foamRoll;
      case ExerciseEquipment.medicineBall:
        return context.l10n.exercises_enumExerciseEquipment_medicineBall;
      case ExerciseEquipment.kettlebells:
        return context.l10n.exercises_enumExerciseEquipment_kettlebells;
    }
  }
}

// Extension for ExerciseForce enum
extension ExerciseForceExtension on ExerciseForce {
  String localize(BuildContext context) {
    switch (this) {
      case ExerciseForce.static:
        return context.l10n.exercises_enumExerciseForce_static;
      case ExerciseForce.push:
        return context.l10n.exercises_enumExerciseForce_push;
      case ExerciseForce.pull:
        return context.l10n.exercises_enumExerciseForce_pull;
    }
  }
}

// Extension for ExerciseCategory enum
extension ExerciseCategoryExtension on ExerciseCategory {
  String localize(BuildContext context) {
    switch (this) {
      case ExerciseCategory.stretching:
        return context.l10n.exercises_enumExerciseCategory_stretching;
      case ExerciseCategory.powerlifting:
        return context.l10n.exercises_enumExerciseCategory_powerlifting;
      case ExerciseCategory.strongman:
        return context.l10n.exercises_enumExerciseCategory_strongman;
      case ExerciseCategory.cardio:
        return context.l10n.exercises_enumExerciseCategory_cardio;
      case ExerciseCategory.olympicWeightlifting:
        return context.l10n.exercises_enumExerciseCategory_olympicWeightlifting;
      case ExerciseCategory.plyometrics:
        return context.l10n.exercises_enumExerciseCategory_plyometrics;
      case ExerciseCategory.strength:
        return context.l10n.exercises_enumExerciseCategory_strength;
    }
  }

  SvgGenImage get asset {
    switch (this) {
      case ExerciseCategory.stretching:
        return Assets.exercises.stretching;
      case ExerciseCategory.powerlifting:
        return Assets.exercises.powerlifting;
      case ExerciseCategory.strongman:
        return Assets.exercises.strongman;
      case ExerciseCategory.cardio:
        return Assets.exercises.cardio;
      case ExerciseCategory.olympicWeightlifting:
        return Assets.exercises.olympicWeightlifting;
      case ExerciseCategory.plyometrics:
        return Assets.exercises.plyometrics;
      case ExerciseCategory.strength:
        return Assets.exercises.strength;
    }
  }
}

// Extension for ExerciseMechanic enum
extension ExerciseMechanicExtension on ExerciseMechanic {
  String localize(BuildContext context) {
    switch (this) {
      case ExerciseMechanic.compound:
        return context.l10n.exercises_enumExerciseMechanic_compound;
      case ExerciseMechanic.isolation:
        return context.l10n.exercises_enumExerciseMechanic_isolation;
    }
  }
}
