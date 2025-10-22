
import 'package:pokedex_global/features/pokemon_details/data/models/pokemon_detail.dart';

/// {@template pokemon_type_entity}
/// An entity that represents the type of a pokemon.
/// {@endtemplate}
class PokemonTypeEntity {
  /// {@macro pokemon_type_entity}
  const PokemonTypeEntity({
    required this.name,
    required this.url,
  });

  /// The name of the pokemon type.
  final String name;

  /// The url of the pokemon type.
  final String url;

  /// Creates a copy of this entity with the given fields replaced with new values.
  PokemonTypeEntity copyWith({
    String? name,
    String? url,
  }) {
    return PokemonTypeEntity(
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }

  /// Converts this entity to a model.
  PokemonType toModel() {
    return PokemonType(
      name: name,
      url: url,
    );
  }

  /// Creates an entity from a model.
  factory PokemonTypeEntity.fromModel(PokemonType model) {
    return PokemonTypeEntity(
      name: model.name,
      url: model.url,
    );
  }

 
}
