import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_settings_entity.freezed.dart';
part 'user_settings_entity.g.dart';

/// {@template user_settings_entity}
/// Represents user settings and preferences.
/// This entity is independent of the storage implementation.
/// {@endtemplate}
@freezed
abstract class UserSettingsEntity with _$UserSettingsEntity {
  /// {@macro user_settings_entity}
  const factory UserSettingsEntity({
    required bool hasSeenOnboarding,
    @Default(false) bool darkMode,
  }) = _UserSettingsEntity;

  /// Creates a [UserSettingsEntity] from a JSON object.
  factory UserSettingsEntity.fromJson(Map<String, dynamic> json) =>
      _$UserSettingsEntityFromJson(json);
}
