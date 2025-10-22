// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_details_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
/// {@template pokemon_details_provider}
/// Provider for the pokemon details.
/// {@endtemplate}

@ProviderFor(pokemonDetails)
const pokemonDetailsProvider = PokemonDetailsFamily._();

/// {@template pokemon_details_provider}
/// Provider for the pokemon details.
/// {@endtemplate}

final class PokemonDetailsProvider extends $FunctionalProvider<
        AsyncValue<PokemonDetailEntity>,
        PokemonDetailEntity,
        FutureOr<PokemonDetailEntity>>
    with
        $FutureModifier<PokemonDetailEntity>,
        $FutureProvider<PokemonDetailEntity> {
  /// {@template pokemon_details_provider}
  /// Provider for the pokemon details.
  /// {@endtemplate}
  const PokemonDetailsProvider._(
      {required PokemonDetailsFamily super.from,
      required String super.argument})
      : super(
          retry: null,
          name: r'pokemonDetailsProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$pokemonDetailsHash();

  @override
  String toString() {
    return r'pokemonDetailsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<PokemonDetailEntity> $createElement(
          $ProviderPointer pointer) =>
      $FutureProviderElement(pointer);

  @override
  FutureOr<PokemonDetailEntity> create(Ref ref) {
    final argument = this.argument as String;
    return pokemonDetails(
      ref,
      argument,
    );
  }

  @override
  bool operator ==(Object other) {
    return other is PokemonDetailsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$pokemonDetailsHash() => r'07ef79cd3115b967a7dd9d64699434f13acd5291';

/// {@template pokemon_details_provider}
/// Provider for the pokemon details.
/// {@endtemplate}

final class PokemonDetailsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<PokemonDetailEntity>, String> {
  const PokemonDetailsFamily._()
      : super(
          retry: null,
          name: r'pokemonDetailsProvider',
          dependencies: null,
          $allTransitiveDependencies: null,
          isAutoDispose: true,
        );

  /// {@template pokemon_details_provider}
  /// Provider for the pokemon details.
  /// {@endtemplate}

  PokemonDetailsProvider call(
    String name,
  ) =>
      PokemonDetailsProvider._(argument: name, from: this);

  @override
  String toString() => r'pokemonDetailsProvider';
}
