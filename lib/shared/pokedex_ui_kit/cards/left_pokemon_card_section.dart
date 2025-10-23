import 'package:flutter/material.dart';
import 'package:pokedex_global/core/const/gap.dart';
import 'package:pokedex_global/core/const/sizes.dart';
import 'package:pokedex_global/core/theming/theme/themes.dart';
import 'package:pokedex_global/core/utils/formaters/string_formaters/capitalize_string.dart';
import 'package:pokedex_global/core/utils/formaters/string_formaters/format_pokemon_id.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/pokemon_detail_entity.dart';
import 'package:pokedex_global/shared/pokedex_ui_kit/pokedex_ui_kit.dart';

/// {@template left_pokemon_card_section}
/// A section that displays the left side of the pokemon card.
/// {@endtemplate}
class LeftPokemonCardSection extends StatelessWidget {
  /// {@macro left_pokemon_card_section}
  const LeftPokemonCardSection({
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
    return Padding(
      padding: const EdgeInsets.all(Sizes.p10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: '$tag-id-${pokemon.id}',
            child: Material(
              type: MaterialType.transparency,
              child: Text('Nº${formatPokemonId(pokemon.id)}',
                  style: theme.baseTheme.typography.smSemiBold.copyWith(
                    color: theme.baseTheme.isDark
                        ? theme.baseTheme.baseColorPalette.textWhite
                        : theme.baseTheme.baseColorPalette.textBlackSecondary,
                  )),
            ),
          ),
          Gap.height8,
          Hero(
            tag: '$tag-name-${pokemon.name}-${pokemon.id}',
            child: Material(
              type: MaterialType.transparency,
              child: Text(capitalizeString(pokemon.name),
                  style: theme.baseTheme.typography.xxlSemiBold.copyWith(
                    color: theme.baseTheme.isDark
                        ? theme.baseTheme.baseColorPalette.textWhite
                        : theme.baseTheme.baseColorPalette.textBlack,
                  )),
            ),
          ),
          Gap.height12,
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
        ],
      ),
    );
  }
}
