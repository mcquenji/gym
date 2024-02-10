import 'package:flutter/material.dart';
import 'package:gym/shared/shared.dart';

class InvalidCode extends StatelessWidget {
  const InvalidCode({
    super.key,
    required this.title,
    required this.message,
  });

  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.auth.invalidCode.themedSvg(context),
              const SizedBox(height: 20),
              Text(
                title,
                style: context.theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                message,
                style: context.theme.textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        PrimaryButton(
          onPressed: () {
            context.pushRoute(const LoginRoute());
          },
          leading: const Icon(IconlyLight.login),
          child: Text(context.l10n.resetPassword_invalidCode_login),
        ),
      ],
    );
  }
}
