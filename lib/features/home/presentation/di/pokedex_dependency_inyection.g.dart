// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokedex_dependency_inyection.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// {@template pokedex_repository_provider}
/// Provider for the pokedex repository.
/// {@endtemplate}

@ProviderFor(pokedexRepository)
const pokedexRepositoryProvider = PokedexRepositoryProvider._();

/// {@template pokedex_repository_provider}
/// Provider for the pokedex repository.
/// {@endtemplate}

final class PokedexRepositoryProvider extends $FunctionalProvider<
    PokedexRepository,
    PokedexRepository,
    PokedexRepository> with $Provider<PokedexRepository> {
  /// {@template pokedex_repository_provider}
  /// Provider for the pokedex repository.
  /// {@endtemplate}
  const PokedexRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'pokedexRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$pokedexRepositoryHash();

  @$internal
  @override
  $ProviderElement<PokedexRepository> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  PokedexRepository create(Ref ref) {
    return pokedexRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PokedexRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PokedexRepository>(value),
    );
  }
}

String _$pokedexRepositoryHash() => r'5a76ce990dd77d0240ba96ad3afd2193889e6b13';

/// {@template pokedex_datasource_provider}
/// Provider for the pokedex datasource.
/// {@endtemplate}

@ProviderFor(pokedexDatasource)
const pokedexDatasourceProvider = PokedexDatasourceProvider._();

/// {@template pokedex_datasource_provider}
/// Provider for the pokedex datasource.
/// {@endtemplate}

final class PokedexDatasourceProvider extends $FunctionalProvider<
    PokedexDatasource,
    PokedexDatasource,
    PokedexDatasource> with $Provider<PokedexDatasource> {
  /// {@template pokedex_datasource_provider}
  /// Provider for the pokedex datasource.
  /// {@endtemplate}
  const PokedexDatasourceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'pokedexDatasourceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$pokedexDatasourceHash();

  @$internal
  @override
  $ProviderElement<PokedexDatasource> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  PokedexDatasource create(Ref ref) {
    return pokedexDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PokedexDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PokedexDatasource>(value),
    );
  }
}

String _$pokedexDatasourceHash() => r'f3cc81ca32b684f1d365e691168cc520b5c7e30f';

/// {@template get_pokemons_list_use_case_provider}
/// Provider for the get pokemons list use case.
/// {@endtemplate}

@ProviderFor(getPokemonsListUseCase)
const getPokemonsListUseCaseProvider = GetPokemonsListUseCaseProvider._();

/// {@template get_pokemons_list_use_case_provider}
/// Provider for the get pokemons list use case.
/// {@endtemplate}

final class GetPokemonsListUseCaseProvider extends $FunctionalProvider<
    GetPokemonsListUseCase,
    GetPokemonsListUseCase,
    GetPokemonsListUseCase> with $Provider<GetPokemonsListUseCase> {
  /// {@template get_pokemons_list_use_case_provider}
  /// Provider for the get pokemons list use case.
  /// {@endtemplate}
  const GetPokemonsListUseCaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'getPokemonsListUseCaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$getPokemonsListUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetPokemonsListUseCase> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetPokemonsListUseCase create(Ref ref) {
    return getPokemonsListUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetPokemonsListUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetPokemonsListUseCase>(value),
    );
  }
}

String _$getPokemonsListUseCaseHash() =>
    r'08c3b905b4be60c935a0b7e88839bee0061c4351';
