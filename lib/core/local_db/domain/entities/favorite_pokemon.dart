import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorite_pokemon.freezed.dart';
part 'favorite_pokemon.g.dart';

/// {@template favorite_pokemon}
/// Represents a Pokemon that has been marked as favorite.
/// Contains only essential information. Full details should be
/// fetched from the API when needed.
/// {@endtemplate}
@freezed
abstract class FavoritePokemon with _$FavoritePokemon {
  /// {@macro favorite_pokemon}
  const factory FavoritePokemon({
    required int id,
    required String name,
    required String imageUrl,
    required DateTime addedAt,
  }) = _FavoritePokemon;

  /// Creates a [FavoritePokemon] from a JSON object.
  factory FavoritePokemon.fromJson(Map<String, dynamic> json) =>
      _$FavoritePokemonFromJson(json);
}
