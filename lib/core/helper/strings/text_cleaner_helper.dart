
/// {@template text_cleaner_helper}
/// TextCleanerHelper is a class that contains the methods for cleaning text
/// {@endtemplate}
class TextCleanerHelper {
  /// Delete any word that starts with "Poké" (case-insensitive)
  static String removePokemonWord(String text) {
    if (text.isEmpty) return text;

    // 1) Remove the word "Pokémon" or "Pokemon" when it is separated by spaces or at the edge
    final wordRegex = RegExp(
      r'(^|\s)Pok(?:e|\u00E9)mon(?=\s|$)',
      caseSensitive: false,
      unicode: true,
    );
    var out = text.replaceAllMapped(wordRegex, (m) => m.group(1) ?? '');

    // 2) If it is stuck to the beginning (without space): "PokémonSemilla" -> "Semilla"
    final prefixRegex = RegExp(
      r'^\s*Pok(?:e|\u00E9)mon',
      caseSensitive: false,
      unicode: true,
    );
    out = out.replaceFirst(prefixRegex, '');

    // 3) Normalize multiple spaces and trim
    out = out.replaceAll(RegExp(r'\s{2,}'), ' ').trim();

    return out;
  }
}
