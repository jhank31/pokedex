import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex_global/core/const/gap.dart';
import 'package:pokedex_global/core/const/sizes.dart';
import 'package:pokedex_global/core/theming/core/provider/theming_provider.dart';
import 'package:pokedex_global/gen/assets/assets.gen.dart';
import 'package:pokedex_global/l10n/l10n.dart';

/// {@template regions_view}
/// A view that displays the regions.
/// {@endtemplate}
class RegionsView extends ConsumerWidget {
  /// {@macro regions_view}
  const RegionsView({super.key});

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
              Assets.images.soon.image(
                height: Sizes.p200,
              ),
              Gap.height16,
              Text(
                l10n.availableSoon,
                textAlign: TextAlign.center,
                style: theme.baseTheme.typography.xxlSemiBold,
              ),
              Gap.height16,
              Text(
                l10n.availableSoonDescription,
                textAlign: TextAlign.center,
                style: theme.baseTheme.typography.mdRegular,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
