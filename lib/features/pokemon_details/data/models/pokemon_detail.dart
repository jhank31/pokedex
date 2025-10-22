// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_detail.freezed.dart';
part 'pokemon_detail.g.dart';

/// {@template pokemon_detail}
/// A model that represents the detail of a pokemon.
/// {@endtemplate}
@freezed
abstract class PokemonDetail with _$PokemonDetail {
  ///{@macro pokemon_detail}
  const factory PokemonDetail({
    /// The id of the pokemon.
    required int id,

    /// The Pokemon name.
    required String name,

    /// The height of the pokemon.
    required int height,

    /// The weight of the pokemon.
    required int weight,

    /// The types of the pokemon.
    required List<PokemonTypeSlot> types,

    /// The sprites of the pokemon.
    required PokemonSprites sprites,

    /// The abilities of the pokemon.
    required List<PokemonAbilitySlot> abilities,
  }) = _PokemonDetail;

  ///{@macro pokemon_detail}
  factory PokemonDetail.fromJson(Map<String, dynamic> json) =>
      _$PokemonDetailFromJson(json);
}

/// {@template pokemon_type_slot}
/// A model that represents the type slot of a pokemon.
/// {@endtemplate}
@freezed
abstract class PokemonTypeSlot with _$PokemonTypeSlot {
  ///{@macro pokemon_type_slot}
  const factory PokemonTypeSlot({
    /// The slot of the pokemon type.
    required int slot,

    /// The type of the pokemon.
    required PokemonType type,
  }) = _PokemonTypeSlot;

  ///{@macro pokemon_type_slot}
  factory PokemonTypeSlot.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeSlotFromJson(json);
}

/// {@template pokemon_type}
/// A model that represents the type of a pokemon.
/// {@endtemplate}
@freezed
abstract class PokemonType with _$PokemonType {
  ///{@macro pokemon_type}
  const factory PokemonType({
    /// The name of the pokemon type.
    required String name,

    /// The url of the pokemon type.
    required String url,
  }) = _PokemonType;

  ///{@macro pokemon_type}
  factory PokemonType.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeFromJson(json);
}

/// {@template pokemon_ability_slot}
/// A model that represents the ability slot of a pokemon.
/// {@endtemplate}
@freezed
abstract class PokemonAbilitySlot with _$PokemonAbilitySlot {
  ///{@macro pokemon_ability_slot}
  const factory PokemonAbilitySlot({
    /// The is hidden of the pokemon ability.
    bool? isHidden,

    /// The slot of the pokemon ability.
    required int slot,

    /// The ability of the pokemon.
    required PokemonAbility ability,
  }) = _PokemonAbilitySlot;

  ///{@macro pokemon_ability_slot}
  factory PokemonAbilitySlot.fromJson(Map<String, dynamic> json) =>
      _$PokemonAbilitySlotFromJson(json);
}

/// {@template pokemon_ability}
/// A model that represents the ability of a pokemon.
/// {@endtemplate}
@freezed
abstract class PokemonAbility with _$PokemonAbility {
  ///{@macro pokemon_ability}
  const factory PokemonAbility({
    /// The name of the pokemon ability.
    required String name,

    /// The url of the pokemon ability.
    required String url,
  }) = _PokemonAbility;

  ///{@macro pokemon_ability}
  factory PokemonAbility.fromJson(Map<String, dynamic> json) =>
      _$PokemonAbilityFromJson(json);
}

/// {@template pokemon_sprites}
/// A model that represents the sprites of a pokemon.
/// {@endtemplate}
@freezed
abstract class PokemonSprites with _$PokemonSprites {
  ///{@macro pokemon_sprites}
  const factory PokemonSprites({
    /// The front default sprite of the pokemon.
    @JsonKey(name: 'front_default') String? frontDefault,

    /// The back default sprite of the pokemon.
    @JsonKey(name: 'back_default') String? backDefault,

    /// The other sprites of the pokemon.
    PokemonSpritesOther? other,
  }) = _PokemonSprites;

  ///{@macro pokemon_sprites}
  factory PokemonSprites.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpritesFromJson(json);
}

/// {@template pokemon_sprites_other}
/// A model that represents the other sprites of a pokemon.
/// {@endtemplate}
@freezed
abstract class PokemonSpritesOther with _$PokemonSpritesOther {
  ///{@macro pokemon_sprites_other}
  const factory PokemonSpritesOther({
    /// The official artwork sprite of the pokemon.
    PokemonOfficialArtwork? officialArtwork,
  }) = _PokemonSpritesOther;

  ///{@macro pokemon_sprites_other}
  factory PokemonSpritesOther.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpritesOtherFromJson(json);
}

/// {@template pokemon_official_artwork}
/// A model that represents the official artwork of a pokemon.
/// {@endtemplate}
@freezed
abstract class PokemonOfficialArtwork with _$PokemonOfficialArtwork {
  ///{@macro pokemon_official_artwork}
  const factory PokemonOfficialArtwork({
    /// The front default sprite of the pokemon.
    String? frontDefault,
  }) = _PokemonOfficialArtwork;

  ///{@macro pokemon_official_artwork}
  factory PokemonOfficialArtwork.fromJson(Map<String, dynamic> json) =>
      _$PokemonOfficialArtworkFromJson(json);
}
