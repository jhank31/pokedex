import 'package:pokedex_global/features/home/domain/usecases/get_pokemons_list_usecase.dart';
import 'package:pokedex_global/features/home/presentation/di/pokedex_dependency_inyection.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/entities.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokedex_provider.g.dart';

/// {@template pokedex_list}
/// Provider for the pokedex list.
/// {@endtemplate}
@riverpod
class PokedexList extends _$PokedexList {
  static const int _limit = 20;
  int _offset = 0;
  bool _isLoadingMore = false;

  @override
  FutureOr<List<PokemonDetailEntity>> build() async {
    return _fetchPokemons();
  }

  Future<List<PokemonDetailEntity>> _fetchPokemons() async {
    final getPokemonsListUseCase = ref.watch(getPokemonsListUseCaseProvider);
    final pokedexList = await getPokemonsListUseCase(
      GetPokemonsListParams(limit: _limit, offset: _offset),
    );
    return pokedexList;
  }

  Future<void> loadMore() async {
    if (_isLoadingMore) return;
    _isLoadingMore = true;
    _offset += _limit;

    final morePokemons = await _fetchPokemons();
    state = AsyncData([...?state.value, ...morePokemons]);
    _isLoadingMore = false;
  }

  Future<void> refreshList() async {
    _offset = 0;
    state = const AsyncLoading();
    final pokedexList = await _fetchPokemons();
    state = AsyncData(pokedexList);
  }
}
