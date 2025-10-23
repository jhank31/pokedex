import 'package:drift/drift.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pokedex_global/core/local_db/daos/favorites_dao.dart';
import 'package:pokedex_global/core/local_db/daos/user_settings_dao.dart';
import 'package:pokedex_global/core/local_db/tables/pokemon_favorites.dart';
import 'package:pokedex_global/core/local_db/tables/user_setting.dart';
import 'package:drift_flutter/drift_flutter.dart';

part 'app_database.g.dart';

/// {@template app_database}
/// The main database class for the application.
/// This class manages all database tables and DAOs.
/// {@endtemplate}
@DriftDatabase(
  tables: [
    UserSettings,
    PokemonFavorites,
  ],
  daos: [
    UserSettingsDao,
    FavoritesDao,
  ],
)
class AppDatabase extends _$AppDatabase {
  /// {@macro app_database}
  AppDatabase() : super(_openConnection());

  /// Database schema version.
  /// Increment this when you make changes to the schema.
  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'my_database',
      native: const DriftNativeOptions(
        databaseDirectory: getApplicationSupportDirectory,
      ),
    );
  }
}
