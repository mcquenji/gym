import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym/app_router.dart';
import 'package:gym/features/profile/profile.dart';

class HasProfileGuard extends AutoRouteGuard {
  final ProviderContainer ref;

  HasProfileGuard(this.ref);

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    final profile = ref.read(userProfileProvider);

    if (profile == null) {
      router.push(const CompleteProfileRoute());
    } else {
      resolver.next();
    }
  }
}
