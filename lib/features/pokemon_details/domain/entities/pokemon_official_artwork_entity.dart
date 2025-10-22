import 'package:pokedex_global/features/pokemon_details/data/models/pokemon_detail.dart';

/// {@template pokemon_official_artwork_entity}
/// An entity that represents the official artwork of a pokemon.
/// {@endtemplate}
class PokemonOfficialArtworkEntity {
  /// {@macro pokemon_official_artwork_entity}
  const PokemonOfficialArtworkEntity({
    this.frontDefault,
  });

  /// The front default sprite of the pokemon.
  final String? frontDefault;

  /// Creates a copy of this entity with the given fields replaced with new values.
  PokemonOfficialArtworkEntity copyWith({
    String? frontDefault,
  }) {
    return PokemonOfficialArtworkEntity(
      frontDefault: frontDefault ?? this.frontDefault,
    );
  }

  /// Converts this entity to a model.
  PokemonOfficialArtwork toModel() {
    return PokemonOfficialArtwork(
      frontDefault: frontDefault,
    );
  }

  /// Creates an entity from a model.
  factory PokemonOfficialArtworkEntity.fromModel(PokemonOfficialArtwork model) {
    return PokemonOfficialArtworkEntity(
      frontDefault: model.frontDefault,
    );
  }

 
}
