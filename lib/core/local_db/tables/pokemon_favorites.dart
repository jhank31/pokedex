import 'package:drift/drift.dart';

/// {@template pokemon_favorites}
/// A table that stores favorite Pokemon.
/// {@endtemplate}
class PokemonFavorites extends Table {
  /// The Pokemon ID (primary key).
  IntColumn get pokemonId => integer()();

  /// The Pokemon name.
  TextColumn get name => text()();

  /// The URL of the Pokemon image.
  TextColumn get imageUrl => text()();

  /// The timestamp when the Pokemon was added to favorites.
  DateTimeColumn get addedAt => dateTime()();

  @override
  Set<Column> get primaryKey => {pokemonId};
}
