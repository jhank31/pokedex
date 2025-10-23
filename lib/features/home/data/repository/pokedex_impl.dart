import 'package:pokedex_global/core/errors/errors.dart';
import 'package:pokedex_global/core/logging/logs/app_talker.dart';
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

  /// The use case to get the pokemon detail.
  final GetPokemonDetailUseCase getPokemonDetailUseCase;

  /// The app talker.
  final AppTalker appTalker;

  /// The error handler for managing exceptions.
  final ErrorHandler errorHandler;

  /// {@macro pokedex_impl}
  const PokedexImpl({
    required this.datasource,
    required this.getPokemonDetailUseCase,
    required this.appTalker,
    required this.errorHandler,
  });

  @override
  Future<List<PokemonDetailEntity>> getPokemonList(
      {required int limit, required int offset}) async {
    try {
      final pokemonList =
          await datasource.getPokemonList(limit: limit, offset: offset);

      final listPokemonDetails = await Future.wait(pokemonList.results.map(
          (e) async => await getPokemonDetailUseCase
              .call(GetPokemonDetailParams(idOrName: e.name))));
      appTalker.info(
          'Pokemon list fetched successfully: ${listPokemonDetails.length}');
      return listPokemonDetails;
    } catch (e, stackTrace) {
      throw errorHandler.throwError(
        e,
        stackTrace,
        context: 'Fetching pokemon list (limit: $limit, offset: $offset)',
      );
    }
  }

  @override
  Future<PokemonDetailEntity> getPokemon({required String idOrName}) async {
    try {
      final pokemon = await getPokemonDetailUseCase
          .call(GetPokemonDetailParams(idOrName: idOrName));
      return pokemon;
    } catch (e, stackTrace) {
      throw errorHandler.throwError(
        e,
        stackTrace,
        context: 'Fetching pokemon by id or name: $idOrName',
      );
    }
  }
}
