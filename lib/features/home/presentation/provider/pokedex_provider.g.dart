// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokedex_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(PokedexList)
const pokedexListProvider = PokedexListProvider._();

final class PokedexListProvider
    extends $AsyncNotifierProvider<PokedexList, PokedexState> {
  const PokedexListProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'pokedexListProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$pokedexListHash();

  @$internal
  @override
  PokedexList create() => PokedexList();
}

String _$pokedexListHash() => r'31a61133bbf78864f1d55309436cfa986f821237';

abstract class _$PokedexList extends $AsyncNotifier<PokedexState> {
  FutureOr<PokedexState> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<PokedexState>, PokedexState>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<AsyncValue<PokedexState>, PokedexState>,
        AsyncValue<PokedexState>,
        Object?,
        Object?>;
    element.handleValue(ref, created);
  }
}
