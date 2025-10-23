import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex_global/core/const/sizes.dart';
import 'package:pokedex_global/core/local_db/providers/favorites_providers_db.dart';
import 'package:pokedex_global/core/theming/core/provider/theming_provider.dart';
import 'package:pokedex_global/features/favorites/presentation/provider/favorites_provider.dart';
import 'package:pokedex_global/features/favorites/presentation/widgets/widgets.dart';
import 'package:pokedex_global/shared/pokedex_ui_kit/pokedex_ui_kit.dart';

/// {@template favorites_view}
/// A view that displays the favorites.
/// {@endtemplate}
class FavoritesView extends ConsumerWidget {
  /// {@macro favorites_view}
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allFavorites = ref.watch(getAllFavoritesFromApiProvider);
    final theme = ref.watch(themingProvider);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorites',
          style: theme.baseTheme.typography.xxlMedium,
        ),
      ),
      body: allFavorites.when(
        data: (data) => Padding(
          padding: const EdgeInsets.all(Sizes.p16),
          child: FavoritesPokemonsList(
              pokemonList: data,
              onRemove: (pokemon) {
                ref.read(toggleFavoriteProvider(
                    pokemonId: pokemon.id,
                    name: pokemon.name,
                    imageUrl: pokemon.imageUrl));
              }),
        ),
        error: (error, stackTrace) => Center(
          child: Text('Error: $error'),
        ),
        loading: () => const Center(child: PokeBallLoader()),
      ),
    );
  }
}
