import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex_global/core/const/sizes.dart';
import 'package:pokedex_global/core/errors/failures/app_failure.dart';
import 'package:pokedex_global/core/router/app_router.gr.dart';
import 'package:pokedex_global/features/fuzzy_search/presentation/widgets/widgets.dart';
import 'package:pokedex_global/features/home/presentation/provider/pokedex_provider.dart';
import 'package:pokedex_global/features/home/presentation/provider/pokemon_types_agregator_provider.dart';
import 'package:pokedex_global/features/home/presentation/view/home_view_error.dart';
import 'package:pokedex_global/features/home/presentation/widgets/widgets.dart';
import 'package:pokedex_global/l10n/l10n.dart';
import 'package:pokedex_global/shared/pokedex_ui_kit/pokedex_ui_kit.dart';

/// {@template home_view}
/// A view that displays the home view.
/// {@endtemplate}
class HomeView extends ConsumerStatefulWidget {
  const HomeView({super.key});

  @override
  ConsumerState<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<HomeView> {
  /// The scroll controller for the list.
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScroll);
  }

  void _onScroll() {
    final currentScroll = _scrollController.position.pixels;
    final maxScroll = _scrollController.position.maxScrollExtent;
    if (currentScroll >= maxScroll * 0.8) {
      ref.read(pokedexListProvider.notifier).loadMore();
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final pokedexList = ref.watch(pokedexListProvider);
    final pokemonTypes = ref.watch(pokemonTypesAgregatorProvider);
    final l10n = context.l10n;
    return pokedexList.when(
      data: (data) {
        if (data.failure != null) {
          return HomeViewError(
              failure: data.failure as AppFailure,
              onRetry: () =>
                  ref.read(pokedexListProvider.notifier).refreshList());
        }
        return Scaffold(
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(Sizes.p100),
            child: SafeArea(
                child: Hero(
              tag: 'home_hero_search_bar',
              child: Material(
                type: MaterialType.transparency,
                child: GestureDetector(
                  onTap: () => context.pushRoute(const FuzzySearchRoute()),
                  child: SearchPokemon(
                    enabled: false,
                    label: l10n.search,
                    backIcon: IconButton(
                      onPressed: () => showModalBottomSheet(
                        useSafeArea: true,
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        builder: (context) => DraggableScrollableSheet(
                            initialChildSize: 0.8,
                            minChildSize: 0.5,
                            maxChildSize: 0.8,
                            expand: false,
                            builder: (context, scrollController) {
                              return PokemonTypeFilterBottomSheet(
                                  listOfTypes: pokemonTypes.toList(),
                                  onCancelFilter: () {
                                    Navigator.of(context).pop();
                                    ref
                                        .read(pokedexListProvider.notifier)
                                        .clearFilters();
                                  },
                                  onApplyFilter: (selectedTypes) => {
                                        ref
                                            .read(pokedexListProvider.notifier)
                                            .filterByTypes(selectedTypes)
                                      });
                            }),
                      ),
                      icon: const Icon(Icons.menu_rounded),
                    ),
                  ),
                ),
              ),
            )),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Sizes.p10),
            child: RefreshIndicator(
              onRefresh: () =>
                  ref.read(pokedexListProvider.notifier).refreshList(),
              child: Padding(
                padding: const EdgeInsets.only(top: Sizes.p12),
                child: ListView.separated(
                  controller: _scrollController,
                  padding: const EdgeInsets.all(Sizes.p16),
                  itemCount: data.isLoadingMore
                      ? data.pokemons.length + 1
                      : data.pokemons.length,
                  separatorBuilder: (_, __) =>
                      const SizedBox(height: Sizes.p10),
                  itemBuilder: (context, index) {
                    if (index == data.pokemons.length && data.isLoadingMore) {
                      return const Center(
                        child: Padding(
                          padding: EdgeInsets.all(Sizes.p16),
                          child: PokeBallLoader(
                            size: Sizes.p50,
                          ),
                        ),
                      );
                    }
                    final pokemon = data.pokemons[index];

                    return GestureDetector(
                      key: Key(pokemon.id.toString()),
                      onTap: () => context.pushRoute(
                        PokemonDetailsRoute(
                            pokemon: pokemon,
                            tag: 'home_hero_pokemon_card-${pokemon.id}'),
                      ),
                      child: PokemonCard(
                          pokemon: pokemon,
                          tag: 'home_hero_pokemon_card-${pokemon.id}'),
                    );
                  },
                ),
              ),
            ),
          ),
        );
      },
      error: (failure, stackTrace) => HomeViewError(
          failure: failure as AppFailure,
          onRetry: () => ref.read(pokedexListProvider.notifier).refreshList()),
      loading: () => const Scaffold(
        body: Center(child: PokeBallLoader()),
      ),
    );
  }
}
