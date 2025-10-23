import 'package:pokedex_global/core/local_db/domain/entities/user_settings_entity.dart';
import 'package:pokedex_global/core/local_db/providers/di/database_providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_settings_providers.g.dart';

/// {@template user_settings_provider}
/// Provider that fetches the current user settings.
/// This will be refreshed when the app starts and can be manually refreshed.
/// {@endtemplate}
@riverpod
Future<UserSettingsEntity> userSettings(Ref ref) async {
  final repository = ref.watch(localStorageRepositoryProvider);

  final settings = await repository.getUserSettings();

  return settings;
}

/// {@template has_seen_onboarding_provider}
/// Provider that checks if the user has seen the onboarding.
/// This is useful for navigation logic.
/// {@endtemplate}
@riverpod
Future<bool> hasSeenOnboarding(Ref ref) async {
  final settings = await ref.watch(userSettingsProvider.future);
  return settings.hasSeenOnboarding;
}

/// {@template set_has_seen_onboarding_provider}
/// Provider that sets whether the user has seen the onboarding.
/// {@endtemplate}
@riverpod
Future<void> setHasSeenOnboarding(
  Ref ref,
  bool value,
) async {
  final repository = ref.watch(localStorageRepositoryProvider);

  await repository.setHasSeenOnboarding(value);

  // Invalidate the user settings to trigger a refresh
  ref.invalidate(userSettingsProvider);
}

/// {@template set_dark_mode_provider}
/// Provider that sets the dark mode preference.
/// {@endtemplate}
@riverpod
Future<void> setDarkMode(Ref ref, bool value) async {
  final repository = ref.watch(localStorageRepositoryProvider);

  await repository.setDarkMode(value);

  // Invalidate the user settings to trigger a refresh
  ref.invalidate(userSettingsProvider);
}
