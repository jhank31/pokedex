
import 'package:pokedex_global/features/pokemon_details/data/models/pokemon_detail.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/entities.dart';

/// {@template pokemon_sprites_other_entity}
/// An entity that represents the other sprites of a pokemon.
/// {@endtemplate}
class PokemonSpritesOtherEntity {
  /// {@macro pokemon_sprites_other_entity}
  const PokemonSpritesOtherEntity({
    this.officialArtwork,
  });

  /// The official artwork sprite of the pokemon.
  final PokemonOfficialArtworkEntity? officialArtwork;

  /// Creates a copy of this entity with the given fields replaced with new values.
  PokemonSpritesOtherEntity copyWith({
    PokemonOfficialArtworkEntity? officialArtwork,
  }) {
    return PokemonSpritesOtherEntity(
      officialArtwork: officialArtwork ?? this.officialArtwork,
    );
  }

  /// Converts this entity to a model.
  PokemonSpritesOther toModel() {
    return PokemonSpritesOther(
      officialArtwork: officialArtwork?.toModel(),
    );
  }

  /// Creates an entity from a model.
  factory PokemonSpritesOtherEntity.fromModel(PokemonSpritesOther model) {
    return PokemonSpritesOtherEntity(
      officialArtwork: model.officialArtwork != null
          ? PokemonOfficialArtworkEntity.fromModel(model.officialArtwork!)
          : null,
    );
  }

 
}
