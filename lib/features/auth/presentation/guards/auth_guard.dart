import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym/app_router.dart';
import 'package:gym/features/auth/auth.dart';

class AuthGuard extends AutoRouteGuard {
  final ProviderContainer ref;

  AuthGuard(this.ref);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    var authService = ref.read(authServiceProvider);

    var loggedIn = authService.isAuthenticated;

    if (loggedIn) {
      resolver.next(true);
    } else {
      router.push(const LoginRoute());
    }
  }
}
