import 'package:flutter/material.dart';
import 'package:gym/shared/shared.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.leading,
    this.trailing,
    this.loading = false,
    this.shrinkWrap = false,
    this.gradient,
  });

  final VoidCallback? onPressed;
  final Widget child;
  final Widget? leading;
  final Widget? trailing;
  final GradientThemeData? gradient;

  /// If true, the button will show a loading indicator instead of the [child].
  ///
  /// Tap events will be ignored when this is true, so [onPressed] will not be called.
  final bool loading;

  /// If true, the button will wrap its content tightly and not fill the parent's width.
  final bool shrinkWrap;

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

    return GestureDetector(
      onTap: loading ? null : onPressed,
      behavior: HitTestBehavior.opaque,
      child: Container(
        decoration: BoxDecoration(
          gradient:
              (gradient ?? GradientTheme.of(context).primaryGradient).linear,
          borderRadius: BorderRadius.circular(50),
          boxShadow: context.theme.shadows.buttonShadow,
        ),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        height: 64,
        width: shrinkWrap ? null : double.infinity,
        child: DefaultTextStyle(
          style: context.theme.textTheme.bodyLarge!.copyWith(
            color: context.theme.colorScheme.onPrimary,
            fontWeight: FontWeight.bold,
          ),
          child: loading
              ? Center(
                  child: CircularProgressIndicator(
                    color: context.theme.colorScheme.onPrimary,
                    strokeCap: StrokeCap.round,
                  ),
                )
              : Row(
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
