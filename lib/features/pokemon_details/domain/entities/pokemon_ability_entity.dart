import 'package:pokedex_global/features/pokemon_details/data/models/pokemon_detail.dart';

/// {@template pokemon_ability_entity}
/// An entity that represents the ability of a pokemon.
/// {@endtemplate}
class PokemonAbilityEntity {
  /// {@macro pokemon_ability_entity}
  const PokemonAbilityEntity({
    required this.name,
    required this.url,
  });

  /// The name of the pokemon ability.
  final String name;

  /// The url of the pokemon ability.
  final String url;

  /// Creates a copy of this entity with the given fields replaced with new values.
  PokemonAbilityEntity copyWith({
    String? name,
    String? url,
  }) {
    return PokemonAbilityEntity(
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }

  /// Converts this entity to a model.
  PokemonAbility toModel() {
    return PokemonAbility(
      name: name,
      url: url,
    );
  }

  /// Creates an entity from a model.
  factory PokemonAbilityEntity.fromModel(PokemonAbility model) {
    return PokemonAbilityEntity(
      name: model.name,
      url: model.url,
    );
  }

}
