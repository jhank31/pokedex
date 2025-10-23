import 'package:pokedex_global/features/pokemon_details/domain/entities/entities.dart';
import 'package:pokedex_global/features/pokemon_details/domain/usecases/usecases.dart';
import 'package:pokedex_global/features/pokemon_details/presentation/di/pokemon_details_dependency_injection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemon_details_provider.g.dart';

/// {@template pokemon_details_provider}
/// Provider for the pokemon details.
/// {@endtemplate}
@riverpod
Future<PokemonDetailEntity> pokemonDetails(Ref ref, String idOrName) async {
  final getPokemonDetailUseCase = ref.watch(getPokemonDetailUseCaseProvider);
  return await getPokemonDetailUseCase
      .call(GetPokemonDetailParams(idOrName: idOrName));
}
