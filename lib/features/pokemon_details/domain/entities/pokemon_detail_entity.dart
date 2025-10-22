import 'package:pokedex_global/features/pokemon_details/domain/enums/enums.dart';

import '../../data/models/pokemon_detail.dart';

/// {@template pokemon_detail_entity}
/// An entity that represents the detail of a pokemon.
/// {@endtemplate}
class PokemonDetailEntity {
  /// {@macro pokemon_detail_entity}
  const PokemonDetailEntity({
    required this.id,
    required this.name,
    required this.height,
    required this.weight,
    required this.types,
    required this.abilities,
    required this.imageUrl,
    required this.color,
    required this.genus,
    required this.description,
    required this.maleRate,
    required this.femaleRate,
    required this.weaknesses,
  });

  /// The id of the pokemon.
  final int id;

  /// The name of the pokemon.
  final String name;

  /// The height of the pokemon.
  final double height;

  /// The weight of the pokemon.
  final double weight;

  /// The types of the pokemon.
  final List<PokemonTypeEnum> types;

  /// The abilities of the pokemon.
  final List<String> abilities;

  /// The image url of the pokemon.
  final String imageUrl;

  /// The color of the pokemon.
  final PokemonColorEnum color;

  /// The genus of the pokemon.
  final String genus;

  /// The description of the pokemon.
  final String description;

  /// The male rate of the pokemon.
  final double maleRate;

  /// The female rate of the pokemon.
  final double femaleRate;

  /// The weaknesses of the pokemon.
  final List<String> weaknesses;

  /// Creates an entity from models.
  factory PokemonDetailEntity.fromModels({
    required PokemonDetail detail,
    required Map<String, dynamic> species,
    required List<String> weaknesses,
  }) {
    final genus = (species['genera'] as List)
        .firstWhere((g) => g['language']['name'] == 'es')['genus'];
    final flavor = (species['flavor_text_entries'] as List)
        .firstWhere((f) => f['language']['name'] == 'es')['flavor_text'];
    final color = PokemonColorEnum.fromName(species['color']['name']);
    final genderRate = species['gender_rate'] as int;
    final femaleRate = genderRate >= 0 ? genderRate * 12.5 : 0.0;
    final maleRate = 100.0 - femaleRate;

    return PokemonDetailEntity(
      id: detail.id,
      name: detail.name,
      height: detail.height / 10,
      weight: detail.weight / 10,
      types: detail.types
          .map((e) => PokemonTypeEnum.fromType(e.type.name))
          .toList(),
      abilities: detail.abilities.map((e) => e.ability.name).toList(),
      imageUrl: detail.sprites.frontDefault ?? '',
      color: color,
      genus: genus,
      description: flavor,
      maleRate: maleRate,
      femaleRate: femaleRate,
      weaknesses: weaknesses,
    );
  }
}
