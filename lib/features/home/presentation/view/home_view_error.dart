import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex_global/core/const/gap.dart';
import 'package:pokedex_global/core/const/sizes.dart';
import 'package:pokedex_global/core/errors/errors.dart';
import 'package:pokedex_global/core/theming/core/provider/theming_provider.dart';
import 'package:pokedex_global/gen/assets/assets.gen.dart';
import 'package:pokedex_global/l10n/l10n.dart';
import 'package:pokedex_global/shared/pokedex_ui_kit/pokedex_ui_kit.dart';

/// {@template home_view_error}
/// A widget that displays an error message and a retry button.
/// {@endtemplate}
class HomeViewError extends ConsumerWidget {
  /// {@macro home_view_error}
  const HomeViewError({
    super.key,
    required this.failure,
    required this.onRetry,
  });

  /// The failure to display.
  final AppFailure failure;

  /// The callback to be called when the retry button is pressed.
  final VoidCallback onRetry;

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
              Assets.images.error.image(
                height: Sizes.p200,
              ),
              Gap.height16,
              Text(
                l10n.errorTitle,
                textAlign: TextAlign.center,
                style: theme.baseTheme.typography.xxlSemiBold,
              ),
              Gap.height16,
              Text(
                switch (failure) {
                  NetworkException() => l10n.errorDescription,
                  _ => failure.message,
                },
                textAlign: TextAlign.center,
                style: theme.baseTheme.typography.mdRegular,
              ),
              Gap.height32,
              GenericButton(
                  onPressed: onRetry,
                  height: Sizes.p60,
                  child: Text(l10n.retry,
                      style: theme.baseTheme.typography.xlSemiBold.copyWith(
                        color: theme.baseTheme.baseColorPalette.white,
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
