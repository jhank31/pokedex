import 'package:pokedex_global/core/errors/handler/error_handler.dart';
import 'package:pokedex_global/core/local_db/app_database.dart';
import 'package:pokedex_global/core/local_db/domain/entities/favorite_pokemon.dart';
import 'package:pokedex_global/core/local_db/domain/repositories/favorites_repository_db.dart';
import 'package:pokedex_global/core/logging/logs/app_talker.dart';

/// {@template drift_favorites_repository}
/// A repository that contains the methods to manage the favorites.
/// {@endtemplate}
class DriftFavoritesRepository implements FavoritesRepositoryDb {
  /// {@macro drift_favorites_repository}
  const DriftFavoritesRepository(this._database,
      {required this.appTalker, required this.errorHandler});

  /// The app talker.
  final AppTalker appTalker;

  /// The error handler.
  final ErrorHandler errorHandler;

  /// The database.
  final AppDatabase _database;

  @override
  Future<List<FavoritePokemon>> getAllFavorites() async {
    try {
      final favorites = await _database.favoritesDao.getAllFavorites();

      final entities = favorites
          .map(
            (f) => FavoritePokemon(
              id: f.pokemonId,
              name: f.name,
              imageUrl: f.imageUrl,
              addedAt: f.addedAt,
            ),
          )
          .toList();

      appTalker.info(
          'Favorites fetched successfully from database: ${entities.length}');
      return entities;
    } catch (e, stackTrace) {
      appTalker.error('Failed to get favorites: $e');
      throw errorHandler.throwError(
        e,
        stackTrace,
        context: 'Getting favorites',
      );
    }
  }

  @override
  Future<bool> isFavorite(int pokemonId) async {
    try {
      final result = await _database.favoritesDao.isFavorite(pokemonId);
      appTalker.info('Favorite checked successfully from database: $result');
      return result;
    } catch (e, stackTrace) {
      appTalker.error('Failed to check if favorite: $e');
      throw errorHandler.throwError(
        e,
        stackTrace,
        context: 'Checking if favorite',
      );
    }
  }

  @override
  Future<void> addFavorite({
    required int pokemonId,
    required String name,
    required String imageUrl,
  }) async {
    try {
      await _database.favoritesDao.addFavorite(
        pokemonId: pokemonId,
        name: name,
        imageUrl: imageUrl,
      );
      appTalker.info('Favorite added successfully to database: $pokemonId');
    } catch (e, stackTrace) {
      appTalker.error('Failed to add favorite: $e');
      throw errorHandler.throwError(
        e,
        stackTrace,
        context: 'Adding favorite',
      );
    }
  }

  @override
  Future<void> removeFavorite(int pokemonId) async {
    try {
      await _database.favoritesDao.removeFavorite(pokemonId);
      appTalker.info('Favorite removed successfully from database: $pokemonId');
    } catch (e, stackTrace) {
      appTalker.error('Failed to remove favorite: $e');
      throw errorHandler.throwError(
        e,
        stackTrace,
        context: 'Removing favorite',
      );
    }
  }

  @override
  Future<void> clearAllFavorites() async {
    try {
      await _database.favoritesDao.clearAllFavorites();
      appTalker.info('Favorites cleared successfully from database');
    } catch (e, stackTrace) {
      appTalker.error('Failed to clear favorites: $e');
      throw errorHandler.throwError(
        e,
        stackTrace,
        context: 'Clearing favorites',
      );
    }
  }

  @override
  Stream<List<FavoritePokemon>> watchFavorites() {
    return _database.favoritesDao.watchAllFavorites().map(
          (favorites) => favorites
              .map(
                (f) => FavoritePokemon(
                  id: f.pokemonId,
                  name: f.name,
                  imageUrl: f.imageUrl,
                  addedAt: f.addedAt,
                ),
              )
              .toList(),
        );
  }

  @override
  Stream<bool> watchIsFavorite(int pokemonId) {
    return _database.favoritesDao.watchIsFavorite(pokemonId);
  }
}
