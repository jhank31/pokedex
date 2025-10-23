import 'package:pokedex_global/core/logging/logs/provider/logs_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/pokemon_detail_entity.dart';

part 'pokemon_types_agregator_provider.g.dart';

/// {@template pokemon_types_agregator}
/// A provider that maintains a global Set with the unique types of Pokémon
/// or weaknesses found when loading details.
/// {@endtemplate}
@riverpod
class PokemonTypesAgregator extends _$PokemonTypesAgregator {
  @override
  Set<String> build() => {}; // initial state empty

  /// clear the global collection
  void clear() => state = {};

  /// collect types from a pokemon
  Future<void> collectFrom(List<PokemonDetailEntity> entity) async {
    final appTalker = ref.read(appTalkerProvider('PokemonTypesAgregator'));

    final newTypes = <String>{};

    for (final pokemon in entity) {
      for (final type in pokemon.types) {
        newTypes.add(type.name);
      }
    }

    state = {...state, ...newTypes};

    appTalker.debug('Types accumulated: ${state.join(', ')}');
  }
}
