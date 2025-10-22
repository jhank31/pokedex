import 'package:pokedex_global/features/home/data/models/models.dart';

/// {@template pokemon_summary_entity}
/// An entity that represents the summary of a pokemon.
/// {@endtemplate}
class PokemonSummaryEntity {
  /// {@macro pokemon_summary_entity}
  const PokemonSummaryEntity({
    required this.name,
    required this.url,
  });

  /// The name of the pokemon.
  final String name;

  /// The url of the pokemon.
  final String url;

  /// Creates a copy of this entity with the given fields replaced with new values.
  PokemonSummaryEntity copyWith({
    String? name,
    String? url,
  }) {
    return PokemonSummaryEntity(
      name: name ?? this.name,
      url: url ?? this.url,
    );
  }

  /// Converts this entity to a model.
  PokemonListItems toModel() {
    return PokemonListItems(
      name: name,
      url: url,
    );
  }

  /// Creates an entity from a model.
  factory PokemonSummaryEntity.fromModel(PokemonListItems model) {
    return PokemonSummaryEntity(
      name: model.name,
      url: model.url,
    );
  }
}
