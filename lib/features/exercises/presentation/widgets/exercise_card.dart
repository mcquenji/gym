import 'package:advanced_icon/advanced_icon.dart';
import 'package:flutter/material.dart';
import 'package:gym/features/exercises/exercises.dart';
import 'package:gym/shared/shared.dart';
import 'package:list_ext/list_ext.dart';

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
        // TODO: Image.asset() based on exercise.primaryMuscles.first
        CircleAvatar(
          backgroundColor: context.theme.primaryColor,
          radius: 30,
          child: Text(
            widget.exercise.name[0].toUpperCase(),
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
                widget.exercise.name,
                style: context.theme.textTheme.titleMedium,
              ),
              const SizedBox(height: 4),
              widget.subtitle ??
                  Text(
                    "${widget.exercise.category.name} | ${widget.exercise.primaryMuscles.first.name}",
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
