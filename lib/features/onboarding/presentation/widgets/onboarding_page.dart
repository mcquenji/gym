import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:gym/shared/shared.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({
    super.key,
    required this.image,
    required this.title,
    required this.text,
  });

  final SvgGenImage image;
  final String title;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: context.theme.colorScheme.background,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: image.themedSvg(
                context,
                alignment: Alignment.topCenter,
                fit: BoxFit.fitWidth,
                clipBehavior: Clip.none,
              ),
            ),
          ),
          const SizedBox(height: 200),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: context.theme.textTheme.headlineSmall.bold,
                  ).animate().sleek(delay: 500.ms),
                  const SizedBox(height: 20),
                  Text(text).animate().sleek(delay: 650.ms),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
