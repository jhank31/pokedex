import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex_global/features/home/data/models/models.dart';

part 'pokemon_list_response.freezed.dart';
part 'pokemon_list_response.g.dart';

@freezed
abstract class PokemonListResponse with _$PokemonListResponse {
  ///{@macro pokemon_list_response}
  const factory PokemonListResponse({
    /// The count of the pokemon list.
    required int count,
    /// The next page of the pokemon list.
    String? next,
    /// The previous page of the pokemon list.
    String? previous,
    /// The results of the pokemon list.
    required List<PokemonSummary> results,
  }) = _PokemonListResponse;

  factory PokemonListResponse.fromJson(Map<String, dynamic> json) =>
      _$PokemonListResponseFromJson(json);
}
