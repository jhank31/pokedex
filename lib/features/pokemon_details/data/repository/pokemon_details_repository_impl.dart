import 'package:pokedex_global/core/errors/errors.dart';
import 'package:pokedex_global/core/logging/logs/app_talker.dart';
import 'package:pokedex_global/features/pokemon_details/data/datasource/pokemon_details_datasource.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/pokemon_detail_entity.dart';
import 'package:pokedex_global/features/pokemon_details/domain/repository/pokemon_details_repository.dart';

/// {@template pokemon_details_repository_impl}
/// A implementation of the pokemon details repository.
/// {@endtemplate}
class PokemonDetailsRepositoryImpl implements PokemonDetailsRepository {
  /// The datasource of the pokemon details repository.
  final PokemonDetailsDatasource pokemonDetailsDatasource;

  /// The app talker.
  final AppTalker appTalker;

  /// The error handler for managing exceptions.
  final ErrorHandler errorHandler;

  /// {@macro pokemon_details_repository_impl}
  PokemonDetailsRepositoryImpl({
    required this.pokemonDetailsDatasource,
    required this.appTalker,
    required this.errorHandler,
  });

  @override
  Future<PokemonDetailEntity> getPokemonDetail({required String idOrName}) async {
    try {
      final pokemonDetail =
          await pokemonDetailsDatasource.getPokemonDetail(idOrName: idOrName);

      final pokemonSpecies =
          await pokemonDetailsDatasource.getPokemonSpecies(name: idOrName);

      final weaknesses = <String>{};
      for (final type in pokemonDetail.types) {
        final data = await pokemonDetailsDatasource.getPokemonType(
            typeName: type.type.name);
        final doubleDamage =
            (data['damage_relations']['double_damage_from'] as List)
                .map((e) => e['name'] as String);
        weaknesses.addAll(doubleDamage);
      }

      final pokemonDetailEntity = PokemonDetailEntity.fromModels(
        detail: pokemonDetail,
        species: pokemonSpecies,
        weaknesses: weaknesses.toList(),
      );
      appTalker.info(
          'Pokemon detail fetched successfully: ${pokemonDetailEntity.name}');
      return pokemonDetailEntity;
    } catch (e, stackTrace) {
      throw errorHandler.handleError(
        e,
        stackTrace,
        context: 'Fetching pokemon details for: $idOrName',
      );
    }
  }
}
