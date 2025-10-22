import 'package:pokedex_global/features/home/data/models/models.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/entities.dart';

/// {@template pokemon_list_response_entity}
/// An entity that represents the pokemon list response.
/// {@endtemplate}
class PokemonListResponseEntity {
  /// {@macro pokemon_list_response_entity}
  const PokemonListResponseEntity({
    required this.count,
    this.next,
    this.previous,
    required this.results,
  });

  /// The count of the pokemon list.
  final int count;

  /// The next page of the pokemon list.
  final String? next;

  /// The previous page of the pokemon list.
  final String? previous;

  /// The results of the pokemon list.
  final List<PokemonSummaryEntity> results;

  /// Creates a copy of this entity with the given fields replaced with new values.
  PokemonListResponseEntity copyWith({
    int? count,
    String? next,
    String? previous,
    List<PokemonSummaryEntity>? results,
  }) {
    return PokemonListResponseEntity(
      count: count ?? this.count,
      next: next ?? this.next,
      previous: previous ?? this.previous,
      results: results ?? this.results,
    );
  }

  /// Converts this entity to a model.
  PokemonListResponse toModel() {
    return PokemonListResponse(
      count: count,
      next: next,
      previous: previous,
      results: results.map((e) => e.toModel()).toList(),
    );
  }

  /// Creates an entity from a model.
  factory PokemonListResponseEntity.fromModel(PokemonListResponse model) {
    return PokemonListResponseEntity(
      count: model.count,
      next: model.next,
      previous: model.previous,
      results:
          model.results.map((e) => PokemonSummaryEntity.fromModel(e)).toList(),
    );
  }

}