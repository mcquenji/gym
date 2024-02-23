import 'package:flutter/material.dart';
import 'package:gym/features/auth/auth.dart';
import 'package:gym/shared/shared.dart';

@RoutePage()
class OnboardingCompetitionScreen extends StatelessWidget {
  const OnboardingCompetitionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return OnboardingPage(
      image: Assets.svg.login.onboarding.competition,
      title: context.l10n.onboarding_competition_title,
      text: context.l10n.onboarding_competition_message,
    );
  }
}
