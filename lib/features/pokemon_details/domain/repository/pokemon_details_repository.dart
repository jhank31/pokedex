import 'package:pokedex_global/features/pokemon_details/domain/entities/entities.dart';

/// {@template pokemon_details_repository}
/// A repository that contains the methods to get the pokemon details.
/// {@endtemplate}
abstract interface class PokemonDetailsRepository { 
  Future<PokemonDetailEntity> getPokemonDetail({required String idOrName});
}