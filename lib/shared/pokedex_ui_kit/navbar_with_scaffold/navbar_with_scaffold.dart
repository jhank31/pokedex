import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex_global/core/const/sizes.dart';
import 'package:pokedex_global/core/router/app_router.gr.dart';
import 'package:pokedex_global/core/theming/core/provider/theming_provider.dart';

/// {@template navbar_with_scaffold}
/// A widget that displays a scaffold with a navigation bar and a floating action button.
/// {@endtemplate}
class NavBarWithScaffold extends ConsumerWidget {
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
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themingProvider);
    return Scaffold(
      body: child,
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: theme.baseTheme.baseColorPalette.gray500
                  .withValues(alpha: 0.12),
              blurRadius: Sizes.p4,
              offset: Offset(0, -1),
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Sizes.p16),
            topRight: Radius.circular(Sizes.p16),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Sizes.p16),
            topRight: Radius.circular(Sizes.p16),
          ),
          child: NavigationBar(
            selectedIndex: tabsRouter.activeIndex,
            backgroundColor: theme.baseTheme.baseColorPalette.white,
            indicatorColor: theme.baseTheme.baseColorPalette.white,
            
            destinations: [
              NavigationDestination(
                  icon: Icon(Icons.home),
                  selectedIcon: Icon(
                    Icons.home,
                    color: theme.baseTheme.baseColorPalette.primary400,
                  ),
                  label: 'Pokedex'),
              NavigationDestination(
                  icon: Icon(Icons.favorite),
                  selectedIcon: Icon(
                    Icons.favorite,
                    color: theme.baseTheme.baseColorPalette.primary400,
                  ),
                  label: 'Favorites'),
            ],
            onDestinationSelected: (index) {
              tabsRouter.setActiveIndex(index);
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.router.push(TalkerRoute()),
        child: const Icon(Icons.bug_report),
      ),
    );
  }
}
