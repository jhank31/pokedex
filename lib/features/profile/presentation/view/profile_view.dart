import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex_global/core/const/gap.dart';
import 'package:pokedex_global/core/const/sizes.dart';
import 'package:pokedex_global/core/theming/core/provider/theming_provider.dart';
import 'package:pokedex_global/l10n/l10n.dart';

/// {@template profile_view}
/// A view that displays the profile.
/// {@endtemplate}
class ProfileView extends ConsumerWidget {
  /// {@macro profile_view}
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themingProvider);
    final l10n = context.l10n;
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: Sizes.p16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(l10n.changeTheme,
                  style: theme.baseTheme.typography.xxlRegular),
              Gap.height16,
              IconButton(
                icon: theme.baseTheme.isDark
                    ? const Icon(Icons.light_mode_outlined, size: 100)
                    : const Icon(Icons.dark_mode_outlined, size: 100),
                onPressed: () {
                  ref.read(themingProvider.notifier).toggleTheme();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
