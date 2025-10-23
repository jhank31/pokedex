import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_global/core/router/app_router.gr.dart';
import 'package:pokedex_global/shared/pokedex_ui_kit/navbar_with_scaffold/navbar_with_scaffold.dart';

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
        RegionsRoute(),
        FavoritesRoute(),
        ProfileRoute(),
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
