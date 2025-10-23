// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokedex_search_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PokedexSearch)
const pokedexSearchProvider = PokedexSearchProvider._();

final class PokedexSearchProvider
    extends $AsyncNotifierProvider<PokedexSearch, List<PokemonDetailEntity>> {
  const PokedexSearchProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'pokedexSearchProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$pokedexSearchHash();

  @$internal
  @override
  PokedexSearch create() => PokedexSearch();
}

String _$pokedexSearchHash() => r'810be8379d183732dcf444896ca3f0e4023d2db6';

abstract class _$PokedexSearch
    extends $AsyncNotifier<List<PokemonDetailEntity>> {
  FutureOr<List<PokemonDetailEntity>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<PokemonDetailEntity>>,
        List<PokemonDetailEntity>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<List<PokemonDetailEntity>>,
            List<PokemonDetailEntity>>,
        AsyncValue<List<PokemonDetailEntity>>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
