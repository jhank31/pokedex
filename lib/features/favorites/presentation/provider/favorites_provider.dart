import 'package:pokedex_global/core/local_db/domain/entities/favorite_pokemon.dart';
import 'package:pokedex_global/core/local_db/providers/di/database_providers.dart';
import 'package:pokedex_global/features/favorites/domain/usecases/usecases.dart';
import 'package:pokedex_global/features/favorites/presentation/di/favorites_dependency_injection.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/entities.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorites_provider.g.dart';

/// {@template all_favorites_provider}
/// Provider for the all favorites.
/// Watches the favorites from the database and fetches their details from the API.
/// Updates automatically when favorites change in the database.
/// {@endtemplate}
@riverpod
Stream<List<PokemonDetailEntity>> getAllFavoritesFromApi(Ref ref) async* {
  // we call the use case to get all the favorite pokemon details
  final getAllFavoritesUseCase = ref.watch(getAllFavoritesUseCaseProvider);

  // we get the database repository to watch favorites
  final repository = ref.watch(favoritesRepositoryDbProvider);

  // we listen to changes in favorites and fetch details for each update
  await for (final List<FavoritePokemon> favoritePokemonIds
      in repository.watchFavorites()) {
    try {
      if (favoritePokemonIds.isEmpty) {
        yield [];
      } else {
        final pokemonDetails = await getAllFavoritesUseCase.call(
          GetAllFavoritesParams(
            pokemonIds: favoritePokemonIds.map((e) => e.id).toList(),
          ),
        );
        yield pokemonDetails;
      }
    } catch (e, stackTrace) {
      Error.throwWithStackTrace(e, stackTrace);
    }
  }
}
