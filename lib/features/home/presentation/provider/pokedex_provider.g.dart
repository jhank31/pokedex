// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokedex_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// {@template pokedex_list_provider}
/// Provider for the pokedex list.
/// {@endtemplate}

@ProviderFor(pokedexList)
const pokedexListProvider = PokedexListProvider._();

/// {@template pokedex_list_provider}
/// Provider for the pokedex list.
/// {@endtemplate}

final class PokedexListProvider extends $FunctionalProvider<
        AsyncValue<List<PokemonSummaryEntity>>,
        List<PokemonSummaryEntity>,
        FutureOr<List<PokemonSummaryEntity>>>
    with
        $FutureModifier<List<PokemonSummaryEntity>>,
        $FutureProvider<List<PokemonSummaryEntity>> {
  /// {@template pokedex_list_provider}
  /// Provider for the pokedex list.
  /// {@endtemplate}
  const PokedexListProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'pokedexListProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$pokedexListHash();

  @$internal
  @override
  $FutureProviderElement<List<PokemonSummaryEntity>> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<List<PokemonSummaryEntity>> create(Ref ref) {
    return pokedexList(ref);
  }
}

String _$pokedexListHash() => r'001f0c8efbd1303b16e2418d55cd0b8da46d6306';
