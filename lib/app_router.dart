import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym/features/auth/auth.dart';

part 'app_router.gr.dart';

/// The application router.
/// Contains all routes of the application.
///
/// ---
/// In order to add a route to the application, do the following:
///
/// 1. Add `@RoutePage()` to your screen widget:
///
/// ```dart
/// import 'package:gym/shared/shared.dart';
///
/// @PageRoute() // <-- add this
/// class MyScreen extends StatelessWidget {
///   const MyScreen({Key? key}) : super(key: key);
///
///   @override
///   Widget build(BuildContext context) {
///     return const Scaffold(
///       body: Center(
///         child: Text('My Screen'),
///       ),
///    );
///  }
/// }
/// ```
///
/// 2. If you want the screen to have a sidebar, add [SidebarWrapperMixin] to your screen widget:
///
/// ```dart
/// import 'package:gym/shared/shared.dart';
///
/// @PageRoute()
/// class MyScreen extends StatelessWidget with SidebarWrapperMixin  {
/// //                                          ^^^^^^^^^^^^^^^^^^^ <-- add this
///   const MyScreen({Key? key}) : super(key: key);
///
///   @override
///   Widget build(BuildContext context) {
///     return const Scaffold(
///       body: Center(
///         child: Text('My Screen'),
///       ),
///    );
///  }
/// }
/// ```
///
///
/// 3. Run `build_runner`
///
/// ```bash
/// flutter pub run build_runner build --delete-conflicting-outputs
/// ```
///
/// 4. Import your screen in `app_router.dart`:
///
/// ```dart
/// import 'package:gym/path/to/my/screen.dart'
/// ```
///
/// 5. Add the generated route to the [routes] list:
///
/// ```dart
/// @override
/// List<AutoRoute> get routes => [
///       DefaultRoute(
///         page: ThemeDevelopmentRoute.page,
///         path: '/theme-development',
///       ),
///       DefaultRoute(
///         page: MyRoute.page, // <-- this is the generated route based off of [MyScreen]
///         path: '/my-route', // the path of the route
///       ),
///     ];
/// ```
///
/// 6. For subroutes, just do the same and for the path use `parent-path/subroute-path`:
///
/// ```dart
/// @override
/// List<AutoRoute> get routes => [
///       DefaultRoute(
///         page: ThemeDevelopmentRoute.page,
///         path: '/theme-development',
///       ),
///       DefaultRoute(
///         page: MyRoute.page, // <-- this is the generated route based on [MyScreen]
///         path: '/theme-development/my-route', // in this example the parent path is '/theme-development', so [MyRoute] is a subroute of [ThemeDevelopmentRoute]
///       ),
///     ];
/// ```
///
@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends _$AppRouter {
  final ProviderContainer ref;

  AppRouter(this.ref);

  @override
  List<AutoRoute> get routes => [
        CustomRoute(
          page: LoginRoute.page,
          path: '/login',
          initial: true,
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
        CustomRoute(
          guards: [
            AuthGuard(ref),
          ],
          page: ChangePasswordRoute.page,
          path: '/change-password',
          transitionsBuilder: TransitionsBuilders.slideBottom,
        ),
        CustomRoute(
          guards: [
            AuthGuard(ref),
          ],
          page: OnboardingRoute.page,
          path: '/onboarding',
          children: [
            CustomRoute(
              transitionsBuilder: TransitionsBuilders.slideLeft,
              page: OnboardingAlsRoute.page,
              path: 'als',
            ),
            CustomRoute(
              page: OnboardingCompetitionRoute.page,
              transitionsBuilder: TransitionsBuilders.slideLeft,
              path: 'competition',
            ),
            CustomRoute(
              transitionsBuilder: TransitionsBuilders.slideLeft,
              page: OnboardingMonthlyPicsRoute.page,
              path: 'monthly-pics',
            ),
            CustomRoute(
              transitionsBuilder: TransitionsBuilders.slideLeft,
              page: OnboardingTrackYourGoalsRoute.page,
              path: '',
            ),
          ],
          transitionsBuilder: TransitionsBuilders.slideTop,
        )
      ];
}

/// Implements [CustomRoute] with some default settings.
class DefaultRoute extends CustomRoute {
  /// Implements [CustomRoute] with some default settings.
  DefaultRoute({required super.page, required super.path, super.initial})
      : super(transitionsBuilder: TransitionsBuilders.noTransition);
}
