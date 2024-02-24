import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym/app_router.dart';
import 'package:gym/features/auth/auth.dart';

class OnboardedGuard extends AutoRouteGuard {
  final ProviderContainer ref;

  OnboardedGuard(this.ref);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final userDataSource = ref.read(usersDataSourceProvider);
    final authService = ref.read(authServiceProvider);

    void redirect() => router.push(const OnboardingRoute());

    final userId = authService.getCurrentUserId();

    if (userId == null) {
      redirect();
      return;
    }

    final user = await userDataSource.get(userId);

    if (!(user?.onboarded ?? false)) {
      redirect();
    } else {
      resolver.next();
    }
  }
}
