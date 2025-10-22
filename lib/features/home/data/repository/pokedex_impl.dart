import 'package:pokedex_global/features/home/data/datasource/pokedex_datasource.dart';
import 'package:pokedex_global/features/home/domain/entities/pokemon_list_response_entity.dart';
import 'package:pokedex_global/features/home/domain/repository/pokedex_repository.dart';

/// {@template pokedex_impl}
/// A implementation of the pokedex repository.
/// {@endtemplate}
class PokedexImpl implements PokedexRepository {
  /// The datasource of the pokedex impl.
  final PokedexDatasource datasource;

  /// {@macro pokedex_impl}
  const PokedexImpl({required this.datasource});


  @override
  Future<PokemonListResponseEntity> getPokemonList(
      {required int limit, required int offset}) async {
    final pokemonList =
        await datasource.getPokemonList(limit: limit, offset: offset);
    return PokemonListResponseEntity.fromModel(pokemonList);
  }
}
