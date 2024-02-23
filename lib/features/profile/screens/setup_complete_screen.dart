import 'package:flutter/material.dart';
import 'package:gym/features/auth/auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym/shared/shared.dart';

@RoutePage()
class SetupCompleteScreen extends ConsumerWidget {
  const SetupCompleteScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var user = ref.watch(userProvider);

    if (user == null) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    return Scaffold(
      body: Padding(
        padding: const PaddingAll(),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Assets.auth.letsGo.themedSvg(context),
                  const SizedBox(height: 20),
                  Text(
                    context.l10n.setupComplete_title(user.name),
                    style: context.theme.textTheme.titleLarge.bold,
                  ),
                  Text(
                    context.l10n.setupComplete_subtitle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            PrimaryButton(
              onPressed: () {
                context.router.replace(const ProfileRoute());
              },
              child: Text(context.l10n.setupComplete_btn),
            ),
          ],
        ),
      ),
    );
  }
}
