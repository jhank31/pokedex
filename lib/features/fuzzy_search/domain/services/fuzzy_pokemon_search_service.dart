import 'package:fuzzy/fuzzy.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/entities.dart';

/// {@template fuzzy_pokemon_search_service}
/// A service that performs fuzzy search on a list of PokemonDetailEntity objects.
/// {@endtemplate}
class FuzzyPokemonSearchService {
  /// The fuzzy search object.
  late final Fuzzy<PokemonDetailEntity> _fuzzy;

  /// {@macro fuzzy_pokemon_search_service}
  FuzzyPokemonSearchService(List<PokemonDetailEntity> pokemons) {
    _fuzzy = Fuzzy(
      pokemons,
      options: FuzzyOptions(
        keys: [
          WeightedKey<PokemonDetailEntity>(
            name: 'name',
            getter: (p) => p.name,
            weight: 1,
          ),
          WeightedKey<PokemonDetailEntity>(
            name: 'id',
            getter: (p) => p.id.toString(),
            weight: 0.7,
          ),
        ],
        threshold: 0.5, // sensibilidad de coincidencia
      ),
    );
  }

  /// Searches for PokemonDetailEntity objects based on a query.
  List<PokemonDetailEntity> search(String query) {
    if (query.isEmpty) return [];
    final results = _fuzzy.search(query);
    return results.map((r) => r.item).toList();
  }
}
