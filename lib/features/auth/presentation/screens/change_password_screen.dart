import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym/app_router.dart';
import 'package:gym/features/auth/auth.dart';
import 'package:gym/shared/shared.dart';

@RoutePage()
class ChangePasswordScreen extends ConsumerStatefulWidget {
  const ChangePasswordScreen({super.key});

  @override
  ConsumerState<ChangePasswordScreen> createState() =>
      _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends ConsumerState<ChangePasswordScreen> {
  bool showPassword = false;
  bool passwordMatch = true;

  final passwordController = TextEditingController();
  final repeatPasswordController = TextEditingController();

  toggleShowPassword() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  checkPasswordMatch() {
    setState(() {
      passwordMatch = passwordController.text == repeatPasswordController.text;
    });
  }

  @override
  void initState() {
    super.initState();

    passwordController.addListener(checkPasswordMatch);
    repeatPasswordController.addListener(checkPasswordMatch);
  }

  @override
  Widget build(BuildContext context) {
    var user = ref.watch(userProvider);
    var controller = ref.watch(userProvider.notifier);

    if (user!.registered) {
      context.router.push(const OnboardingRoute());
    }

    var showPasswordBtn = GestureDetector(
      onTap: toggleShowPassword,
      child: Icon(
        showPassword ? IconlyLight.hide : IconlyLight.show,
      ),
    );

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    l10n.changePassword_title,
                    style: theme.textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    l10n.changePassword_subtitle,
                    style: theme.textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 60),
                  TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: l10n.changePassword_password,
                      prefixIcon: const Icon(IconlyLight.lock),
                      suffixIcon: showPasswordBtn,
                      errorText: !passwordMatch
                          ? l10n.changePassword_passwordsDontMatch
                          : null,
                    ),
                    obscureText: !showPassword,
                    autofillHints: const [AutofillHints.email],
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: repeatPasswordController,
                    decoration: InputDecoration(
                      hintText: l10n.changePassword_repeatPassword,
                      prefixIcon: const Icon(IconlyLight.lock),
                      suffixIcon: showPasswordBtn,
                      errorText: !passwordMatch
                          ? l10n.changePassword_passwordsDontMatch
                          : null,
                    ),
                    obscureText: !showPassword,
                    autofillHints: const [AutofillHints.password],
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: PrimaryButton(
                onPressed: () =>
                    controller.completeRegistration(passwordController.text),
                trailing: const Icon(IconlyLight.arrowRight2),
                child: Text(l10n.global_next),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
