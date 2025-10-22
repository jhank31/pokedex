import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_global/core/router/app_router.gr.dart';

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
          NavigationDestination(icon: Icon(Icons.home), label: 'Pokedex'),
          NavigationDestination(icon: Icon(Icons.favorite), label: 'Favorites'),
        ],
        onDestinationSelected: (index) {
          tabsRouter.setActiveIndex(index);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.router.push(TalkerRoute()),
        child: const Icon(Icons.bug_report),
      ),
    );
  }
}
