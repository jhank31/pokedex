import 'package:pokedex_global/core/utils/usecases/usecases.dart';
import 'package:pokedex_global/features/home/domain/entities/pokemon_list_response_entity.dart';
import 'package:pokedex_global/features/home/domain/repository/pokedex_repository.dart';

/// {@template get_pokemons_list_use_case}
/// A use case that represents the get pokemons list use case.
/// {@endtemplate}
class GetPokemonsListUseCase
    implements UseCase<PokemonListResponseEntity, GetPokemonsListParams> {
  /// The repository of the get pokemons list use case.
  final PokedexRepository repository;
  /// {@macro get_pokemons_list_use_case}
  const GetPokemonsListUseCase({required this.repository});

  @override
  Future<PokemonListResponseEntity> call(GetPokemonsListParams params) async {
    return await repository.getPokemonList(
        limit: params.limit, offset: params.offset);
  }
}

/// {@template get_pokemons_list_params}
/// A class that represents the parameters for the get pokemons list use case.
/// {@endtemplate}
class GetPokemonsListParams {
  /// The limit of the pokemon list.
  final int limit;
  /// The offset of the pokemon list.
  final int offset;

  /// {@macro get_pokemons_list_params}
  GetPokemonsListParams({required this.limit, required this.offset});
}
