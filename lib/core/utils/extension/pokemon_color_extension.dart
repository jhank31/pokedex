import 'package:flutter/material.dart';
import 'package:pokedex_global/features/pokemon_details/domain/enums/enums.dart';

/// {@template pokemon_color_extension}
/// An extension that represents the color of a pokemon.
/// {@endtemplate}
extension PokemonColorExtension on PokemonTypeEnum {
  /// Returns a visual color to use in the UI.
  Color get pokemonColor {
    switch (this) {
      case PokemonTypeEnum.normal:
        return const Color(0xFF546E7A);
      case PokemonTypeEnum.fire:
        return const Color(0xFFFF9800);
      case PokemonTypeEnum.water:
        return const Color(0xFF2196F3);
      case PokemonTypeEnum.electric:
        return const Color(0xFFFDD835);
      case PokemonTypeEnum.grass:
        return const Color(0xFF8BC34A);
      case PokemonTypeEnum.ice:
        return const Color(0xFF98D8D8);
      case PokemonTypeEnum.fighting:
        return const Color(0xFFC03028);
      case PokemonTypeEnum.poison:
        return const Color(0xFF9C27B0);
      case PokemonTypeEnum.ground:
        return const Color(0xFFFFB300);
      case PokemonTypeEnum.flying:
        return const Color(0xFF00BCD4);
      case PokemonTypeEnum.psychic:
        return const Color(0xFF673AB7);
      case PokemonTypeEnum.bug:
        return const Color(0xFF43A047);
      case PokemonTypeEnum.rock:
        return const Color(0xFF795548);
      case PokemonTypeEnum.ghost:
        return const Color(0xFF8E24AA);
      case PokemonTypeEnum.dragon:
        return const Color(0xFF00ACC1);
      case PokemonTypeEnum.dark:
        return const Color(0xFF705848);
      case PokemonTypeEnum.steel:
        return const Color(0xFF546E7A);
      case PokemonTypeEnum.fairy:
        return const Color(0xFFE91E63);
      case PokemonTypeEnum.sinister:
        return const Color(0xFF546E7A);
    }
  }
}
