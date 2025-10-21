import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hive_crypto_wallet_app/core/router/app_router.gr.dart';

/// {@template navbar_with_scaffold}
/// A widget that displays a scaffold with a navigation bar and a floating action button.
/// {@endtemplate}
class NavBarWithScaffold extends StatelessWidget {
  /// {@macro navbar_with_scaffold}
  const NavBarWithScaffold({
    required this.tabsRouter,
    required this.child,
    super.key,
  });

  /// The tabs router
  final TabsRouter tabsRouter;

  /// The child widget
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: NavigationBar(
        selectedIndex: tabsRouter.activeIndex,
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(
              icon: Icon(Icons.account_circle), label: 'Market'),
        ],
        onDestinationSelected: (index) {
          tabsRouter.setActiveIndex(index);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.router.push(const TalkerRoute()),
        child: const Icon(Icons.bug_report),
      ),
    );
  }
}
