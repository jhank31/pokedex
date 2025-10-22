import 'package:pokedex_global/features/home/data/datasource/pokedex_datasource.dart';
import 'package:pokedex_global/features/home/domain/repository/pokedex_repository.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/entities.dart';
import 'package:pokedex_global/features/pokemon_details/domain/usecases/usecases.dart';

/// {@template pokedex_impl}
/// A implementation of the pokedex repository.
/// {@endtemplate}
class PokedexImpl implements PokedexRepository {
  /// The datasource of the pokedex impl.
  final PokedexDatasource datasource;

  final GetPokemonDetailUseCase getPokemonDetailUseCase;

  /// {@macro pokedex_impl}
  const PokedexImpl(
      {required this.datasource, required this.getPokemonDetailUseCase});

  @override
  Future<List<PokemonDetailEntity>> getPokemonList(
      {required int limit, required int offset}) async {
    final pokemonList =
        await datasource.getPokemonList(limit: limit, offset: offset);

    final listPokemonDetails = await Future.wait(pokemonList.results.map(
        (e) async => await getPokemonDetailUseCase
            .call(GetPokemonDetailParams(name: e.name))));
    return listPokemonDetails;
  }
}
