import 'package:drift/drift.dart';
import 'package:pokedex_global/core/local_db/app_database.dart';
import 'package:pokedex_global/core/local_db/tables/user_setting.dart';

part 'user_settings_dao.g.dart';

/// {@template user_settings_dao}
/// Data Access Object for managing user settings in the database.
/// This DAO provides methods to perform operations on user settings.
/// {@endtemplate}
@DriftAccessor(tables: [UserSettings])
class UserSettingsDao extends DatabaseAccessor<AppDatabase>
    with _$UserSettingsDaoMixin {
  /// {@macro user_settings_dao}
  UserSettingsDao(super.db);

  /// Gets the user settings. Creates default settings if none exist.
  Future<UserSetting> getSettings() async {
    final settings = await select(userSettings).getSingleOrNull();

    if (settings == null) {
      // Create default settings if none exist
      await into(userSettings).insert(
        const UserSettingsCompanion(
          hasSeenOnboarding: Value(false),
          darkMode: Value(false),
        ),
      );
      return getSettings();
    }

    return settings;
  }

  /// Updates whether the user has seen the onboarding.
  Future<bool> setHasSeenOnboarding(bool value) async {
    final settings = await getSettings();
    await (update(userSettings)..where((t) => t.id.equals(settings.id))).write(
      UserSettingsCompanion(
        hasSeenOnboarding: Value(value),
      ),
    );
    return true;
  }

  /// Updates the dark mode preference.
  Future<bool> setDarkMode(bool value) async {
    final settings = await getSettings();
    await (update(userSettings)..where((t) => t.id.equals(settings.id))).write(
      UserSettingsCompanion(
        darkMode: Value(value),
      ),
    );
    return true;
  }

  /// Clears all user settings.
  Future<void> clearSettings() async {
    await delete(userSettings).go();
  }

  /// Stream that emits user settings whenever they change.
  Stream<UserSetting?> watchSettings() {
    return select(userSettings).watchSingleOrNull();
  }
}
