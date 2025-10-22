import 'package:pokedex_global/core/network/api_client.dart';
import 'package:pokedex_global/features/home/data/datasource/pokedex_datasource.dart';
import 'package:pokedex_global/features/home/data/repository/pokedex_impl.dart';
import 'package:pokedex_global/features/home/domain/repository/pokedex_repository.dart';
import 'package:pokedex_global/features/home/domain/usecases/usecases.dart';
import 'package:pokedex_global/features/pokemon_details/presentation/di/pokemon_details_dependency_injection.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokedex_dependency_inyection.g.dart';

/// {@template pokedex_repository_provider}
/// Provider for the pokedex repository.
/// {@endtemplate}
@riverpod
PokedexRepository pokedexRepository(Ref ref) => PokedexImpl(
      datasource: ref.watch(pokedexDatasourceProvider),
      getPokemonDetailUseCase: ref.watch(getPokemonDetailUseCaseProvider),
    );

/// {@template pokedex_datasource_provider}
/// Provider for the pokedex datasource.
/// {@endtemplate}
@riverpod
PokedexDatasource pokedexDatasource(Ref ref) => PokedexDatasourceImpl(
      dio: ref.watch(apiClientProvider),
    );

/// {@template get_pokemons_list_use_case_provider}
/// Provider for the get pokemons list use case.
/// {@endtemplate}
@riverpod
GetPokemonsListUseCase getPokemonsListUseCase(Ref ref) =>
    GetPokemonsListUseCase(repository: ref.watch(pokedexRepositoryProvider));
