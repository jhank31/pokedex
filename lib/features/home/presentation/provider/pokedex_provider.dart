import 'dart:async';
import 'package:pokedex_global/features/home/domain/usecases/get_pokemons_list_usecase.dart';
import 'package:pokedex_global/features/home/presentation/di/pokedex_dependency_inyection.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/entities.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokedex_provider.g.dart';

/// {@template pokedex_list}
/// Provider for the pokedex list.
/// {@endtemplate}
@Riverpod(keepAlive: true)
class PokedexList extends _$PokedexList {
  static const int _limit = 20;
  int _offset = 0;
  bool _isLoadingMore = false;
  bool _hasLoadedInitial = false;

  @override
  FutureOr<List<PokemonDetailEntity>> build() async {
    return const [];
  }

  /// Initializes the list only once.
  Future<void> init() async {
    if (_hasLoadedInitial) return;
    _hasLoadedInitial = true;

    state = const AsyncLoading();
    try {
      _offset = 0;
      final pokemons = await _fetchPokemons();
      state = AsyncData(pokemons);
    } catch (e, s) {
      state = AsyncError(e, s);
    }
  }

  /// Fetches the pokemons list.
  Future<List<PokemonDetailEntity>> _fetchPokemons() async {
    final getPokemonsListUseCase = ref.read(getPokemonsListUseCaseProvider);
    final pokedexList = await getPokemonsListUseCase(
      GetPokemonsListParams(limit: _limit, offset: _offset),
    );
    return pokedexList;
  }

  /// Loads more pokemons.
  Future<void> loadMore() async {
    if (_isLoadingMore || state.isLoading) return;
    _isLoadingMore = true;

    try {
      _offset += _limit;
      final morePokemons = await _fetchPokemons();
      state = AsyncData([...?state.value, ...morePokemons]);
    } catch (e, s) {
      state = AsyncError(e, s);
    } finally {
      _isLoadingMore = false;
    }
  }

  
  /// Refreshes the list.
  Future<void> refreshList() async {
    _offset = 0;
    state = const AsyncLoading();
    try {
      final pokemons = await _fetchPokemons();
      state = AsyncData(pokemons);
    } catch (e, s) {
      state = AsyncError(e, s);
    }
  }
}
