import 'package:pokedex_global/features/pokemon_details/domain/enums/enums.dart';
import 'package:pokedex_global/gen/assets/assets.gen.dart';

/// {@template pokemon_icon_type_extension}
/// An extension that represents the icon type of a pokemon.
/// {@endtemplate}
extension PokemonIconTypeExtension on PokemonTypeEnum {
  /// Returns the icon type of the pokemon.
  String get pokemonIconType {
    switch (this) {
      case PokemonTypeEnum.normal:
        return Assets.icons.normal;
      case PokemonTypeEnum.fire:
        return Assets.icons.fire;
      case PokemonTypeEnum.water:
        return Assets.icons.water;
      case PokemonTypeEnum.electric:
        return Assets.icons.electric;
      case PokemonTypeEnum.grass:
        return Assets.icons.grass;
      case PokemonTypeEnum.ice:
        return Assets.icons.ice;
      case PokemonTypeEnum.fighting:
        return Assets.icons.fight;
      case PokemonTypeEnum.poison:
        return Assets.icons.poison;
      case PokemonTypeEnum.ground:
        return Assets.icons.ground;
      case PokemonTypeEnum.flying:
        return Assets.icons.flying;
      case PokemonTypeEnum.psychic:
        return Assets.icons.psychic;
      case PokemonTypeEnum.bug:
        return Assets.icons.bug;
      case PokemonTypeEnum.rock:
        return Assets.icons.rock;
      case PokemonTypeEnum.ghost:
        return Assets.icons.ghost;
      case PokemonTypeEnum.dragon:
        return Assets.icons.dragon;
      case PokemonTypeEnum.steel:
        return Assets.icons.steel;
      case PokemonTypeEnum.fairy:
        return Assets.icons.fairy;
      default:
        return Assets.icons.normal;
    }
  }
}
