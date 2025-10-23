import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_list_items.freezed.dart';
part 'pokemon_list_items.g.dart';

/// {@template pokemon_list_items}
/// A model that represents the list items of a pokemon.
/// {@endtemplate}
@freezed
abstract class PokemonListItems with _$PokemonListItems {
  /// {@macro pokemon_list_items}
  const factory PokemonListItems({
    /// The name of the pokemon.
    required String name,

    /// The url of the pokemon.
    required String url,
  }) = _PokemonListItems;

  /// {@macro pokemon_list_items}
  factory PokemonListItems.fromJson(Map<String, dynamic> json) =>
      _$PokemonListItemsFromJson(json);

  
}
