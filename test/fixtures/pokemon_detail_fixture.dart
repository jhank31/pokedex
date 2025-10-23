import 'package:pokedex_global/features/pokemon_details/data/models/pokemon_detail.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/pokemon_detail_entity.dart';
import 'package:pokedex_global/features/pokemon_details/domain/enums/enums.dart';

/// {@template pokemon_detail_fixture}
/// Fixtures for testing Pokemon Detail models and entities.
/// {@endtemplate}
class PokemonDetailFixture {
  /// A sample Pokemon Detail model for Pikachu
  static const pokemonDetailModel = PokemonDetail(
    id: 25,
    name: 'pikachu',
    height: 4,
    weight: 60,
    types: [
      PokemonTypeSlot(
        slot: 1,
        type: PokemonType(
          name: 'electric',
          url: 'https://pokeapi.co/api/v2/type/13/',
        ),
      ),
    ],
    sprites: PokemonSprites(
      frontDefault:
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png',
      backDefault:
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/25.png',
      other: PokemonSpritesOther(
        officialArtwork: PokemonOfficialArtwork(
          frontDefault:
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png',
        ),
      ),
    ),
    abilities: [
      PokemonAbilitySlot(
        slot: 1,
        ability: PokemonAbility(
          name: 'static',
          url: 'https://pokeapi.co/api/v2/ability/9/',
        ),
      ),
      PokemonAbilitySlot(
        slot: 3,
        isHidden: true,
        ability: PokemonAbility(
          name: 'lightning-rod',
          url: 'https://pokeapi.co/api/v2/ability/31/',
        ),
      ),
    ],
  );

  /// A sample Pokemon Detail model for Charizard
  static const charizardDetailModel = PokemonDetail(
    id: 6,
    name: 'charizard',
    height: 17,
    weight: 905,
    types: [
      PokemonTypeSlot(
        slot: 1,
        type: PokemonType(
          name: 'fire',
          url: 'https://pokeapi.co/api/v2/type/10/',
        ),
      ),
      PokemonTypeSlot(
        slot: 2,
        type: PokemonType(
          name: 'flying',
          url: 'https://pokeapi.co/api/v2/type/3/',
        ),
      ),
    ],
    sprites: PokemonSprites(
      frontDefault:
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/6.png',
      backDefault:
          'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/6.png',
    ),
    abilities: [
      PokemonAbilitySlot(
        slot: 1,
        ability: PokemonAbility(
          name: 'blaze',
          url: 'https://pokeapi.co/api/v2/ability/66/',
        ),
      ),
    ],
  );

  /// JSON representation of Pokemon Detail for Pikachu
  static Map<String, dynamic> get pokemonDetailJson => {
        'id': 25,
        'name': 'pikachu',
        'height': 4,
        'weight': 60,
        'types': [
          {
            'slot': 1,
            'type': {
              'name': 'electric',
              'url': 'https://pokeapi.co/api/v2/type/13/',
            },
          },
        ],
        'sprites': {
          'front_default':
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png',
          'back_default':
              'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/back/25.png',
          'other': {
            'officialArtwork': {
              'frontDefault':
                  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png',
            },
          },
        },
        'abilities': [
          {
            'slot': 1,
            'ability': {
              'name': 'static',
              'url': 'https://pokeapi.co/api/v2/ability/9/',
            },
          },
          {
            'slot': 3,
            'is_hidden': true,
            'ability': {
              'name': 'lightning-rod',
              'url': 'https://pokeapi.co/api/v2/ability/31/',
            },
          },
        ],
      };

  /// JSON representation of Pokemon Species for Pikachu
  static Map<String, dynamic> get pokemonSpeciesJson => {
        'color': {'name': 'yellow'},
        'gender_rate': 4,
        'genera': [
          {
            'genus': 'Pokémon Ratón',
            'language': {'name': 'es'},
          },
          {
            'genus': 'Mouse Pokémon',
            'language': {'name': 'en'},
          },
        ],
        'flavor_text_entries': [
          {
            'flavor_text':
                'Cuando se enfada, este Pokémon descarga la energía que almacena en el interior de las bolsas de las mejillas.',
            'language': {'name': 'es'},
          },
          {
            'flavor_text':
                'When several of these POKéMON gather, their electricity could build and cause lightning storms.',
            'language': {'name': 'en'},
          },
        ],
      };

  /// JSON representation of Pokemon Type (Electric) with damage relations
  static Map<String, dynamic> get pokemonTypeElectricJson => {
        'name': 'electric',
        'damage_relations': {
          'double_damage_from': [
            {'name': 'ground'},
          ],
          'double_damage_to': [
            {'name': 'water'},
            {'name': 'flying'},
          ],
          'half_damage_from': [
            {'name': 'electric'},
            {'name': 'flying'},
            {'name': 'steel'},
          ],
        },
      };

  /// A sample Pokemon Detail Entity for Pikachu
  static const pokemonDetailEntity = PokemonDetailEntity(
    id: 25,
    name: 'pikachu',
    height: 0.4,
    weight: 6.0,
    types: [PokemonTypeEnum.electric],
    abilities: ['static', 'lightning-rod'],
    imageUrl:
        'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png',
    color: PokemonColorEnum.yellow,
    genus: 'Pokémon Ratón',
    description:
        'Cuando se enfada, este Pokémon descarga la energía que almacena en el interior de las bolsas de las mejillas.',
    maleRate: 50.0,
    femaleRate: 50.0,
    weaknesses: ['ground'],
    category: 'electric',
  );

  /// Creates a custom Pokemon Detail model
  static PokemonDetail createPokemonDetail({
    int id = 1,
    String name = 'bulbasaur',
    int height = 7,
    int weight = 69,
    List<PokemonTypeSlot> types = const [],
    PokemonSprites? sprites,
    List<PokemonAbilitySlot> abilities = const [],
  }) {
    return PokemonDetail(
      id: id,
      name: name,
      height: height,
      weight: weight,
      types: types,
      sprites: sprites ??
          const PokemonSprites(
            frontDefault: 'https://example.com/sprite.png',
          ),
      abilities: abilities,
    );
  }

  /// Creates a custom Pokemon Detail Entity
  static PokemonDetailEntity createPokemonDetailEntity({
    int id = 1,
    String name = 'bulbasaur',
    double height = 0.7,
    double weight = 6.9,
    List<PokemonTypeEnum> types = const [PokemonTypeEnum.grass],
    List<String> abilities = const ['overgrow'],
    String imageUrl = 'https://example.com/sprite.png',
    PokemonColorEnum color = PokemonColorEnum.green,
    String genus = 'Seed Pokémon',
    String description = 'A description',
    double maleRate = 87.5,
    double femaleRate = 12.5,
    List<String> weaknesses = const [],
    String category = 'electric',
  }) {
    return PokemonDetailEntity(
      id: id,
      name: name,
      height: height,
      weight: weight,
      types: types,
      abilities: abilities,
      imageUrl: imageUrl,
      color: color,
      genus: genus,
      description: description,
      maleRate: maleRate,
      femaleRate: femaleRate,
      weaknesses: weaknesses,
      category: category,
    );
  }
}
