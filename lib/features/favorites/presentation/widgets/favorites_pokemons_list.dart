import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex_global/core/const/gap.dart';
import 'package:pokedex_global/core/const/sizes.dart';
import 'package:pokedex_global/core/router/app_router.gr.dart';
import 'package:pokedex_global/core/theming/core/provider/theming_provider.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/entities.dart';
import 'package:pokedex_global/gen/assets/assets.gen.dart';
import 'package:pokedex_global/l10n/l10n.dart';
import 'package:pokedex_global/shared/pokedex_ui_kit/pokedex_ui_kit.dart';

/// {@template favorites_pokemons_list}
/// A stateless list that displays favorite Pokémons
/// and allows removing them with a swipe.
/// {@endtemplate}
class FavoritesPokemonsList extends ConsumerWidget {
  /// {@macro favorites_pokemons_list}
  const FavoritesPokemonsList({
    super.key,
    required this.pokemonList,
    required this.onRemove,
  });

  /// The list of Pokémon to display.
  final List<PokemonDetailEntity> pokemonList;

  /// Callback when a Pokémon is removed.
  final void Function(PokemonDetailEntity pokemon) onRemove;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themingProvider);
    final l10n = context.l10n;
    if (pokemonList.isEmpty) {
      return Center(
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
                l10n.noFavorites,
                textAlign: TextAlign.center,
                style: theme.baseTheme.typography.xxlSemiBold,
              ),
              Gap.height16,
              Text(
                l10n.noFavoritesDescription,
                textAlign: TextAlign.center,
                style: theme.baseTheme.typography.mdRegular,
              ),
            ],
          ),
        ),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.only(bottom: 24),
      itemCount: pokemonList.length,
      itemBuilder: (context, index) {
        final pokemon = pokemonList[index];

        return Dismissible(
          key: ValueKey(pokemon.id),
          direction: DismissDirection.endToStart,
          background: Container(
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
            alignment: Alignment.centerRight,
            decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.circular(16),
            ),
            padding: const EdgeInsets.only(right: 20),
            child: const Icon(Icons.delete, color: Colors.white),
          ),
          onDismissed: (_) => onRemove(pokemon),
          child: GestureDetector(
            onTap: () => context.pushRoute(
              PokemonDetailsRoute(
                pokemon: pokemon,
                tag: 'favorites_hero_pokemon_card-${pokemon.id}',
              ),
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              child: PokemonCard(
                pokemon: pokemon,
                tag: 'favorites_hero_pokemon_card-${pokemon.id}',
              ),
            ),
          ),
        );
      },
    );
  }
}
