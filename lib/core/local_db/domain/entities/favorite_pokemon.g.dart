// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorite_pokemon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_FavoritePokemon _$FavoritePokemonFromJson(Map<String, dynamic> json) =>
    _FavoritePokemon(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      imageUrl: json['imageUrl'] as String,
      addedAt: DateTime.parse(json['addedAt'] as String),
    );

Map<String, dynamic> _$FavoritePokemonToJson(_FavoritePokemon instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'imageUrl': instance.imageUrl,
      'addedAt': instance.addedAt.toIso8601String(),
    };
