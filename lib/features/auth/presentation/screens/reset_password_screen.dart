import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym/app_router.dart';
import 'package:gym/features/auth/auth.dart';
import 'package:gym/shared/shared.dart';

@RoutePage()
class ResetPasswordScreen extends ConsumerStatefulWidget {
  const ResetPasswordScreen({
    super.key,
    @QueryParam("oobCode") this.resetCode,
  });

  final String? resetCode;

  @override
  ConsumerState<ResetPasswordScreen> createState() =>
      _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends ConsumerState<ResetPasswordScreen> {
  bool showPassword = false;
  bool passwordMatch = true;

  bool passwordReset = false;

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

  void resetPassword() {
    if (widget.resetCode == null) return;

    var authService = ref.read(authServiceProvider);

    authService.resetPassword(widget.resetCode ?? "", passwordController.text);

    setState(() {
      passwordReset = true;
    });
  }

  Widget invalidCode() {
    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.auth.invalidCode.themedSvg(context),
              const SizedBox(height: 20),
              Text(
                context.l10n.resetPassword_invalidCode,
                style: context.theme.textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                context.l10n.resetPassword_invalidCode_message,
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

  @override
  Widget build(BuildContext context) {
    var authService = ref.watch(authServiceProvider);

    if (passwordReset) {
      context.pushRoute(const LoginRoute());
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
        child: widget.resetCode == null
            ? invalidCode()
            : FutureBuilder(
                future:
                    authService.veryfyPasswordResetCode(widget.resetCode ?? ""),
                builder: (context, snapshot) {
                  if (!snapshot.hasData) {
                    return const Center(
                      child: CircularProgressIndicator(
                        strokeCap: StrokeCap.round,
                      ),
                    );
                  }

                  if (!(snapshot.data ?? false)) {
                    return invalidCode();
                  }

                  return Column(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Text(
                              l10n.resetPassword_title,
                              style: theme.textTheme.bodyLarge,
                            ),
                            const SizedBox(height: 8),
                            Text(
                              l10n.resetPassword_subtitle,
                              style: theme.textTheme.headlineSmall?.copyWith(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 60),
                            TextField(
                              controller: passwordController,
                              decoration: InputDecoration(
                                hintText: l10n.resetPassword_password,
                                prefixIcon: const Icon(IconlyLight.lock),
                                suffixIcon: showPasswordBtn,
                                errorText: !passwordMatch
                                    ? l10n.resetPassword_passwordsDontMatch
                                    : null,
                              ),
                              obscureText: !showPassword,
                              autofillHints: const [AutofillHints.email],
                            ),
                            const SizedBox(height: 15),
                            TextField(
                              controller: repeatPasswordController,
                              decoration: InputDecoration(
                                hintText: l10n.resetPassword_repeatPassword,
                                prefixIcon: const Icon(IconlyLight.lock),
                                suffixIcon: showPasswordBtn,
                                errorText: !passwordMatch
                                    ? l10n.resetPassword_passwordsDontMatch
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
                          onPressed: resetPassword,
                          trailing: const Icon(IconlyLight.arrowRight2),
                          child: Text(l10n.global_next),
                        ),
                      ),
                    ],
                  );
                }),
      ),
    );
  }
}
