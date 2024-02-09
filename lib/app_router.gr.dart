// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

abstract class _$AppRouter extends RootStackRouter {
  // ignore: unused_element
  _$AppRouter({super.navigatorKey});

  @override
  final Map<String, PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const LoginScreen(),
      );
    },
    OnboardingAlsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnboardingAlsScreen(),
      );
    },
    OnboardingCompetitionRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnboardingCompetitionScreen(),
      );
    },
    OnboardingMonthlyPicsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnboardingMonthlyPicsScreen(),
      );
    },
    OnboardingRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnboardingScreen(),
      );
    },
    OnboardingTrackYourGoalsRoute.name: (routeData) {
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const OnboardingTrackYourGoalsScreen(),
      );
    },
    RegisterRoute.name: (routeData) {
      final args = routeData.argsAs<RegisterRouteArgs>(
          orElse: () => const RegisterRouteArgs());
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: RegisterScreen(
          key: args.key,
          inviteCode: args.inviteCode,
        ),
      );
    },
    ResetPasswordRoute.name: (routeData) {
      final queryParams = routeData.queryParams;
      final args = routeData.argsAs<ResetPasswordRouteArgs>(
          orElse: () => ResetPasswordRouteArgs(
              resetCode: queryParams.optString('oobCode')));
      return AutoRoutePage<dynamic>(
        routeData: routeData,
        child: ResetPasswordScreen(
          key: args.key,
          resetCode: args.resetCode,
        ),
      );
    },
  };
}

/// generated route for
/// [LoginScreen]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnboardingAlsScreen]
class OnboardingAlsRoute extends PageRouteInfo<void> {
  const OnboardingAlsRoute({List<PageRouteInfo>? children})
      : super(
          OnboardingAlsRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingAlsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnboardingCompetitionScreen]
class OnboardingCompetitionRoute extends PageRouteInfo<void> {
  const OnboardingCompetitionRoute({List<PageRouteInfo>? children})
      : super(
          OnboardingCompetitionRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingCompetitionRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnboardingMonthlyPicsScreen]
class OnboardingMonthlyPicsRoute extends PageRouteInfo<void> {
  const OnboardingMonthlyPicsRoute({List<PageRouteInfo>? children})
      : super(
          OnboardingMonthlyPicsRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingMonthlyPicsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnboardingScreen]
class OnboardingRoute extends PageRouteInfo<void> {
  const OnboardingRoute({List<PageRouteInfo>? children})
      : super(
          OnboardingRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [OnboardingTrackYourGoalsScreen]
class OnboardingTrackYourGoalsRoute extends PageRouteInfo<void> {
  const OnboardingTrackYourGoalsRoute({List<PageRouteInfo>? children})
      : super(
          OnboardingTrackYourGoalsRoute.name,
          initialChildren: children,
        );

  static const String name = 'OnboardingTrackYourGoalsRoute';

  static const PageInfo<void> page = PageInfo<void>(name);
}

/// generated route for
/// [RegisterScreen]
class RegisterRoute extends PageRouteInfo<RegisterRouteArgs> {
  RegisterRoute({
    Key? key,
    String? inviteCode,
    List<PageRouteInfo>? children,
  }) : super(
          RegisterRoute.name,
          args: RegisterRouteArgs(
            key: key,
            inviteCode: inviteCode,
          ),
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const PageInfo<RegisterRouteArgs> page =
      PageInfo<RegisterRouteArgs>(name);
}

class RegisterRouteArgs {
  const RegisterRouteArgs({
    this.key,
    this.inviteCode,
  });

  final Key? key;

  final String? inviteCode;

  @override
  String toString() {
    return 'RegisterRouteArgs{key: $key, inviteCode: $inviteCode}';
  }
}

/// generated route for
/// [ResetPasswordScreen]
class ResetPasswordRoute extends PageRouteInfo<ResetPasswordRouteArgs> {
  ResetPasswordRoute({
    Key? key,
    String? resetCode,
    List<PageRouteInfo>? children,
  }) : super(
          ResetPasswordRoute.name,
          args: ResetPasswordRouteArgs(
            key: key,
            resetCode: resetCode,
          ),
          rawQueryParams: {'oobCode': resetCode},
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static const PageInfo<ResetPasswordRouteArgs> page =
      PageInfo<ResetPasswordRouteArgs>(name);
}

class ResetPasswordRouteArgs {
  const ResetPasswordRouteArgs({
    this.key,
    this.resetCode,
  });

  final Key? key;

  final String? resetCode;

  @override
  String toString() {
    return 'ResetPasswordRouteArgs{key: $key, resetCode: $resetCode}';
  }
}
