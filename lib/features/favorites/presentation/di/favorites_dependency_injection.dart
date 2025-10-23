import 'package:pokedex_global/core/errors/provider/error_handler_provider.dart';
import 'package:pokedex_global/core/logging/logs/provider/logs_provider.dart';
import 'package:pokedex_global/core/network/api_client.dart';
import 'package:pokedex_global/features/favorites/data/datasource/favorites_datasource.dart';
import 'package:pokedex_global/features/favorites/data/repository/favorite_repository_impl.dart';
import 'package:pokedex_global/features/favorites/domain/repository/favorites_repository.dart';
import 'package:pokedex_global/features/favorites/domain/usecases/usecases.dart';
import 'package:pokedex_global/features/pokemon_details/presentation/di/pokemon_details_dependency_injection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favorites_dependency_injection.g.dart';

/// {@template favorites_repository_provider}
/// Provider for the favorites repository.
/// {@endtemplate}
@riverpod
FavoritesRepository favoritesRepository(Ref ref) {
  return FavoritesRepositoryImpl(
    datasource: ref.watch(favoritesDatasourceProvider),
    appTalker: ref.watch(appTalkerProvider('favorites_repository')),
    errorHandler: ref.watch(errorHandlerProvider),
  );
}

/// {@template favorites_datasource_provider}
/// Provider for the favorites datasource.
/// {@endtemplate}
@riverpod
FavoritesDatasource favoritesDatasource(Ref ref) {
  return FavoritesDatasourceImpl(
      dio: ref.watch(apiClientProvider),
      getPokemonDetailUseCase: ref.watch(getPokemonDetailUseCaseProvider));
}

/// {@template get_all_favorites_use_case_provider}
/// Provider for the get all favorites use case.
/// {@endtemplate}
@riverpod
GetAllFavoritesUseCase getAllFavoritesUseCase(Ref ref) {
  return GetAllFavoritesUseCase(
    repository: ref.watch(favoritesRepositoryProvider),
  );
}
