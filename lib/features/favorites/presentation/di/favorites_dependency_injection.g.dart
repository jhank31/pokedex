// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_dependency_injection.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// {@template favorites_repository_provider}
/// Provider for the favorites repository.
/// {@endtemplate}

@ProviderFor(favoritesRepository)
const favoritesRepositoryProvider = FavoritesRepositoryProvider._();

/// {@template favorites_repository_provider}
/// Provider for the favorites repository.
/// {@endtemplate}

final class FavoritesRepositoryProvider extends $FunctionalProvider<
    FavoritesRepository,
    FavoritesRepository,
    FavoritesRepository> with $Provider<FavoritesRepository> {
  /// {@template favorites_repository_provider}
  /// Provider for the favorites repository.
  /// {@endtemplate}
  const FavoritesRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'favoritesRepositoryProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$favoritesRepositoryHash();

  @$internal
  @override
  $ProviderElement<FavoritesRepository> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FavoritesRepository create(Ref ref) {
    return favoritesRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FavoritesRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FavoritesRepository>(value),
    );
  }
}

String _$favoritesRepositoryHash() =>
    r'071eb2e61a4dc665205f481810b361604ac72919';

/// {@template favorites_datasource_provider}
/// Provider for the favorites datasource.
/// {@endtemplate}

@ProviderFor(favoritesDatasource)
const favoritesDatasourceProvider = FavoritesDatasourceProvider._();

/// {@template favorites_datasource_provider}
/// Provider for the favorites datasource.
/// {@endtemplate}

final class FavoritesDatasourceProvider extends $FunctionalProvider<
    FavoritesDatasource,
    FavoritesDatasource,
    FavoritesDatasource> with $Provider<FavoritesDatasource> {
  /// {@template favorites_datasource_provider}
  /// Provider for the favorites datasource.
  /// {@endtemplate}
  const FavoritesDatasourceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'favoritesDatasourceProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$favoritesDatasourceHash();

  @$internal
  @override
  $ProviderElement<FavoritesDatasource> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FavoritesDatasource create(Ref ref) {
    return favoritesDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FavoritesDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FavoritesDatasource>(value),
    );
  }
}

String _$favoritesDatasourceHash() =>
    r'396b4b256c061ece01f6b03464e95d592ee62823';

/// {@template get_all_favorites_use_case_provider}
/// Provider for the get all favorites use case.
/// {@endtemplate}

@ProviderFor(getAllFavoritesUseCase)
const getAllFavoritesUseCaseProvider = GetAllFavoritesUseCaseProvider._();

/// {@template get_all_favorites_use_case_provider}
/// Provider for the get all favorites use case.
/// {@endtemplate}

final class GetAllFavoritesUseCaseProvider extends $FunctionalProvider<
    GetAllFavoritesUseCase,
    GetAllFavoritesUseCase,
    GetAllFavoritesUseCase> with $Provider<GetAllFavoritesUseCase> {
  /// {@template get_all_favorites_use_case_provider}
  /// Provider for the get all favorites use case.
  /// {@endtemplate}
  const GetAllFavoritesUseCaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'getAllFavoritesUseCaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$getAllFavoritesUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetAllFavoritesUseCase> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  GetAllFavoritesUseCase create(Ref ref) {
    return getAllFavoritesUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAllFavoritesUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAllFavoritesUseCase>(value),
    );
  }
}

String _$getAllFavoritesUseCaseHash() =>
    r'189e7d9b3d05786673a5e5e1df9f334d20912923';
