import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym/features/auth/auth.dart';
import 'package:gym/shared/shared.dart';

@RoutePage()
class RegisterScreen extends ConsumerStatefulWidget {
  const RegisterScreen({
    super.key,
    @QueryParam("referral") this.referralCode,
  });

  final String? referralCode;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => RegisterScreenState();
}

class RegisterScreenState extends ConsumerState<RegisterScreen> {
  final emailController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  final repeatPasswordController = TextEditingController();

  bool showPassword = false;

  bool passwordMatch = true;

  @override
  void initState() {
    super.initState();

    passwordController.addListener(checkPasswordMatch);
    repeatPasswordController.addListener(checkPasswordMatch);
  }

  void checkPasswordMatch() {
    setState(() {
      passwordMatch = passwordController.text == repeatPasswordController.text;
    });
  }

  void toggleShowPassword() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    var authService = ref.read(authServiceProvider);
    var users = ref.read(usersProvider);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: widget.referralCode == null
            ? InvalidCode(
                title: l10n.register_invalidCode,
                message: l10n.register_invalidCode_message,
              )
            : FutureBuilder(
                future: authService.verifyReferralCode(widget.referralCode!),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return InvalidCode(
                      title: l10n.register_invalidCode,
                      message: l10n.register_invalidCode_message,
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
                      title: l10n.register_invalidCode,
                      message: l10n.register_invalidCode_message,
                    );
                  }

                  return Column(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // TODO: Replace with avatar of the user who referred
                            CircleAvatar(
                              radius: 50,
                              backgroundColor: theme.primaryColor,
                              child: Icon(
                                IconlyLight.profile,
                                color: theme.primaryColorDark,
                              ),
                            ),
                            const SizedBox(height: 20),
                            Text(
                              // TODO: Replace with the name of the user who referred
                              l10n.register_invitedBy(widget.referralCode!),
                              style: theme.textTheme.bodySmall,
                            ),
                            const SizedBox(height: 16),
                            Text(
                              l10n.register_title,
                              style: theme.textTheme.titleLarge?.copyWith(
                                fontWeight: FontWeight.w900,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              l10n.register_subtitle(users.length),
                              style: theme.textTheme.bodyMedium,
                              textAlign: TextAlign.center,
                            ),
                            const SizedBox(height: 30),
                            TextField(
                              controller: emailController,
                              decoration: InputDecoration(
                                hintText: l10n.login_email,
                                prefixIcon: const Icon(IconlyLight.message),
                              ),
                            ),
                            const SizedBox(height: 16),
                            TextField(
                              controller: usernameController,
                              decoration: InputDecoration(
                                hintText: l10n.register_username,
                                prefixIcon: const Icon(IconlyLight.profile),
                              ),
                            ),
                            const SizedBox(height: 16),
                            TextField(
                              controller: passwordController,
                              decoration: InputDecoration(
                                hintText: l10n.login_password,
                                prefixIcon: const Icon(IconlyLight.lock),
                                suffixIcon: GestureDetector(
                                  onTap: toggleShowPassword,
                                  child: Icon(
                                    showPassword
                                        ? IconlyLight.hide
                                        : IconlyLight.show,
                                  ),
                                ),
                              ),
                              obscureText: !showPassword,
                            ),
                            const SizedBox(height: 16),
                            TextField(
                              controller: repeatPasswordController,
                              decoration: InputDecoration(
                                hintText: l10n.resetPassword_repeatPassword,
                                prefixIcon: const Icon(IconlyLight.lock),
                                suffixIcon: GestureDetector(
                                  onTap: toggleShowPassword,
                                  child: Icon(
                                    showPassword
                                        ? IconlyLight.hide
                                        : IconlyLight.show,
                                  ),
                                ),
                              ),
                              obscureText: !showPassword,
                            ),
                          ],
                        ),
                      ),
                      PrimaryButton(
                        onPressed: () {}, // TODO: actually register
                        child: Text(l10n.register_submit),
                      ),
                    ],
                  );
                },
              ),
      ),
    );
  }
}
