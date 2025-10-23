import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex_global/core/const/sizes.dart';
import 'package:pokedex_global/core/router/app_router.gr.dart';
import 'package:pokedex_global/core/theming/core/provider/theming_provider.dart';
import 'package:pokedex_global/gen/assets/assets.gen.dart';
import 'package:pokedex_global/l10n/l10n.dart';

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
    final l10n = context.l10n;
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
            backgroundColor: theme.baseTheme.baseColorPalette.background,
            indicatorColor: theme.baseTheme.isDark
                ? theme.baseTheme.baseColorPalette.background
                : theme.baseTheme.baseColorPalette.white,
            destinations: [
              NavigationDestination(
                  icon: SvgPicture.asset(
                    Assets.icons.home,
                  ),
                  selectedIcon: SvgPicture.asset(
                    Assets.icons.home,
                    colorFilter: ColorFilter.mode(
                        theme.baseTheme.baseColorPalette.primary400,
                        BlendMode.srcIn),
                  ),
                  label: l10n.home),
              NavigationDestination(
                  icon: SvgPicture.asset(
                    Assets.icons.region,
                  ),
                  selectedIcon: SvgPicture.asset(
                    Assets.icons.region,
                    colorFilter: ColorFilter.mode(
                        theme.baseTheme.baseColorPalette.primary400,
                        BlendMode.srcIn),
                  ),
                  label: l10n.regions),
              NavigationDestination(
                  icon: SvgPicture.asset(
                    Assets.icons.favorite,
                  ),
                  selectedIcon: SvgPicture.asset(
                    Assets.icons.favorite,
                    colorFilter: ColorFilter.mode(
                        theme.baseTheme.baseColorPalette.primary400,
                        BlendMode.srcIn),
                  ),
                  label: l10n.favorites),
              NavigationDestination(
                  icon: SvgPicture.asset(
                    Assets.icons.user,
                  ),
                  selectedIcon: SvgPicture.asset(
                    Assets.icons.user,
                    colorFilter: ColorFilter.mode(
                        theme.baseTheme.baseColorPalette.primary400,
                        BlendMode.srcIn),
                  ),
                  label: l10n.profile),
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
