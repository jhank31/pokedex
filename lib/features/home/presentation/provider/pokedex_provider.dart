import 'package:pokedex_global/features/home/domain/usecases/get_pokemons_list_usecase.dart';
import 'package:pokedex_global/features/home/presentation/di/pokedex_dependency_inyection.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/entities.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokedex_provider.g.dart';

/// {@template pokedex_list_provider}
/// Provider for the pokedex list.
/// {@endtemplate}
@riverpod
Future<List<PokemonSummaryEntity>> pokedexList(Ref ref) async {
  final getPokemonsListUseCase = ref.watch(getPokemonsListUseCaseProvider);
  final pokedexList = await getPokemonsListUseCase
      .call(GetPokemonsListParams(limit: 100, offset: 0));
  return pokedexList.results;
}
