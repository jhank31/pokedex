// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_types_agregator_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// {@template pokemon_types_agregator}
/// A provider that maintains a global Set with the unique types of Pokémon
/// or weaknesses found when loading details.
/// {@endtemplate}

@ProviderFor(PokemonTypesAgregator)
const pokemonTypesAgregatorProvider = PokemonTypesAgregatorProvider._();

/// {@template pokemon_types_agregator}
/// A provider that maintains a global Set with the unique types of Pokémon
/// or weaknesses found when loading details.
/// {@endtemplate}
final class PokemonTypesAgregatorProvider
    extends $NotifierProvider<PokemonTypesAgregator, Set<String>> {
  /// {@template pokemon_types_agregator}
  /// A provider that maintains a global Set with the unique types of Pokémon
  /// or weaknesses found when loading details.
  /// {@endtemplate}
  const PokemonTypesAgregatorProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'pokemonTypesAgregatorProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$pokemonTypesAgregatorHash();

  @$internal
  @override
  PokemonTypesAgregator create() => PokemonTypesAgregator();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(Set<String> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<Set<String>>(value),
    );
  }
}

String _$pokemonTypesAgregatorHash() =>
    r'7c2eb443a88c936157233d3e0c50102f25484c38';

/// {@template pokemon_types_agregator}
/// A provider that maintains a global Set with the unique types of Pokémon
/// or weaknesses found when loading details.
/// {@endtemplate}

abstract class _$PokemonTypesAgregator extends $Notifier<Set<String>> {
  Set<String> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<Set<String>, Set<String>>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<Set<String>, Set<String>>, Set<String>, Object?, Object?>;
    element.handleValue(ref, created);
  }
}
