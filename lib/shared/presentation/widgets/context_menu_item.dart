import 'package:advanced_icon/advanced_icon.dart';
import 'package:flutter/material.dart';

class ContextMenuItem<T> extends PopupMenuItem<T> {
  final IconData icon;
  final String? label;
  final Color? iconColor;
  final Gradient? iconGradient;

  ContextMenuItem({
    super.key,
    required this.icon,
    this.iconColor,
    this.iconGradient,
    this.label,
    super.onTap,
    super.enabled,
    super.height,
    super.textStyle,
    super.mouseCursor,
    super.padding,
    super.labelTextStyle,
    super.value,
  }) : super(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              AdvancedIcon(
                icon: icon,
                color: iconColor,
                gradient: iconGradient,
                size: 20,
              ),
              if (label != null) const SizedBox(width: 8),
              if (label != null) Text(label),
            ],
          ),
        );
}
