import 'package:flutter/material.dart';
import 'package:gym/shared/shared.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key, required this.title, this.trailing});

  final String title;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: context.theme.textTheme.titleLarge,
        ),
        if (trailing != null)
          DefaultTextStyle(
            style: context.theme.textTheme.bodySmall!.copyWith(
              color: context.theme.greyscale.grey2,
            ),
            child: trailing!,
          ),
      ],
    );
  }
}
