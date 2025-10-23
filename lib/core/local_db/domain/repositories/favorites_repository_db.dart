import 'package:pokedex_global/core/local_db/domain/entities/favorite_pokemon.dart';

/// {@template favorites_repository}
/// A repository that contains the methods to manage the favorites.
/// {@endtemplate}
abstract class FavoritesRepositoryDb {
  /// Gets all favorite Pokemon.
  Future<List<FavoritePokemon>> getAllFavorites();

  /// Checks if a Pokemon is marked as favorite.
  Future<bool> isFavorite(int pokemonId);

  /// Adds a Pokemon to favorites.
  Future<void> addFavorite({
    required int pokemonId,
    required String name,
    required String imageUrl,
  });

  /// Removes a Pokemon from favorites.
  Future<void> removeFavorite(int pokemonId);

  /// Removes all favorites (useful for reset).
  Future<void> clearAllFavorites();

  /// Stream that emits the list of favorite Pokemon whenever it changes.
  /// This allows the UI to react to changes in real-time.
  Stream<List<FavoritePokemon>> watchFavorites();

  /// Stream that emits whether a specific Pokemon is a favorite.
  /// This allows the UI to react to changes for a specific Pokemon.
  Stream<bool> watchIsFavorite(int pokemonId);
}
