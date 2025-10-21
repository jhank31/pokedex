import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hive_crypto_wallet_app/core/router/app_router.gr.dart';
import 'package:hive_crypto_wallet_app/shared/hive_kit/hive_kit.dart';

/// {@template host_view}
/// A view that displays the host.
/// {@endtemplate}
class HostView extends StatelessWidget {
  /// {@macro host_view}
  const HostView({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [
        HomeRoute(),
        MarketRoute(),
      ],
      transitionBuilder: (context, child, animation) {
        return FadeTransition(opacity: animation, child: child);
      },
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return NavBarWithScaffold(tabsRouter: tabsRouter, child: child);
      },
    );
  }
}
