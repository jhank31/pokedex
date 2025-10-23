// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'favorites_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// {@template all_favorites_provider}
/// Provider for the all favorites.
/// Watches the favorites from the database and fetches their details from the API.
/// Updates automatically when favorites change in the database.
/// {@endtemplate}

@ProviderFor(getAllFavoritesFromApi)
const getAllFavoritesFromApiProvider = GetAllFavoritesFromApiProvider._();

/// {@template all_favorites_provider}
/// Provider for the all favorites.
/// Watches the favorites from the database and fetches their details from the API.
/// Updates automatically when favorites change in the database.
/// {@endtemplate}

final class GetAllFavoritesFromApiProvider extends $FunctionalProvider<
        AsyncValue<List<PokemonDetailEntity>>,
        List<PokemonDetailEntity>,
        Stream<List<PokemonDetailEntity>>>
    with
        $FutureModifier<List<PokemonDetailEntity>>,
        $StreamProvider<List<PokemonDetailEntity>> {
  /// {@template all_favorites_provider}
  /// Provider for the all favorites.
  /// Watches the favorites from the database and fetches their details from the API.
  /// Updates automatically when favorites change in the database.
  /// {@endtemplate}
  const GetAllFavoritesFromApiProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'getAllFavoritesFromApiProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$getAllFavoritesFromApiHash();

  @$internal
  @override
  $StreamProviderElement<List<PokemonDetailEntity>> $createElement(
          $ProviderPointer pointer) =>
      $StreamProviderElement(pointer);

  @override
  Stream<List<PokemonDetailEntity>> create(Ref ref) {
    return getAllFavoritesFromApi(ref);
  }
}

String _$getAllFavoritesFromApiHash() =>
    r'c5aa2130cbda57fb3a18b8c97090d2f5be39ae4a';
