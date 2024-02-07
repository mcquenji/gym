import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gym/app_router.dart';
import 'package:flutter_gen/gen_l10n/l10n.dart';
import 'package:gym/features/themes/themes.dart';

final providerContainer = ProviderContainer();

/// The root widget of the application.
///
/// This widget is responsible for routing, sets the application wide theme & language.
class App extends ConsumerWidget {
  /// The root widget of the application.
  ///
  /// This widget is responsible for routing, sets the application wide theme & language.
  App({super.key});

  final _router = AppRouter(providerContainer);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeProvider);
    // TODO: final locale = ref.watch(userProvider)?.locale;

    return MaterialApp.router(
      routerConfig: _router.config(),
      // TODO: locale: locale,
      supportedLocales: AppLocalizations.supportedLocales,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      theme: theme,
    );
  }
}
