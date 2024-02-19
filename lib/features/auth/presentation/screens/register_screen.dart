import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym/features/auth/auth.dart';
import 'package:gym/features/profile/profile.dart';
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
  bool registering = false;
  bool error = false;

  Future<void> register() async {
    if (registering) return;
    if (!passwordMatch) return;
    if (usernameController.text.isEmpty) return;
    if (emailController.text.isEmpty) return;
    if (passwordController.text.length < 6) return;
    if (widget.referralCode == null && ref.read(usersProvider).isNotEmpty) {
      return;
    }

    setState(() {
      registering = true;
    });

    error = !await ref.read(usersProvider.notifier).registerUser(
          email: emailController.text,
          password: passwordController.text,
          referralCode: widget.referralCode,
          name: usernameController.text,
        );

    if (mounted) {
      setState(() {
        registering = false;
      });
    }
  }

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
    var user = ref.watch(userProvider);

    if (user != null) {
      context.pushRoute(const OnboardingRoute());
    }

    var authService = ref.read(authServiceProvider);
    var users = ref.read(usersProvider);

    final allowRegisterWithoutReferral =
        widget.referralCode == null && users.isEmpty;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: FutureBuilder(
          future: allowRegisterWithoutReferral
              ? Future.value(true)
              : registering
                  ? Future.value(true)
                  : widget.referralCode == null
                      ? Future.value(false)
                      : error
                          ? Future.value(true)
                          : authService
                              .verifyReferralCode(widget.referralCode!),
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

            final passwordErrorText = passwordMatch
                ? passwordController.text.length < 6 &&
                        passwordController.text.isNotEmpty
                    ? l10n.resetPassword_passwordTooShort
                    : null
                : l10n.resetPassword_passwordsDontMatch;

            return Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (!allowRegisterWithoutReferral)
                        Avatar(
                          size: 50,
                          // TODO: referral.userId
                          userId: widget.referralCode,
                        ),
                      if (!allowRegisterWithoutReferral)
                        const SizedBox(height: 20),
                      if (!allowRegisterWithoutReferral)
                        Text(
                          // TODO: Replace with the name of the user who referred
                          l10n.register_invitedBy(widget.referralCode!),
                          style: theme.textTheme.bodySmall,
                        ),
                      if (!allowRegisterWithoutReferral)
                        const SizedBox(height: 16),
                      Text(
                        l10n.register_title,
                        style: theme.textTheme.titleLarge.bold,
                      ),
                      if (!allowRegisterWithoutReferral)
                        const SizedBox(height: 8),
                      if (!allowRegisterWithoutReferral)
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
                          errorText: error ? l10n.register_error : null,
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
                          errorText: passwordErrorText,
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
                          errorText: passwordErrorText,
                        ),
                        obscureText: !showPassword,
                      ),
                    ],
                  ),
                ),
                PrimaryButton(
                  loading: registering,
                  onPressed: register,
                  leading: const Icon(IconlyBold.login),
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
