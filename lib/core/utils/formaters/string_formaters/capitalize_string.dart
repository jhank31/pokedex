/// {@template capitalize_string}
/// A formatter that capitalizes the first letter of a string.
/// {@endtemplate}
String capitalizeString(String text) {
    if (text.isEmpty) return text;
    final lower = text.toLowerCase();
    return '${lower[0].toUpperCase()}${lower.substring(1)}';
  }