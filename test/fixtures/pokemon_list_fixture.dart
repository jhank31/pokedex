import 'package:pokedex_global/features/home/data/models/pokemon_list_items.dart';

/// {@template pokemon_list_fixture}
/// Fixtures for testing Pokemon List models.
/// {@endtemplate}
class PokemonListFixture {
  /// A sample Pokemon List Item for Pikachu
  static const pikachu = PokemonListItems(
    name: 'pikachu',
    url: 'https://pokeapi.co/api/v2/pokemon/25/',
  );

  /// A sample Pokemon List Item for Charizard
  static const charizard = PokemonListItems(
    name: 'charizard',
    url: 'https://pokeapi.co/api/v2/pokemon/6/',
  );

  /// A sample Pokemon List Item for Bulbasaur
  static const bulbasaur = PokemonListItems(
    name: 'bulbasaur',
    url: 'https://pokeapi.co/api/v2/pokemon/1/',
  );

  /// List of sample Pokemon
  static const pokemonList = [
    bulbasaur,
    charizard,
    pikachu,
  ];

  /// JSON representation of Pokemon List
  static Map<String, dynamic> get pokemonListJson => {
        'count': 1302,
        'next': 'https://pokeapi.co/api/v2/pokemon?offset=20&limit=20',
        'previous': null,
        'results': [
          {
            'name': 'bulbasaur',
            'url': 'https://pokeapi.co/api/v2/pokemon/1/',
          },
          {
            'name': 'charizard',
            'url': 'https://pokeapi.co/api/v2/pokemon/6/',
          },
          {
            'name': 'pikachu',
            'url': 'https://pokeapi.co/api/v2/pokemon/25/',
          },
        ],
      };

  /// Creates a custom Pokemon List Item
  static PokemonListItems createPokemonListItem({
    String name = 'ditto',
    String url = 'https://pokeapi.co/api/v2/pokemon/132/',
  }) {
    return PokemonListItems(name: name, url: url);
  }
}
