import 'dart:async';
import 'package:pokedex_global/core/errors/provider/error_handler_provider.dart';
import 'package:pokedex_global/features/home/domain/usecases/get_pokemons_list_usecase.dart';
import 'package:pokedex_global/features/home/presentation/di/pokedex_dependency_inyection.dart';
import 'package:pokedex_global/features/home/presentation/provider/pokedex_state/pokedex_state.dart';
import 'package:pokedex_global/features/home/presentation/provider/pokemon_types_agregator_provider.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/entities.dart';
import 'package:pokedex_global/features/pokemon_details/domain/enums/enums.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokedex_provider.g.dart';

@Riverpod(keepAlive: true)
class PokedexList extends _$PokedexList {
  /// The limit of the pokedex list.
  static const int _limit = 20;

  /// The offset of the pokedex list.
  int _offset = 0;

  /// The list of all pokemons.
  final List<PokemonDetailEntity> _allPokemons = [];

  @override
  FutureOr<PokedexState> build() async {
    /// Initialize the state with loading.
    state = const AsyncLoading();

    try {
      /// Load the initial pokemons.
      final pokemons = await _loadInitialPokemons();
      return PokedexState(
        pokemons: pokemons,
        isLoading: false,
      );
    } catch (e) {
      /// Handle the error.

      return PokedexState(
        isLoading: false,
        failure:
            ref.read(errorHandlerProvider).handleError(e, StackTrace.current),
      );
    }
  }

  /// Load the initial pokemons.
  Future<List<PokemonDetailEntity>> _loadInitialPokemons() async {
    _offset = 0;
    final getPokemonsListUseCase = ref.read(getPokemonsListUseCaseProvider);
    final pokemons = await getPokemonsListUseCase(
      GetPokemonsListParams(limit: _limit, offset: _offset),
    );
    _allPokemons
      ..clear()
      ..addAll(pokemons);

    ref.read(pokemonTypesAgregatorProvider.notifier).collectFrom(pokemons);
    return _allPokemons;
  }

  /// Load more pokemons.
  Future<void> loadMore() async {
    final current = state.hasValue ? state.value : null;

    /// If the state is not loading or has active filters, return.
    if (current == null || current.isLoadingMore || current.hasActiveFilters) {
      return;
    }

    /// Set the state to loading more.
    state = AsyncData(current.copyWith(isLoadingMore: true));

    try {
      _offset += _limit;
      final getPokemonsListUseCase = ref.read(getPokemonsListUseCaseProvider);
      final morePokemons = await getPokemonsListUseCase(
        GetPokemonsListParams(limit: _limit, offset: _offset),
      );

      _allPokemons.addAll(morePokemons);
      ref
          .read(pokemonTypesAgregatorProvider.notifier)
          .collectFrom(morePokemons);

      state = AsyncData(
        current.copyWith(
          pokemons: [..._allPokemons],
          isLoadingMore: false,
        ),
      );
    } catch (e, s) {
      state = AsyncData(
        current.copyWith(
          isLoadingMore: false,
          failure: ref.read(errorHandlerProvider).handleError(e, s),
        ),
      );
    }
  }

  /// Refresh the list.
  Future<void> refreshList() async {
    state = AsyncData(state.value!.copyWith(isLoading: true));
    try {
      final pokemons = await _loadInitialPokemons();
      state = AsyncData(
        PokedexState(pokemons: pokemons),
      );
    } catch (e) {
      state = AsyncData(
        PokedexState(
            failure: ref
                .read(errorHandlerProvider)
                .handleError(e, StackTrace.current)),
      );
    }
  }

  /// Filter the list by types.
  void filterByTypes(List<String> types) {
    final current = state.hasValue ? state.value : null;
    if (current == null) return;

    if (types.isEmpty) {
      state = AsyncData(
        current.copyWith(
          pokemons: [..._allPokemons],
          hasActiveFilters: false,
          activeFilters: [],
        ),
      );
      return;
    }

    final filtered = _allPokemons.where((pokemon) {
      return pokemon.types.any(
        (PokemonTypeEnum type) => types.contains(type.typeName),
      );
    }).toList();

    state = AsyncData(
      current.copyWith(
        pokemons: filtered,
        hasActiveFilters: true,
        activeFilters: types,
      ),
    );
  }

  /// Clear the filters.
  void clearFilters() {
    final current = state.hasValue ? state.value : null;
    if (current == null) return;
    state = AsyncData(
      current.copyWith(
        pokemons: [..._allPokemons],
        hasActiveFilters: false,
        activeFilters: [],
      ),
    );
  }
}
