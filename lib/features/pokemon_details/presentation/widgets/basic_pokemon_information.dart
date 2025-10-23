import 'package:flutter/material.dart';
import 'package:pokedex_global/core/const/gap.dart';
import 'package:pokedex_global/core/const/sizes.dart';
import 'package:pokedex_global/core/theming/theme/themes.dart';
import 'package:pokedex_global/core/utils/formaters/string_formaters/capitalize_string.dart';
import 'package:pokedex_global/core/utils/formaters/string_formaters/format_pokemon_id.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/pokemon_detail_entity.dart';
import 'package:pokedex_global/shared/pokedex_ui_kit/atoms/chip_pokemon_ability.dart';

/// {@template basic_pokemon_information}
/// A widget that displays the basic information of a pokemon.
/// {@endtemplate}
class BasicPokemonInformation extends StatelessWidget {
  /// {@macro basic_pokemon_information}
  const BasicPokemonInformation({
    super.key,
    required this.pokemon,
    required this.theme,
    required this.tag,
  });

  /// The pokemon detail of the pokemon.
  final PokemonDetailEntity pokemon;

  /// The theme of the app.
  final AppThemes theme;

  /// The tag of the pokemon.
  final String tag;

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Hero(
          tag: '$tag-name-${pokemon.name}-${pokemon.id}',
        child: Material(
          type: MaterialType.transparency,
          child: Text(capitalizeString(pokemon.name),
              style: theme.baseTheme.typography.extraxxlMedium.copyWith(
                color: theme.baseTheme.baseColorPalette.textBlack,
              )),
        ),
      ),
      Gap.height4,
      Hero(
        tag: '$tag-id-${pokemon.id}',
        child: Material(
          type: MaterialType.transparency,
          child: Text('Nº${formatPokemonId(pokemon.id)}',
              style: theme.baseTheme.typography.lgMedium.copyWith(
                color: theme.baseTheme.baseColorPalette.textBlackSecondary,
              )),
        ),
      ),
      Gap.height20,
      Wrap(
        spacing: Sizes.p4,
        runSpacing: Sizes.p4,
        children: pokemon.types
            .toList()
            .map(
              (type) => Hero(
                  tag: '$tag-type-${pokemon.id}-${type.name}',
                  child: Material(
                    type: MaterialType.transparency,
                    child: ChipPokemonAbility(theme: theme, type: type),
                  )),
            )
            .toList(),
      ),
      Gap.height20,
      Text(
        pokemon.description,
        style: theme.baseTheme.typography.mdRegular.copyWith(
            color: theme.baseTheme.baseColorPalette.textBlackSecondary),
      ),
    ]);
  }
}
