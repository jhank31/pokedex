import 'package:pokedex_global/core/local_db/domain/entities/user_settings_entity.dart';

/// {@template local_storage_repository}
/// A repository that contains the methods to manage the local storage.
/// {@endtemplate}
abstract class LocalStorageRepository {
  /// Gets the current user settings.
  Future<UserSettingsEntity> getUserSettings();

  /// Updates whether the user has seen the onboarding.
  Future<bool> setHasSeenOnboarding(bool value);

  /// Updates the dark mode preference.
  Future<bool> setDarkMode(bool value);

  /// Gets the dark mode preference.
  Future<bool> isDarkMode();

  /// Clears all user settings (useful for logout or reset).
  Future<void> clearSettings();
}
