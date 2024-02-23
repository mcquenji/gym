import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym/features/auth/auth.dart';
import 'package:gym/shared/shared.dart';

@RoutePage()
class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  bool attemptedLogin = false;
  bool showPassword = false;
  bool loggingIn = false;

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  toggleShowPassword() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  login() async {
    setState(() {
      loggingIn = true;
    });

    var user = ref.read(userProvider.notifier);

    await user.login(emailController.text, passwordController.text);

    if (mounted) {
      setState(() {
        attemptedLogin = true;
        loggingIn = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var user = ref.watch(userProvider);

    if (user != null) {
      context.pushRoute(const HomeRoute());
    }

    return Scaffold(
      body: Padding(
        padding: const PaddingAll(),
        child: Column(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    l10n.login_welcome,
                    style: theme.textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 8),
                  Text(
                    l10n.login_welcome_subtitle,
                    style: theme.textTheme.headlineSmall?.bold,
                  ),
                  const SizedBox(height: 60),
                  TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      hintText: l10n.login_email,
                      prefixIcon: const Icon(IconlyLight.message),
                      errorText: attemptedLogin ? l10n.login_invalid : null,
                    ),
                    autofillHints: const [
                      AutofillHints.email,
                      AutofillHints.username,
                    ],
                  ),
                  const SizedBox(height: 15),
                  TextField(
                    controller: passwordController,
                    decoration: InputDecoration(
                      hintText: l10n.login_password,
                      prefixIcon: const Icon(IconlyLight.lock),
                      suffixIcon: GestureDetector(
                        onTap: toggleShowPassword,
                        child: Icon(
                          showPassword ? IconlyLight.hide : IconlyLight.show,
                        ),
                      ),
                      errorText: attemptedLogin ? l10n.login_invalid : null,
                    ),
                    obscureText: !showPassword,
                    autofillHints: const [AutofillHints.password],
                    onSubmitted: (_) => login(),
                  ),
                  const SizedBox(height: 30),
                ],
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: PrimaryButton(
                onPressed: login,
                loading: loggingIn,
                leading: const Icon(IconlyBold.login),
                child: Text(l10n.login_submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
