import 'dart:async';
import 'package:pokedex_global/features/pokemon_details/domain/usecases/usecases.dart';
import 'package:pokedex_global/features/pokemon_details/presentation/di/pokemon_details_dependency_injection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:pokedex_global/features/fuzzy_search/domain/services/fuzzy_pokemon_search_service.dart';
import 'package:pokedex_global/features/home/presentation/provider/pokedex_provider.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/entities.dart';

part 'pokedex_search_provider.g.dart';

@Riverpod(keepAlive: true)
class PokedexSearch extends _$PokedexSearch {
  final List<PokemonDetailEntity> _cache = [];
  late FuzzyPokemonSearchService _fuzzy;
  Timer? _debounce;

  @override
  FutureOr<List<PokemonDetailEntity>> build() async {
    // 🔄 Mantiene el cache actualizado con los datos del home
    ref.listen(pokedexListProvider, (prev, next) {
      next.whenData(_syncCache);
    });

    final current = ref.read(pokedexListProvider).value ?? [];
    _syncCache(current);

    // Estado inicial vacío → no renderiza nada
    return [];
  }

  /// 🔁 Sincroniza los nuevos pokémon con el cache
  void _syncCache(List<PokemonDetailEntity> newData) {
    bool updated = false;
    for (final p in newData) {
      if (_cache.indexWhere((e) => e.id == p.id) == -1) {
        _cache.add(p);
        updated = true;
      }
    }
    if (updated) _fuzzy = FuzzyPokemonSearchService(_cache);
  }

  /// 🧹 Limpia la búsqueda → deja la vista vacía
  void clear() {
    state = const AsyncData([]);
  }

  /// 🔍 Busca primero localmente, luego remoto
  void search(String query) {
    _debounce?.cancel();
    _debounce = Timer(const Duration(milliseconds: 300), () async {
      if (query.isEmpty) {
        clear();
        return;
      }

      final results = _fuzzy.search(query);
      if (results.isNotEmpty) {
        state = AsyncData(results);
        return;
      }

      try {
        state = const AsyncLoading();
        final getDetail = ref.read(getPokemonDetailUseCaseProvider);
        final pokemon =
            await getDetail(GetPokemonDetailParams(idOrName: query));
        state = AsyncData([pokemon]);
      } catch (e, s) {
        state = AsyncError(e, s);
      }
    });
  }
}
