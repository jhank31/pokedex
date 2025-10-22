import 'package:pokedex_global/features/pokemon_details/data/datasource/pokemon_details_datasource.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/pokemon_detail_entity.dart';
import 'package:pokedex_global/features/pokemon_details/domain/repository/pokemon_details_repository.dart';

/// {@template pokemon_details_repository_impl}
/// A implementation of the pokemon details repository.
/// {@endtemplate}
class PokemonDetailsRepositoryImpl implements PokemonDetailsRepository {
  /// The datasource of the pokemon details repository.
  final PokemonDetailsDatasource pokemonDetailsDatasource;

  /// {@macro pokemon_details_repository_impl}

  PokemonDetailsRepositoryImpl({required this.pokemonDetailsDatasource});

  @override
  Future<PokemonDetailEntity> getPokemonDetail({required String name}) async {
    try {
      final pokemonDetail =
          await pokemonDetailsDatasource.getPokemonDetail(name: name);

      final pokemonSpecies =
          await pokemonDetailsDatasource.getPokemonSpecies(name: name);

      final weaknesses = <String>{};
      for (final type in pokemonDetail.types) {
        final data = await pokemonDetailsDatasource.getPokemonType(
            typeName: type.type.name);
        final doubleDamage =
            (data['damage_relations']['double_damage_from'] as List)
                .map((e) => e['name'] as String);
        weaknesses.addAll(doubleDamage);
      }

      return PokemonDetailEntity.fromModels(
        detail: pokemonDetail,
        species: pokemonSpecies,
        weaknesses: weaknesses.toList(),
      );
    } catch (e, stackTrace) {
      // Preservar el error original y el stack trace
      Error.throwWithStackTrace(
        Exception('Error fetching pokemon details: ${e.toString()}'),
        stackTrace,
      );
    }
  }
}
