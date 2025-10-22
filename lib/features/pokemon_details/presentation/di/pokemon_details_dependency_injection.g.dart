// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_details_dependency_injection.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// {@template pokemon_details_repository_provider}
/// Provider for the pokemon details repository.
/// {@endtemplate}

@ProviderFor(pokemonDetailsRepository)
const pokemonDetailsRepositoryProvider = PokemonDetailsRepositoryProvider._();

/// {@template pokemon_details_repository_provider}
/// Provider for the pokemon details repository.
/// {@endtemplate}

final class PokemonDetailsRepositoryProvider extends $FunctionalProvider<
    PokemonDetailsRepository,
    PokemonDetailsRepository,
    PokemonDetailsRepository> with $Provider<PokemonDetailsRepository> {
  /// {@template pokemon_details_repository_provider}
  /// Provider for the pokemon details repository.
  /// {@endtemplate}
  const PokemonDetailsRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'pokemonDetailsRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$pokemonDetailsRepositoryHash();

  @$internal
  @override
  $ProviderElement<PokemonDetailsRepository> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  PokemonDetailsRepository create(Ref ref) {
    return pokemonDetailsRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PokemonDetailsRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PokemonDetailsRepository>(value),
    );
  }
}

String _$pokemonDetailsRepositoryHash() =>
    r'414d8eb2e35bcf221db8b83c038a7f37583a6765';

/// {@template pokemon_details_datasource_provider}
/// Provider for the pokemon details datasource.
/// {@endtemplate}

@ProviderFor(pokemonDetailsDatasource)
const pokemonDetailsDatasourceProvider = PokemonDetailsDatasourceProvider._();

/// {@template pokemon_details_datasource_provider}
/// Provider for the pokemon details datasource.
/// {@endtemplate}

final class PokemonDetailsDatasourceProvider extends $FunctionalProvider<
    PokemonDetailsDatasource,
    PokemonDetailsDatasource,
    PokemonDetailsDatasource> with $Provider<PokemonDetailsDatasource> {
  /// {@template pokemon_details_datasource_provider}
  /// Provider for the pokemon details datasource.
  /// {@endtemplate}
  const PokemonDetailsDatasourceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'pokemonDetailsDatasourceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$pokemonDetailsDatasourceHash();

  @$internal
  @override
  $ProviderElement<PokemonDetailsDatasource> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  PokemonDetailsDatasource create(Ref ref) {
    return pokemonDetailsDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(PokemonDetailsDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<PokemonDetailsDatasource>(value),
    );
  }
}

String _$pokemonDetailsDatasourceHash() =>
    r'676502da5d843721c847125b612ccb1b888e01ea';

/// {@template pokemon_details_repository_provider}
/// Provider for the pokemon details repository.
/// {@endtemplate}

@ProviderFor(getPokemonDetailUseCase)
const getPokemonDetailUseCaseProvider = GetPokemonDetailUseCaseProvider._();

/// {@template pokemon_details_repository_provider}
/// Provider for the pokemon details repository.
/// {@endtemplate}

final class GetPokemonDetailUseCaseProvider extends $FunctionalProvider<
    GetPokemonDetailUseCase,
    GetPokemonDetailUseCase,
    GetPokemonDetailUseCase> with $Provider<GetPokemonDetailUseCase> {
  /// {@template pokemon_details_repository_provider}
  /// Provider for the pokemon details repository.
  /// {@endtemplate}
  const GetPokemonDetailUseCaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'getPokemonDetailUseCaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$getPokemonDetailUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetPokemonDetailUseCase> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetPokemonDetailUseCase create(Ref ref) {
    return getPokemonDetailUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetPokemonDetailUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetPokemonDetailUseCase>(value),
    );
  }
}

String _$getPokemonDetailUseCaseHash() =>
    r'3879b715d011e2c4e9db5f917046f08afc02c786';
