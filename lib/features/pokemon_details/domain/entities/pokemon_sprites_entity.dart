
import 'package:pokedex_global/features/pokemon_details/data/models/pokemon_detail.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/entities.dart';

/// {@template pokemon_sprites_entity}
/// An entity that represents the sprites of a pokemon.
/// {@endtemplate}
class PokemonSpritesEntity {
  /// {@macro pokemon_sprites_entity}
  const PokemonSpritesEntity({
    this.frontDefault,
    this.backDefault,
    this.other,
  });

  /// The front default sprite of the pokemon.
  final String? frontDefault;

  /// The back default sprite of the pokemon.
  final String? backDefault;

  /// The other sprites of the pokemon.
  final PokemonSpritesOtherEntity? other;

  /// Creates a copy of this entity with the given fields replaced with new values.
  PokemonSpritesEntity copyWith({
    String? frontDefault,
    String? backDefault,
    PokemonSpritesOtherEntity? other,
  }) {
    return PokemonSpritesEntity(
      frontDefault: frontDefault ?? this.frontDefault,
      backDefault: backDefault ?? this.backDefault,
      other: other ?? this.other,
    );
  }

  /// Converts this entity to a model.
  PokemonSprites toModel() {
    return PokemonSprites(
      frontDefault: frontDefault,
      backDefault: backDefault,
      other: other?.toModel(),
    );
  }

  /// Creates an entity from a model.
  factory PokemonSpritesEntity.fromModel(PokemonSprites model) {
    return PokemonSpritesEntity(
      frontDefault: model.frontDefault,
      backDefault: model.backDefault,
      other: model.other != null
          ? PokemonSpritesOtherEntity.fromModel(model.other!)
          : null,
    );
  }

 
}
