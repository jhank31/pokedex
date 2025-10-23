import 'package:pokedex_global/core/utils/usecases/usecases.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/entities.dart';
import 'package:pokedex_global/features/pokemon_details/domain/repository/pokemon_details_repository.dart';

/// {@template get_pokemon_detail_use_case}
/// A use case that represents the get pokemon detail use case.
/// {@endtemplate}
class GetPokemonDetailUseCase
    implements UseCase<PokemonDetailEntity, GetPokemonDetailParams> {
  /// The repository of the get pokemon detail use case.
  final PokemonDetailsRepository repository;

  /// {@macro get_pokemon_detail_use_case}
  GetPokemonDetailUseCase({required this.repository});

  @override
  Future<PokemonDetailEntity> call(GetPokemonDetailParams params) async {
    return await repository.getPokemonDetail(idOrName: params.idOrName);
  }
}

/// {@template get_pokemon_detail_params}
/// A class that represents the parameters for the get pokemon detail use case.
/// {@endtemplate}
class GetPokemonDetailParams {
  /// The name of the pokemon.
  final String idOrName;

  /// {@macro get_pokemon_detail_params}
  GetPokemonDetailParams({required this.idOrName});
}
