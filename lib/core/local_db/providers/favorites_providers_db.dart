import 'package:pokedex_global/core/local_db/domain/entities/favorite_pokemon.dart';
import 'package:pokedex_global/core/local_db/providers/di/database_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorites_providers_db.g.dart';

/// {@template all_favorites_provider}
/// Provider that fetches all favorite Pokemon.
/// This returns a Future for one-time fetches.
/// {@endtemplate}
@riverpod
Future<List<FavoritePokemon>> allFavorites(Ref ref) async {
  final repository = ref.watch(favoritesRepositoryDbProvider);

  final favorites = await repository.getAllFavorites();

  return favorites;
}

/// {@template watch_favorites_provider}
/// Provider that watches all favorite Pokemon.
/// This returns a Stream that updates in real-time when favorites change.
/// {@endtemplate}
@Riverpod(keepAlive: true)
Stream<List<FavoritePokemon>> watchFavorites(Ref ref) {
  final repository = ref.watch(favoritesRepositoryDbProvider);
  return repository.watchFavorites();
}

/// {@template is_favorite_provider}
/// Provider that checks if a Pokemon is a favorite.
/// This returns a Future for one-time checks.
/// {@endtemplate}
@riverpod
Future<bool> isFavorite(Ref ref, int pokemonId) async {
  final repository = ref.watch(favoritesRepositoryDbProvider);

  final isFavResult = await repository.isFavorite(pokemonId);

  return isFavResult;
}

/// {@template watch_is_favorite_provider}
/// Provider that watches if a Pokemon is a favorite.
/// This returns a Stream that updates in real-time.
/// {@endtemplate}
@riverpod
Stream<bool> watchIsFavorite(Ref ref, int pokemonId) {
  final repository = ref.watch(favoritesRepositoryDbProvider);
  return repository.watchIsFavorite(pokemonId);
}

/// {@template toggle_favorite_provider}
/// Provider that toggles a Pokemon's favorite status.
/// The stream providers (watchFavorites, watchIsFavorite) will automatically
/// update due to Drift's reactive queries.
/// {@endtemplate}
@riverpod
Future<void> toggleFavorite(
  Ref ref, {
  required int pokemonId,
  required String name,
  required String imageUrl,
}) async {
  final repository = ref.watch(favoritesRepositoryDbProvider);

  // Check if already favorite
  final isFavResult = await repository.isFavorite(pokemonId);

  if (isFavResult) {
    // Remove from favorites
    await repository.removeFavorite(pokemonId);
  } else {
    // Add to favorites
    await repository.addFavorite(
      pokemonId: pokemonId,
      name: name,
      imageUrl: imageUrl,
    );
  }
}
