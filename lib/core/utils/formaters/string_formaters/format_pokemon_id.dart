/// {@template format_pokemon_id}
/// A formatter that formats the pokemon id.
/// {@endtemplate}
String formatPokemonId(int id) {
  /// {@macro format_pokemon_id}
  return id.toString().padLeft(3, '0');
}
