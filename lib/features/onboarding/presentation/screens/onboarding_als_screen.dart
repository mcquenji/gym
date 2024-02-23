import 'package:flutter/material.dart';
import 'package:gym/features/onboarding/onboarding.dart';
import 'package:gym/shared/shared.dart';

@RoutePage()
class OnboardingAlsScreen extends StatelessWidget {
  const OnboardingAlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingPage(
      image: Assets.onboarding.als,
      title: context.l10n.onboarding_als_title,
      text: context.l10n.onboarding_als_message,
    );
  }
}
