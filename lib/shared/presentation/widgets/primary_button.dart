import 'package:flutter/material.dart';
import 'package:gym/shared/shared.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.leading,
    this.trailing,
  });

  final VoidCallback? onPressed;
  final Widget child;
  final Widget? leading;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    Widget onPrimaryIconTheme(Widget child) {
      return IconTheme(
        data: context.theme.iconTheme.copyWith(
          color: context.theme.colorScheme.onPrimary,
        ),
        child: child,
      );
    }

    return Container(
      decoration: BoxDecoration(
        gradient: Gradients.of(context).primaryGradient.linear,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      height: 56,
      child: GestureDetector(
        onTap: onPressed,
        child: DefaultTextStyle(
          style: context.theme.textTheme.bodyLarge!.copyWith(
            color: context.theme.colorScheme.onPrimary,
            fontWeight: FontWeight.bold,
          ),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (leading != null) onPrimaryIconTheme(leading!),
              if (leading != null) const SizedBox(width: 8),
              child,
              if (trailing != null) const SizedBox(width: 8),
              if (trailing != null) onPrimaryIconTheme(trailing!),
            ],
          ),
        ),
      ),
    );
  }
}
