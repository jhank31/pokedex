import 'package:pokedex_global/core/errors/errors.dart';
import 'package:pokedex_global/core/logging/logs/provider/logs_provider.dart';
import 'package:pokedex_global/core/network/api_client.dart';
import 'package:pokedex_global/features/pokemon_details/data/datasource/pokemon_details_datasource.dart';
import 'package:pokedex_global/features/pokemon_details/data/repository/pokemon_details_repository_impl.dart';
import 'package:pokedex_global/features/pokemon_details/domain/repository/pokemon_details_repository.dart';
import 'package:pokedex_global/features/pokemon_details/domain/usecases/usecases.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemon_details_dependency_injection.g.dart';

/// {@template pokemon_details_repository_provider}
/// Provider for the pokemon details repository.
/// {@endtemplate}
@riverpod
PokemonDetailsRepository pokemonDetailsRepository(Ref ref) =>
    PokemonDetailsRepositoryImpl(
      pokemonDetailsDatasource: ref.watch(pokemonDetailsDatasourceProvider),
      appTalker: ref.watch(appTalkerProvider('pokemon_details_repository')),
      errorHandler: ref.watch(errorHandlerProvider),
    );

/// {@template pokemon_details_datasource_provider}
/// Provider for the pokemon details datasource.
/// {@endtemplate}
@riverpod
PokemonDetailsDatasource pokemonDetailsDatasource(Ref ref) =>
    PokemonDetailsDatasourceImpl(
      dio: ref.watch(apiClientProvider),
    );

/// {@template pokemon_details_repository_provider}
/// Provider for the pokemon details repository.
/// {@endtemplate}
@riverpod
GetPokemonDetailUseCase getPokemonDetailUseCase(Ref ref) =>
    GetPokemonDetailUseCase(
      repository: ref.watch(pokemonDetailsRepositoryProvider),
    );
