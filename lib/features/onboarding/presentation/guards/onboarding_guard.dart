import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym/app_router.dart';
import 'package:gym/features/auth/auth.dart';

class OnboardedGuard extends AutoRouteGuard {
  final ProviderContainer ref;

  OnboardedGuard(this.ref);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final user = ref.read(userProvider);

    if (!(user?.onboarded ?? false)) {
      router.push(const OnboardingRoute());
    } else {
      resolver.next();
    }
  }
}
