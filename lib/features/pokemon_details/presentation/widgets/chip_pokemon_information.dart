import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokedex_global/core/const/gap.dart';
import 'package:pokedex_global/core/const/sizes.dart';
import 'package:pokedex_global/core/theming/theme/themes.dart';

/// {@template chip_pokemon_information}
/// A widget that displays a chip with a pokemon information.
/// {@endtemplate}
class ChipPokemonInformation extends StatelessWidget {
  /// {@macro chip_pokemon_information}
  const ChipPokemonInformation({
    super.key,
    required this.theme,
    required this.size,
    required this.icon,
    required this.text,
    required this.value,
    this.postText = '',
  });

  /// The theme of the app.
  final AppThemes theme;

  /// The size of the screen.
  final Size size;

  /// The icon of the pokemon information.
  final String icon;

  /// The text of the pokemon information.
  final String text;

  /// The post text of the pokemon information.
  final String postText;

  /// The value of the pokemon information.
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SvgPicture.asset(icon,
                colorFilter: ColorFilter.mode(
                    theme.baseTheme.isDark
                        ? theme.baseTheme.baseColorPalette.textWhite
                        : theme.baseTheme.baseColorPalette.textBlack,
                    BlendMode.srcIn)),
            Gap.width8,
            Text(text,
                style: theme.baseTheme.typography.lgMedium.copyWith(
                  color: theme.baseTheme.isDark
                      ? theme.baseTheme.baseColorPalette.textWhite
                      : theme.baseTheme.baseColorPalette.textBlackSecondary,
                ))
          ],
        ),
        Gap.height8,
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: Sizes.p8),
          width: size.width * 0.4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Sizes.p16),
            border:
                Border.all(color: theme.baseTheme.baseColorPalette.borderColor),
          ),
          child: Text('${value.toString()} $postText',
              style: theme.baseTheme.typography.xlMedium),
        )
      ],
    );
  }
}
