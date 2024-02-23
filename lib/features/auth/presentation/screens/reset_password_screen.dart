import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
        padding: const PaddingAll(),
        child: widget.resetCode == null
            ? InvalidCode(
                title: l10n.resetPassword_invalidCode,
                message: l10n.resetPassword_invalidCode_message,
              )
            : FutureBuilder(
                future:
                    authService.verifyPasswordResetCode(widget.resetCode ?? ""),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return InvalidCode(
                      title: l10n.resetPassword_invalidCode,
                      message: l10n.resetPassword_invalidCode_message,
                    );
                  }

                  if (!snapshot.hasData) {
                    return const Center(
                      child: CircularProgressIndicator(
                        strokeCap: StrokeCap.round,
                      ),
                    );
                  }

                  if (!(snapshot.data ?? false)) {
                    return InvalidCode(
                      title: l10n.resetPassword_invalidCode,
                      message: l10n.resetPassword_invalidCode_message,
                    );
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
                              style: theme.textTheme.headlineSmall.bold,
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
                              autofillHints: const [AutofillHints.newPassword],
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
                              autofillHints: const [AutofillHints.newPassword],
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
