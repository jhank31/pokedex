import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex_global/core/const/sizes.dart';
import 'package:pokedex_global/core/router/app_router.gr.dart';
import 'package:pokedex_global/features/home/presentation/provider/pokedex_provider.dart';
import 'package:pokedex_global/features/home/presentation/widgets/widgets.dart';

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

    return pokedexList.when(
      data: (data) => Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(
              left: Sizes.p10, right: Sizes.p10, top: Sizes.p24),
          child: RefreshIndicator(
            onRefresh: () =>
                ref.read(pokedexListProvider.notifier).refreshList(),
            child: ListView.separated(
              controller: _scrollController,
              padding: const EdgeInsets.all(Sizes.p16),
              itemCount: data.length + 1,
              separatorBuilder: (_, __) => const SizedBox(height: Sizes.p10),
              itemBuilder: (context, index) {
                if (index == data.length) {
                  // Loader al final
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.all(Sizes.p16),
                      child: CircularProgressIndicator(),
                    ),
                  );
                }

                final pokemon = data[index];
                return GestureDetector(
                  onTap: () => context.pushRoute(
                    PokemonDetailsRoute(pokemon: pokemon),
                  ),
                  child: PokemonCard(pokemon: pokemon),
                );
              },
            ),
          ),
        ),
      ),
      error: (_, __) => const Scaffold(
        body: Center(child: Text('Error loading Pokémon ⚠️')),
      ),
      loading: () => const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
