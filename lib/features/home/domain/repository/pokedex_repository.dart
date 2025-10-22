import 'package:pokedex_global/features/pokemon_details/domain/entities/entities.dart';

/// {@template pokedex_repository}
/// A repository that contains the methods to get the pokemons.
/// {@endtemplate}
abstract interface class PokedexRepository {
   /// get the pokemon list
  Future<List<PokemonDetailEntity>> getPokemonList({
    required int limit,
    required int offset,
  });

}