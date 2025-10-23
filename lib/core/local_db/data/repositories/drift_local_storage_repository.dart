import 'package:pokedex_global/core/local_db/app_database.dart';
import 'package:pokedex_global/core/local_db/domain/entities/user_settings_entity.dart';
import 'package:pokedex_global/core/local_db/domain/repositories/local_storage_repository.dart';

/// {@template drift_local_storage_repository}
/// A repository that contains the methods to manage the local storage.
/// {@endtemplate}
class DriftLocalStorageRepository implements LocalStorageRepository {
  /// {@macro drift_local_storage_repository}
  const DriftLocalStorageRepository(this._database);

  final AppDatabase _database;

  @override
  Future<UserSettingsEntity> getUserSettings() async {
    try {
      final settings = await _database.userSettingsDao.getSettings();

      final entity = UserSettingsEntity(
        hasSeenOnboarding: settings.hasSeenOnboarding,
        darkMode: settings.darkMode,
      );

      return entity;
    } catch (e) {
      throw Exception('Failed to get user settings: $e');
    }
  }

  @override
  Future<bool> setHasSeenOnboarding(bool value) async {
    try {
      final result =
          await _database.userSettingsDao.setHasSeenOnboarding(value);
      return result;
    } catch (e) {
      throw Exception('Failed to set hasSeenOnboarding: $e');
    }
  }

  @override
  Future<bool> setDarkMode(bool value) async {
    try {
      final result = await _database.userSettingsDao.setDarkMode(value);
      return result;
    } catch (e) {
      throw Exception('Failed to set dark mode: $e');
    }
  }

  @override
  Future<void> clearSettings() async {
    try {
      await _database.userSettingsDao.clearSettings();
    } catch (e) {
      throw Exception('Failed to clear settings: $e');
    }
  }

  @override
  Future<bool> isDarkMode() async {
    try {
      final result = await _database.userSettingsDao
          .getSettings()
          .then((value) => value.darkMode);
      return result;
    } catch (e) {
      throw Exception('Failed to check if dark mode: $e');
    }
  }
}
