// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database_providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// {@template app_database_provider}
/// Provider for the application database instance.
/// This is a singleton that provides access to the database throughout the app.
/// {@endtemplate}

@ProviderFor(appDatabase)
const appDatabaseProvider = AppDatabaseProvider._();

/// {@template app_database_provider}
/// Provider for the application database instance.
/// This is a singleton that provides access to the database throughout the app.
/// {@endtemplate}

final class AppDatabaseProvider
    extends $FunctionalProvider<AppDatabase, AppDatabase, AppDatabase>
    with $Provider<AppDatabase> {
  /// {@template app_database_provider}
  /// Provider for the application database instance.
  /// This is a singleton that provides access to the database throughout the app.
  /// {@endtemplate}
  const AppDatabaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'appDatabaseProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$appDatabaseHash();

  @$internal
  @override
  $ProviderElement<AppDatabase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AppDatabase create(Ref ref) {
    return appDatabase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AppDatabase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AppDatabase>(value),
    );
  }
}

String _$appDatabaseHash() => r'8c69eb46d45206533c176c88a926608e79ca927d';

/// {@template local_storage_repository_provider}
/// Provider for the local storage repository.
/// This provides access to user settings and preferences.
/// {@endtemplate}

@ProviderFor(localStorageRepository)
const localStorageRepositoryProvider = LocalStorageRepositoryProvider._();

/// {@template local_storage_repository_provider}
/// Provider for the local storage repository.
/// This provides access to user settings and preferences.
/// {@endtemplate}

final class LocalStorageRepositoryProvider extends $FunctionalProvider<
    LocalStorageRepository,
    LocalStorageRepository,
    LocalStorageRepository> with $Provider<LocalStorageRepository> {
  /// {@template local_storage_repository_provider}
  /// Provider for the local storage repository.
  /// This provides access to user settings and preferences.
  /// {@endtemplate}
  const LocalStorageRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'localStorageRepositoryProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$localStorageRepositoryHash();

  @$internal
  @override
  $ProviderElement<LocalStorageRepository> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  LocalStorageRepository create(Ref ref) {
    return localStorageRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(LocalStorageRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<LocalStorageRepository>(value),
    );
  }
}

String _$localStorageRepositoryHash() =>
    r'5610717325991f357c8f063d3eab70db2c47c913';

/// {@template favorites_repository_provider}
/// Provider for the favorites repository.
/// This provides access to favorite Pokemon management.
/// {@endtemplate}

@ProviderFor(favoritesRepositoryDb)
const favoritesRepositoryDbProvider = FavoritesRepositoryDbProvider._();

/// {@template favorites_repository_provider}
/// Provider for the favorites repository.
/// This provides access to favorite Pokemon management.
/// {@endtemplate}

final class FavoritesRepositoryDbProvider extends $FunctionalProvider<
    FavoritesRepositoryDb,
    FavoritesRepositoryDb,
    FavoritesRepositoryDb> with $Provider<FavoritesRepositoryDb> {
  /// {@template favorites_repository_provider}
  /// Provider for the favorites repository.
  /// This provides access to favorite Pokemon management.
  /// {@endtemplate}
  const FavoritesRepositoryDbProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'favoritesRepositoryDbProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$favoritesRepositoryDbHash();

  @$internal
  @override
  $ProviderElement<FavoritesRepositoryDb> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FavoritesRepositoryDb create(Ref ref) {
    return favoritesRepositoryDb(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FavoritesRepositoryDb value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FavoritesRepositoryDb>(value),
    );
  }
}

String _$favoritesRepositoryDbHash() =>
    r'98c6c75995a9640f1c0a8dccec555f8e306dd257';
