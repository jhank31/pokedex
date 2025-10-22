import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_summary.freezed.dart';
part 'pokemon_summary.g.dart';

/// {@template pokemon_summary}
/// A model that represents the summary of a pokemon.
/// {@endtemplate}
@freezed
abstract class PokemonSummary with _$PokemonSummary {
  /// {@macro pokemon_summary}
  const factory PokemonSummary({
    /// The name of the pokemon.
    required String name,
    /// The url of the pokemon.
    required String url,
  }) = _PokemonSummary;

  /// {@macro pokemon_summary}
  factory PokemonSummary.fromJson(Map<String, dynamic> json) =>
      _$PokemonSummaryFromJson(json);
}
