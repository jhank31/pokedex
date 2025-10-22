/// {@template pokemon_type_enum}
/// An enum that represents the type of a pokemon.
/// {@endtemplate}
enum PokemonTypeEnum {
  normal,
  fire,
  water,
  electric,
  grass,
  ice,
  fighting,
  poison,
  ground,
  flying,
  psychic,
  bug,
  rock,
  ghost,
  dragon,
  dark,
  steel,
  sinister,
  fairy;

  /// Creates an enum from the name of the type that comes from the JSON.
  static PokemonTypeEnum fromType(String? name) {
    switch (name) {
      case 'normal':
        return PokemonTypeEnum.normal;
      case 'fire':
        return PokemonTypeEnum.fire;
      case 'water':
        return PokemonTypeEnum.water;
      case 'electric':
        return PokemonTypeEnum.electric;
      case 'grass':
        return PokemonTypeEnum.grass;
      case 'ice':
        return PokemonTypeEnum.ice;
      case 'fighting':
        return PokemonTypeEnum.fighting;
      case 'poison':
        return PokemonTypeEnum.poison;
      case 'ground':
        return PokemonTypeEnum.ground;
      case 'flying':
        return PokemonTypeEnum.flying;
      case 'psychic':
        return PokemonTypeEnum.psychic;
      case 'bug':
        return PokemonTypeEnum.bug;
      case 'rock':
        return PokemonTypeEnum.rock;
      case 'ghost':
        return PokemonTypeEnum.ghost;
      case 'dragon':
        return PokemonTypeEnum.dragon;
      case 'dark':
        return PokemonTypeEnum.dark;
      case 'steel':
        return PokemonTypeEnum.steel;
      case 'fairy':
        return PokemonTypeEnum.fairy;
      case 'sinister':
        return PokemonTypeEnum.sinister;
      default:
        return normal;
    }
  }
}