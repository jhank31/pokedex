import 'package:drift/drift.dart';
import 'package:pokedex_global/core/local_db/app_database.dart';
import 'package:pokedex_global/core/local_db/tables/pokemon_favorites.dart';

part 'favorites_dao.g.dart';

/// {@template favorites_dao}
/// A DAO that contains the methods to manage the favorites.
/// {@endtemplate}
@DriftAccessor(tables: [PokemonFavorites])
class FavoritesDao extends DatabaseAccessor<AppDatabase>
    with _$FavoritesDaoMixin {
  /// {@macro favorites_dao}
  FavoritesDao(super.db);

  /// Gets all favorite Pokemon ordered by when they were added (newest first).
  Future<List<PokemonFavorite>> getAllFavorites() {
    return (select(pokemonFavorites)
          ..orderBy([
            (t) => OrderingTerm(
                  expression: t.addedAt,
                  mode: OrderingMode.desc,
                ),
          ]))
        .get();
  }

  /// Checks if a Pokemon is marked as favorite.
  Future<bool> isFavorite(int pokemonId) async {
    final query = select(pokemonFavorites)
      ..where((t) => t.pokemonId.equals(pokemonId));
    final result = await query.getSingleOrNull();
    return result != null;
  }

  /// Adds a Pokemon to favorites.
  Future<void> addFavorite({
    required int pokemonId,
    required String name,
    required String imageUrl,
  }) {
    return into(pokemonFavorites).insert(
      PokemonFavoritesCompanion.insert(
        pokemonId: Value(pokemonId),
        name: name,
        imageUrl: imageUrl,
        addedAt: DateTime.now(),
      ),
      mode: InsertMode.insertOrReplace,
    );
  }

  /// Removes a Pokemon from favorites.
  Future<int> removeFavorite(int pokemonId) {
    return (delete(pokemonFavorites)
          ..where((t) => t.pokemonId.equals(pokemonId)))
        .go();
  }

  /// Removes all favorites.
  Future<int> clearAllFavorites() {
    return delete(pokemonFavorites).go();
  }


  /// Stream that emits the list of favorite Pokemon whenever it changes.
  Stream<List<PokemonFavorite>> watchAllFavorites() {
    return (select(pokemonFavorites)
          ..orderBy([
            (t) => OrderingTerm(
                  expression: t.addedAt,
                  mode: OrderingMode.desc,
                ),
          ]))
        .watch();
  }

  /// Stream that emits whether a specific Pokemon is a favorite.
  Stream<bool> watchIsFavorite(int pokemonId) {
    final query = select(pokemonFavorites)
      ..where((t) => t.pokemonId.equals(pokemonId));

    return query.watchSingleOrNull().map((favorite) => favorite != null);
  }
  
}
