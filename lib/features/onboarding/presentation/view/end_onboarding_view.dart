import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex_global/core/const/gap.dart';
import 'package:pokedex_global/core/theming/core/provider/theming_provider.dart';
import 'package:pokedex_global/gen/assets/assets.gen.dart';
import 'package:pokedex_global/l10n/l10n.dart';

/// {@template end_onboarding_view}
/// A view that displays the end onboarding.
/// {@endtemplate}
class EndOnboardingView extends StatelessWidget {
  /// {@macro end_onboarding_view}
  const EndOnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      body: Center(
        child: Consumer(builder: (context, ref, child) {
          final theme = ref.watch(themingProvider);
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Assets.images.endOnboarding.image(width: 251, height: 264),
              Gap.height16,
              Text(l10n.endOnboardingTitle,
                  textAlign: TextAlign.center,
                  style: theme.baseTheme.typography.xxxlMedium),
              Gap.height16,
              Text(l10n.endOnboardingDescription,
                  textAlign: TextAlign.center,
                  style: theme.baseTheme.typography.mdRegular),
            ],
          );
        }),
      ),
    );
  }
}
