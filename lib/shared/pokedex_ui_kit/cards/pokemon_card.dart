import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex_global/core/const/sizes.dart';
import 'package:pokedex_global/core/theming/core/provider/theming_provider.dart';
import 'package:pokedex_global/core/utils/extension/pokemon_color_extension.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/entities.dart';
import 'package:pokedex_global/shared/pokedex_ui_kit/pokedex_ui_kit.dart';

/// {@template pokemon_card}
/// A card that displays a pokemon.
/// {@endtemplate}
class PokemonCard extends ConsumerWidget {
  /// {@macro pokemon_card}
  const PokemonCard({super.key, required this.pokemon, required this.tag});

  /// The pokemon detail of the pokemon.
  final PokemonDetailEntity pokemon;

  /// The tag of the pokemon.
  final String tag;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themingProvider);
    final size = MediaQuery.sizeOf(context);
    return Container(
      decoration: BoxDecoration(
        color: pokemon.types.first.pokemonColor.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(Sizes.p16),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          LeftPokemonCardSection(pokemon: pokemon, theme: theme, tag: tag),
          RightPokemonCardSection(size: size, pokemon: pokemon, theme: theme, tag: tag)
        ],
      ),
    );
  }
}
