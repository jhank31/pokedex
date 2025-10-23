import 'package:drift/drift.dart';

/// {@template user_settings}
/// A table that stores the user settings.
/// {@endtemplate}
class UserSettings extends Table {
  /// Primary key.
  IntColumn get id => integer().autoIncrement()();

  /// Whether the user has seen the onboarding.
  BoolColumn get hasSeenOnboarding =>
      boolean().withDefault(const Constant(false))();

  /// Whether dark mode is enabled.
  BoolColumn get darkMode => boolean().withDefault(const Constant(false))();
}
