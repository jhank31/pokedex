// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_providers_db.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// {@template all_favorites_provider}
/// Provider that fetches all favorite Pokemon.
/// This returns a Future for one-time fetches.
/// {@endtemplate}

@ProviderFor(allFavorites)
const allFavoritesProvider = AllFavoritesProvider._();

/// {@template all_favorites_provider}
/// Provider that fetches all favorite Pokemon.
/// This returns a Future for one-time fetches.
/// {@endtemplate}

final class AllFavoritesProvider extends $FunctionalProvider<
        AsyncValue<List<FavoritePokemon>>,
        List<FavoritePokemon>,
        FutureOr<List<FavoritePokemon>>>
    with
        $FutureModifier<List<FavoritePokemon>>,
        $FutureProvider<List<FavoritePokemon>> {
  /// {@template all_favorites_provider}
  /// Provider that fetches all favorite Pokemon.
  /// This returns a Future for one-time fetches.
  /// {@endtemplate}
  const AllFavoritesProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'allFavoritesProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$allFavoritesHash();

  @$internal
  @override
  $FutureProviderElement<List<FavoritePokemon>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<FavoritePokemon>> create(Ref ref) {
    return allFavorites(ref);
  }
}

String _$allFavoritesHash() => r'1ec8b177aa5db04f9206291b99022f5d5cd01c19';

/// {@template watch_favorites_provider}
/// Provider that watches all favorite Pokemon.
/// This returns a Stream that updates in real-time when favorites change.
/// {@endtemplate}

@ProviderFor(watchFavorites)
const watchFavoritesProvider = WatchFavoritesProvider._();

/// {@template watch_favorites_provider}
/// Provider that watches all favorite Pokemon.
/// This returns a Stream that updates in real-time when favorites change.
/// {@endtemplate}

final class WatchFavoritesProvider extends $FunctionalProvider<
        AsyncValue<List<FavoritePokemon>>,
        List<FavoritePokemon>,
        Stream<List<FavoritePokemon>>>
    with
        $FutureModifier<List<FavoritePokemon>>,
        $StreamProvider<List<FavoritePokemon>> {
  /// {@template watch_favorites_provider}
  /// Provider that watches all favorite Pokemon.
  /// This returns a Stream that updates in real-time when favorites change.
  /// {@endtemplate}
  const WatchFavoritesProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'watchFavoritesProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$watchFavoritesHash();

  @$internal
  @override
  $StreamProviderElement<List<FavoritePokemon>> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<List<FavoritePokemon>> create(Ref ref) {
    return watchFavorites(ref);
  }
}

String _$watchFavoritesHash() => r'5815b4b42b366a31d8e9b9691a403eb24ba99134';

/// {@template is_favorite_provider}
/// Provider that checks if a Pokemon is a favorite.
/// This returns a Future for one-time checks.
/// {@endtemplate}

@ProviderFor(isFavorite)
const isFavoriteProvider = IsFavoriteFamily._();

/// {@template is_favorite_provider}
/// Provider that checks if a Pokemon is a favorite.
/// This returns a Future for one-time checks.
/// {@endtemplate}

final class IsFavoriteProvider
    extends $FunctionalProvider<AsyncValue<bool>, bool, FutureOr<bool>>
    with $FutureModifier<bool>, $FutureProvider<bool> {
  /// {@template is_favorite_provider}
  /// Provider that checks if a Pokemon is a favorite.
  /// This returns a Future for one-time checks.
  /// {@endtemplate}
  const IsFavoriteProvider._(
      {required IsFavoriteFamily super.from, required int super.argument})
      : super(
          retry: null,
          name: r'isFavoriteProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$isFavoriteHash();

  @override
  String toString() {
    return r'isFavoriteProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<bool> create(Ref ref) {
    final argument = this.argument as int;
    return isFavorite(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is IsFavoriteProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$isFavoriteHash() => r'90826156abbc8052c8d49ac92390559f1cbe68af';

/// {@template is_favorite_provider}
/// Provider that checks if a Pokemon is a favorite.
/// This returns a Future for one-time checks.
/// {@endtemplate}

final class IsFavoriteFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<bool>, int> {
  const IsFavoriteFamily._()
      : super(
          retry: null,
          name: r'isFavoriteProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  /// {@template is_favorite_provider}
  /// Provider that checks if a Pokemon is a favorite.
  /// This returns a Future for one-time checks.
  /// {@endtemplate}

  IsFavoriteProvider call(
    int pokemonId,
  ) =>
      IsFavoriteProvider._(argument: pokemonId, from: this);

  @override
  String toString() => r'isFavoriteProvider';
}

/// {@template watch_is_favorite_provider}
/// Provider that watches if a Pokemon is a favorite.
/// This returns a Stream that updates in real-time.
/// {@endtemplate}

@ProviderFor(watchIsFavorite)
const watchIsFavoriteProvider = WatchIsFavoriteFamily._();

/// {@template watch_is_favorite_provider}
/// Provider that watches if a Pokemon is a favorite.
/// This returns a Stream that updates in real-time.
/// {@endtemplate}

final class WatchIsFavoriteProvider
    extends $FunctionalProvider<AsyncValue<bool>, bool, Stream<bool>>
    with $FutureModifier<bool>, $StreamProvider<bool> {
  /// {@template watch_is_favorite_provider}
  /// Provider that watches if a Pokemon is a favorite.
  /// This returns a Stream that updates in real-time.
  /// {@endtemplate}
  const WatchIsFavoriteProvider._(
      {required WatchIsFavoriteFamily super.from, required int super.argument})
      : super(
          retry: null,
          name: r'watchIsFavoriteProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$watchIsFavoriteHash();

  @override
  String toString() {
    return r'watchIsFavoriteProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $StreamProviderElement<bool> $createElement($ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<bool> create(Ref ref) {
    final argument = this.argument as int;
    return watchIsFavorite(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is WatchIsFavoriteProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$watchIsFavoriteHash() => r'2755a0391889f7b8513c38094603726457465b98';

/// {@template watch_is_favorite_provider}
/// Provider that watches if a Pokemon is a favorite.
/// This returns a Stream that updates in real-time.
/// {@endtemplate}

final class WatchIsFavoriteFamily extends $Family
    with $FunctionalFamilyOverride<Stream<bool>, int> {
  const WatchIsFavoriteFamily._()
      : super(
          retry: null,
          name: r'watchIsFavoriteProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  /// {@template watch_is_favorite_provider}
  /// Provider that watches if a Pokemon is a favorite.
  /// This returns a Stream that updates in real-time.
  /// {@endtemplate}

  WatchIsFavoriteProvider call(
    int pokemonId,
  ) =>
      WatchIsFavoriteProvider._(argument: pokemonId, from: this);

  @override
  String toString() => r'watchIsFavoriteProvider';
}

/// {@template toggle_favorite_provider}
/// Provider that toggles a Pokemon's favorite status.
/// The stream providers (watchFavorites, watchIsFavorite) will automatically
/// update due to Drift's reactive queries.
/// {@endtemplate}

@ProviderFor(toggleFavorite)
const toggleFavoriteProvider = ToggleFavoriteFamily._();

/// {@template toggle_favorite_provider}
/// Provider that toggles a Pokemon's favorite status.
/// The stream providers (watchFavorites, watchIsFavorite) will automatically
/// update due to Drift's reactive queries.
/// {@endtemplate}

final class ToggleFavoriteProvider
    extends $FunctionalProvider<AsyncValue<void>, void, FutureOr<void>>
    with $FutureModifier<void>, $FutureProvider<void> {
  /// {@template toggle_favorite_provider}
  /// Provider that toggles a Pokemon's favorite status.
  /// The stream providers (watchFavorites, watchIsFavorite) will automatically
  /// update due to Drift's reactive queries.
  /// {@endtemplate}
  const ToggleFavoriteProvider._(
      {required ToggleFavoriteFamily super.from,
      required ({
        int pokemonId,
        String name,
        String imageUrl,
      })
          super.argument})
      : super(
          retry: null,
          name: r'toggleFavoriteProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$toggleFavoriteHash();

  @override
  String toString() {
    return r'toggleFavoriteProvider'
        ''
        '$argument';
  }

  @$internal
  @override
  $FutureProviderElement<void> $createElement($ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<void> create(Ref ref) {
    final argument = this.argument as ({
      int pokemonId,
      String name,
      String imageUrl,
    });
    return toggleFavorite(
      ref,
      pokemonId: argument.pokemonId,
      name: argument.name,
      imageUrl: argument.imageUrl,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is ToggleFavoriteProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$toggleFavoriteHash() => r'3e45435ef89ad2bbf5f7983ac8d868d61bcc59fc';

/// {@template toggle_favorite_provider}
/// Provider that toggles a Pokemon's favorite status.
/// The stream providers (watchFavorites, watchIsFavorite) will automatically
/// update due to Drift's reactive queries.
/// {@endtemplate}

final class ToggleFavoriteFamily extends $Family
    with
        $FunctionalFamilyOverride<
            FutureOr<void>,
            ({
              int pokemonId,
              String name,
              String imageUrl,
            })> {
  const ToggleFavoriteFamily._()
      : super(
          retry: null,
          name: r'toggleFavoriteProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  /// {@template toggle_favorite_provider}
  /// Provider that toggles a Pokemon's favorite status.
  /// The stream providers (watchFavorites, watchIsFavorite) will automatically
  /// update due to Drift's reactive queries.
  /// {@endtemplate}

  ToggleFavoriteProvider call({
    required int pokemonId,
    required String name,
    required String imageUrl,
  }) =>
      ToggleFavoriteProvider._(argument: (
        pokemonId: pokemonId,
        name: name,
        imageUrl: imageUrl,
      ), from: this);

  @override
  String toString() => r'toggleFavoriteProvider';
}
