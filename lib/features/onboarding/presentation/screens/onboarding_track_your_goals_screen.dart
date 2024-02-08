import 'package:flutter/material.dart';
import 'package:gym/features/onboarding/onboarding.dart';
import 'package:gym/shared/shared.dart';

@RoutePage()
class OnboardingTrackYourGoalsScreen extends StatelessWidget {
  const OnboardingTrackYourGoalsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingPage(
      image: Assets.svg.login.onboarding.trackYourGoals,
      title: context.l10n.onboarding_tracking_title,
      text: context.l10n.onboarding_tracking_message,
    );
  }
}
