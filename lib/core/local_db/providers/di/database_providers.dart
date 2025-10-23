import 'package:pokedex_global/core/errors/provider/error_handler_provider.dart';
import 'package:pokedex_global/core/local_db/app_database.dart';
import 'package:pokedex_global/core/local_db/data/repositories/drift_favorites_repository.dart';
import 'package:pokedex_global/core/local_db/data/repositories/drift_local_storage_repository.dart';
import 'package:pokedex_global/core/local_db/domain/repositories/favorites_repository_db.dart';
import 'package:pokedex_global/core/local_db/domain/repositories/local_storage_repository.dart';
import 'package:pokedex_global/core/logging/logs/provider/logs_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'database_providers.g.dart';

/// {@template app_database_provider}
/// Provider for the application database instance.
/// This is a singleton that provides access to the database throughout the app.
/// {@endtemplate}
@Riverpod(keepAlive: true)
AppDatabase appDatabase(Ref ref) {
  return AppDatabase();
}

/// {@template local_storage_repository_provider}
/// Provider for the local storage repository.
/// This provides access to user settings and preferences.
/// {@endtemplate}
@Riverpod(keepAlive: true)
LocalStorageRepository localStorageRepository(
  Ref ref,
) {
  final database = ref.watch(appDatabaseProvider);
  return DriftLocalStorageRepository(database);
}

/// {@template favorites_repository_provider}
/// Provider for the favorites repository.
/// This provides access to favorite Pokemon management.
/// {@endtemplate}
@Riverpod(keepAlive: true)
FavoritesRepositoryDb favoritesRepositoryDb(Ref ref) {
  final database = ref.watch(appDatabaseProvider);
  return DriftFavoritesRepository(database,
      appTalker: ref.watch(appTalkerProvider('favorites_repository_db')),
      errorHandler: ref.watch(errorHandlerProvider));
}
