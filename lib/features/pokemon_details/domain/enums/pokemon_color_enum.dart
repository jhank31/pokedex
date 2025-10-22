/// {@template pokemon_color_enum}
/// An enum that represents the color of a pokemon.
/// {@endtemplate}
enum PokemonColorEnum {
  black,
  blue,
  brown,
  gray,
  green,
  pink,
  purple,
  red,
  white,
  yellow,
  unknown;

  /// Creates an enum from the name of the color that comes from the JSON.
  static PokemonColorEnum fromName(String? name) {
    switch (name) {
      case 'black':
        return PokemonColorEnum.black;
      case 'blue':
        return PokemonColorEnum.blue;
      case 'brown':
        return PokemonColorEnum.brown;
      case 'gray':
        return PokemonColorEnum.gray;
      case 'green':
        return PokemonColorEnum.green;
      case 'pink':
        return PokemonColorEnum.pink;
      case 'purple':
        return PokemonColorEnum.purple;
      case 'red':
        return PokemonColorEnum.red;
      case 'white':
        return PokemonColorEnum.white;
      case 'yellow':
        return PokemonColorEnum.yellow;
      default:
        return PokemonColorEnum.unknown;
    }
  }
}
