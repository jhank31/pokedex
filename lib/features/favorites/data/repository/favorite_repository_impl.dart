import 'package:pokedex_global/core/errors/handler/error_handler.dart';
import 'package:pokedex_global/core/logging/logs/app_talker.dart';
import 'package:pokedex_global/features/favorites/data/datasource/favorites_datasource.dart';
import 'package:pokedex_global/features/favorites/domain/repository/favorites_repository.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/pokemon_detail_entity.dart';

/// {@template favorites_repository_impl}
/// A implementation of the favorite repository.
/// {@endtemplate}
class FavoritesRepositoryImpl implements FavoritesRepository {
  /// The datasource of the favorite repository.
  final FavoritesDatasource datasource;

  final AppTalker appTalker;

  final ErrorHandler errorHandler;

  /// {@macro favorite_repository_impl}
  FavoritesRepositoryImpl(
      {required this.datasource,
      required this.appTalker,
      required this.errorHandler});

  @override
  Future<List<PokemonDetailEntity>> getAllFavorites(
      {required List<int> pokemonIds}) async {
    try {
      final favorites =
          await datasource.getAllFavorites(pokemonIds: pokemonIds);
      appTalker.info('Favorites fetched successfully: ${favorites.length}');
      return favorites;
    } catch (e, stackTrace) {
      appTalker.error(e.toString());
      throw errorHandler.handleError(
        e,
        stackTrace,
        context: 'Fetching favorites for pokemon ids: $pokemonIds',
      );
    }
  }
}
