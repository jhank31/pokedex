// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_detail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PokemonDetail _$PokemonDetailFromJson(Map<String, dynamic> json) =>
    _PokemonDetail(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      height: (json['height'] as num).toInt(),
      weight: (json['weight'] as num).toInt(),
      types: (json['types'] as List<dynamic>)
          .map((e) => PokemonTypeSlot.fromJson(e as Map<String, dynamic>))
          .toList(),
      sprites: PokemonSprites.fromJson(json['sprites'] as Map<String, dynamic>),
      abilities: (json['abilities'] as List<dynamic>)
          .map((e) => PokemonAbilitySlot.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$PokemonDetailToJson(_PokemonDetail instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'height': instance.height,
      'weight': instance.weight,
      'types': instance.types,
      'sprites': instance.sprites,
      'abilities': instance.abilities,
    };

_PokemonTypeSlot _$PokemonTypeSlotFromJson(Map<String, dynamic> json) =>
    _PokemonTypeSlot(
      slot: (json['slot'] as num).toInt(),
      type: PokemonType.fromJson(json['type'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonTypeSlotToJson(_PokemonTypeSlot instance) =>
    <String, dynamic>{
      'slot': instance.slot,
      'type': instance.type,
    };

_PokemonType _$PokemonTypeFromJson(Map<String, dynamic> json) => _PokemonType(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$PokemonTypeToJson(_PokemonType instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_PokemonAbilitySlot _$PokemonAbilitySlotFromJson(Map<String, dynamic> json) =>
    _PokemonAbilitySlot(
      isHidden: json['isHidden'] as bool?,
      slot: (json['slot'] as num).toInt(),
      ability: PokemonAbility.fromJson(json['ability'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonAbilitySlotToJson(_PokemonAbilitySlot instance) =>
    <String, dynamic>{
      'isHidden': instance.isHidden,
      'slot': instance.slot,
      'ability': instance.ability,
    };

_PokemonAbility _$PokemonAbilityFromJson(Map<String, dynamic> json) =>
    _PokemonAbility(
      name: json['name'] as String,
      url: json['url'] as String,
    );

Map<String, dynamic> _$PokemonAbilityToJson(_PokemonAbility instance) =>
    <String, dynamic>{
      'name': instance.name,
      'url': instance.url,
    };

_PokemonSprites _$PokemonSpritesFromJson(Map<String, dynamic> json) =>
    _PokemonSprites(
      frontDefault: json['front_default'] as String?,
      backDefault: json['back_default'] as String?,
      other: json['other'] == null
          ? null
          : PokemonSpritesOther.fromJson(json['other'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonSpritesToJson(_PokemonSprites instance) =>
    <String, dynamic>{
      'front_default': instance.frontDefault,
      'back_default': instance.backDefault,
      'other': instance.other,
    };

_PokemonSpritesOther _$PokemonSpritesOtherFromJson(Map<String, dynamic> json) =>
    _PokemonSpritesOther(
      officialArtwork: json['officialArtwork'] == null
          ? null
          : PokemonOfficialArtwork.fromJson(
              json['officialArtwork'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PokemonSpritesOtherToJson(
        _PokemonSpritesOther instance) =>
    <String, dynamic>{
      'officialArtwork': instance.officialArtwork,
    };

_PokemonOfficialArtwork _$PokemonOfficialArtworkFromJson(
        Map<String, dynamic> json) =>
    _PokemonOfficialArtwork(
      frontDefault: json['frontDefault'] as String?,
    );

Map<String, dynamic> _$PokemonOfficialArtworkToJson(
        _PokemonOfficialArtwork instance) =>
    <String, dynamic>{
      'frontDefault': instance.frontDefault,
    };
