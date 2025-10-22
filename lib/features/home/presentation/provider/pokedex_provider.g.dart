// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokedex_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// {@template pokedex_list}
/// Provider for the pokedex list.
/// {@endtemplate}

@ProviderFor(PokedexList)
const pokedexListProvider = PokedexListProvider._();

/// {@template pokedex_list}
/// Provider for the pokedex list.
/// {@endtemplate}
final class PokedexListProvider
    extends $AsyncNotifierProvider<PokedexList, List<PokemonDetailEntity>> {
  /// {@template pokedex_list}
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
  PokedexList create() => PokedexList();
}

String _$pokedexListHash() => r'11ae152cd8b737371c925f3fb888d575b56079d1';

/// {@template pokedex_list}
/// Provider for the pokedex list.
/// {@endtemplate}

abstract class _$PokedexList extends $AsyncNotifier<List<PokemonDetailEntity>> {
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
