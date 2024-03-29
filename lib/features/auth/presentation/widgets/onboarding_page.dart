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
            flex: 2,
            child: SizedBox(
              width: double.infinity,
              child: image.themedSvg(
                context,
                alignment: Alignment.topCenter,
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  Text(
                    title,
                    style: context.theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  )
                      .animate()
                      .slideY(
                          duration: 400.ms,
                          begin: .5,
                          end: 0,
                          curve: Curves.easeOutCubic,
                          delay: 500.ms)
                      .fadeIn(
                          duration: 400.ms,
                          curve: Curves.easeOutCubic,
                          delay: 500.ms),
                  const SizedBox(height: 20),
                  Text(text)
                      .animate()
                      .slideY(
                        duration: 400.ms,
                        begin: .5,
                        end: 0,
                        delay: 650.ms,
                        curve: Curves.easeOutCubic,
                      )
                      .fadeIn(
                        duration: 400.ms,
                        delay: 650.ms,
                        curve: Curves.easeOutCubic,
                      ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
