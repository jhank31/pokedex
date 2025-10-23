import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex_global/core/const/gap.dart';
import 'package:pokedex_global/core/const/sizes.dart';
import 'package:pokedex_global/core/router/app_router.gr.dart';
import 'package:pokedex_global/core/theming/core/provider/theming_provider.dart';
import 'package:pokedex_global/features/fuzzy_search/presentation/provider/pokedex_search_provider.dart';
import 'package:pokedex_global/features/fuzzy_search/presentation/widgets/search_pokemon.dart';
import 'package:pokedex_global/gen/assets/assets.gen.dart';
import 'package:pokedex_global/l10n/l10n.dart';
import 'package:pokedex_global/shared/pokedex_ui_kit/pokedex_ui_kit.dart';

/// {@template fuzzy_search_view}
/// A view that displays the fuzzy search.
/// {@endtemplate}
class FuzzySearchView extends ConsumerWidget {
  /// {@macro fuzzy_search_view}
  const FuzzySearchView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchState = ref.watch(pokedexSearchProvider);
    final l10n = context.l10n;
    final theme = ref.watch(themingProvider);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(Sizes.p100),
        child: SafeArea(
            child: Hero(
          tag: 'home_hero_search_bar',
          child: Material(
            type: MaterialType.transparency,
            child: SearchPokemon(
              backIcon: IconButton(
                onPressed: () {
                  ref.read(pokedexSearchProvider.notifier).clear();
                  context.pop();
                },
                icon: const Icon(Icons.close_rounded),
              ),
              label: l10n.search,
              onSearch: (String query) async {
                final notifier = ref.read(pokedexSearchProvider.notifier);
                notifier.search(query);
              },
            ),
          ),
        )),
      ),
      body: searchState.when(
        data: (pokemons) {
          if (pokemons.isEmpty) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(Sizes.p26),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.images.error.image(
                      width: Sizes.p200,
                      height: Sizes.p200,
                    ),
                    Gap.height16,
                    Text(
                      textAlign: TextAlign.center,
                      l10n.searchToShowData,
                      style: theme.baseTheme.typography.lgRegular,
                    ),
                  ],
                ),
              ),
            );
          }
          return Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: Sizes.p26, vertical: Sizes.p12),
            child: ListView.separated(
              itemCount: pokemons.length,
              separatorBuilder: (_, __) => const SizedBox(height: Sizes.p10),
              itemBuilder: (_, i) => GestureDetector(
                onTap: () => context.pushRoute(
                  PokemonDetailsRoute(
                    pokemon: pokemons[i],
                    tag: 'search_card_${pokemons[i].id}',
                  ),
                ),
                child: PokemonCard(
                  pokemon: pokemons[i],
                  tag: 'search_card_${pokemons[i].id}',
                ),
              ),
            ),
          );
        },
        loading: () => const Center(child: PokeBallLoader()),
        error: (e, _) => Center(
          child: Padding(
            padding: const EdgeInsets.all(Sizes.p26),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Assets.images.error.image(
                  width: Sizes.p200,
                  height: Sizes.p200,
                ),
                Gap.height16,
                Text(
                  textAlign: TextAlign.center,
                  l10n.errorTitle,
                  style: theme.baseTheme.typography.lgRegular,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
