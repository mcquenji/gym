import 'package:flutter/material.dart';
import 'package:gym/features/onboarding/onboarding.dart';
import 'package:gym/shared/shared.dart';

@RoutePage()
class OnboardingMonthlyPicsScreen extends StatelessWidget {
  const OnboardingMonthlyPicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingPage(
      image: Assets.onboarding.monhtlyPics,
      title: context.l10n.onboarding_monthlyPics_title,
      text: context.l10n.onboarding_monthlyPics_message,
    );
  }
}
