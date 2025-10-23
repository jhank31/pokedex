import 'package:pokedex_global/features/pokemon_details/domain/entities/entities.dart';

/// {@template favorites_repository}
/// A repository that contains the methods to get the favorites.
/// {@endtemplate}
abstract interface class FavoritesRepository {
  /// Get all favorites.
  Future<List<PokemonDetailEntity>> getAllFavorites(
      {required List<int> pokemonIds});
}
