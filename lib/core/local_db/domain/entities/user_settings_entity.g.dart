// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_settings_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_UserSettingsEntity _$UserSettingsEntityFromJson(Map<String, dynamic> json) =>
    _UserSettingsEntity(
      hasSeenOnboarding: json['hasSeenOnboarding'] as bool,
      darkMode: json['darkMode'] as bool? ?? false,
    );

Map<String, dynamic> _$UserSettingsEntityToJson(_UserSettingsEntity instance) =>
    <String, dynamic>{
      'hasSeenOnboarding': instance.hasSeenOnboarding,
      'darkMode': instance.darkMode,
    };
