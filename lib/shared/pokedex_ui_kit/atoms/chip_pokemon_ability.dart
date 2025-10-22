import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokedex_global/core/const/gap.dart';
import 'package:pokedex_global/core/const/sizes.dart';
import 'package:pokedex_global/core/theming/theme/themes.dart';
import 'package:pokedex_global/core/utils/extension/pokemon_color_extension.dart';
import 'package:pokedex_global/core/utils/extension/pokemon_icon_type_extension.dart';
import 'package:pokedex_global/core/utils/formaters/string_formaters/capitalize_string.dart';
import 'package:pokedex_global/features/pokemon_details/domain/enums/enums.dart';

/// {@template chip_pokemon_ability}
/// A chip that represents the ability of a pokemon.
/// {@endtemplate}
class ChipPokemonAbility extends StatelessWidget {
  /// {@macro chip_pokemon_ability}
  const ChipPokemonAbility({
    super.key,
    required this.theme,
    required this.type,
  });

  /// The theme of the app.
  final AppThemes theme;

  /// The type of the pokemon.
  final PokemonTypeEnum type;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: Sizes.p8,
        vertical: Sizes.p4,
      ),
      decoration: BoxDecoration(
        color: type.pokemonColor,
        borderRadius: BorderRadius.circular(Sizes.p40),
      ),
      child: Row(
        children: [
          Container(
            height: Sizes.p20,
            width: Sizes.p20,
            padding: const EdgeInsets.all(Sizes.p4),
            decoration: BoxDecoration(
              color: theme.baseTheme.baseColorPalette.white,
              shape: BoxShape.circle,
            ),
            child: SvgPicture.asset(type.pokemonIconType, fit: BoxFit.contain),
          ),
          Gap.width8,
          Text(capitalizeString(type.name),
              style: theme.baseTheme.typography.smMedium.copyWith(
                color: theme.baseTheme.baseColorPalette.white,
              )),
        ],
      ),
    );
  }
}
