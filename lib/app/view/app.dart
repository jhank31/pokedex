import 'package:flutter/material.dart';
import 'package:hive_crypto_wallet_app/core/app_life_cycle_listener/listener/app_life_cycle_listener.dart';
import 'package:hive_crypto_wallet_app/core/router/app_router.dart';
import 'package:hive_crypto_wallet_app/core/theming/core/provider/theming_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// {@template app}
/// The main widget for the application.
/// {@endtemplate}
class App extends StatelessWidget {
  /// {@macro app}
  App({super.key}) : _appRouter = AppRouter();

  /// the app router
  final AppRouter _appRouter;

  @override
  Widget build(BuildContext context) {
    return ProviderScope(child: _RouterWidget(appRouter: _appRouter));
  }
}

/// {@template router_widget}
/// The router widget for the application.
/// {@endtemplate}
class _RouterWidget extends ConsumerWidget {
  /// {@macro router_widget}
  const _RouterWidget({required this.appRouter});

  /// The father needs the router to be passed to the child widget
  /// to avoid rebuild the router when we use hot reload
  final AppRouter appRouter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themingProvider);
    return AppLifeCycleListener(
      child: MaterialApp.router(
        routerConfig: appRouter.config(),
        theme: theme.baseTheme.theme,
      ),
    );
  }
}
