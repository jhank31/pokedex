import 'package:flutter/material.dart';
import 'package:pokedex_global/core/const/gap.dart';
import 'package:pokedex_global/core/const/sizes.dart';
import 'package:pokedex_global/core/theming/theme/themes.dart';
import 'package:pokedex_global/l10n/arb/app_localizations.dart';

/// {@template pokemon_gender_bar}
/// A widget that displays a bar with the gender rate of a pokemon.
/// {@endtemplate}
class PokemonGenderBar extends StatelessWidget {
  /// {@macro pokemon_gender_bar}
  const PokemonGenderBar({
    super.key,
    required this.size,
    required this.l10n,
    required this.theme,
    required this.maleRate,
    required this.femaleRate,
  });

  /// The size of the screen.
  final Size size;

  /// The localization of the app.
  final AppLocalizations l10n;

  /// The theme of the app.
  final AppThemes theme;

  /// The male rate of the pokemon.
  final double maleRate;

  /// The female rate of the pokemon.
  final double femaleRate;

  @override
  Widget build(BuildContext context) {
    final total = maleRate + femaleRate;
    final malePercent = maleRate / total;
    final femalePercent = femaleRate / total;

    return femaleRate == -1
        ? Column(children: [
            Text(l10n.gender,
                textAlign: TextAlign.center,
                style: theme.baseTheme.typography.mdRegular.copyWith(
                    color:
                        theme.baseTheme.baseColorPalette.textBlackSecondary)),
            Gap.height16,
            Text(l10n.unknown,
                textAlign: TextAlign.center,
                style: theme.baseTheme.typography.mdRegular.copyWith(
                    color:
                        theme.baseTheme.baseColorPalette.textBlackSecondary)),
            Gap.height16,
            Container(
              height: Sizes.p10,
              width: size.width,
              decoration: BoxDecoration(
                color: theme.baseTheme.baseColorPalette.borderColor,
                borderRadius: BorderRadius.circular(Sizes.p50),
              ),
            ),
          ])
        : Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(l10n.gender.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: theme.baseTheme.typography.mdRegular.copyWith(
                      color:
                          theme.baseTheme.baseColorPalette.textBlackSecondary)),
              Gap.height16,
              ClipRRect(
                borderRadius: BorderRadius.circular(Sizes.p50),
                child: Row(
                  children: [
                    Expanded(
                      flex: (malePercent * 1000).toInt(), // más resolución
                      child: Container(
                        height: Sizes.p10,
                        color: theme.baseTheme.baseColorPalette.primaryColor,
                      ),
                    ),
                    Expanded(
                      flex: (femalePercent * 1000).toInt(),
                      child: Container(
                        height: Sizes.p10,
                        color: Color(0xFFFF7596),
                      ),
                    ),
                  ],
                ),
              ),
              Gap.height8,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.male,
                          color: theme
                              .baseTheme.baseColorPalette.textBlackSecondary,
                          size: Sizes.p16),
                      Gap.width4,
                      Text(
                        '${maleRate.toStringAsFixed(1).replaceAll('.', ',')}%',
                        style: theme.baseTheme.typography.smMedium.copyWith(
                          color: theme
                              .baseTheme.baseColorPalette.textBlackSecondary,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.female,
                          color: theme
                              .baseTheme.baseColorPalette.textBlackSecondary,
                          size: Sizes.p16),
                      Gap.width4,
                      Text(
                        '${femaleRate.toStringAsFixed(1).replaceAll('.', ',')}%',
                        style: theme.baseTheme.typography.smMedium.copyWith(
                          color: theme
                              .baseTheme.baseColorPalette.textBlackSecondary,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
  }
}
