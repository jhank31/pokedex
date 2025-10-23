import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex_global/core/errors/failures/app_failure.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/entities.dart';

part 'pokedex_state.freezed.dart';

/// {@template pokedex_state}
/// State for the pokedex list.
/// {@endtemplate}
@freezed
abstract class PokedexState with _$PokedexState {
  /// {@macro pokedex_state}
  const factory PokedexState({
    @Default([]) List<PokemonDetailEntity> pokemons,
    @Default(false) bool isLoading,
    @Default(false) bool isLoadingMore,
    @Default(false) bool hasActiveFilters,
    @Default([]) List<String> activeFilters,
    AppFailure? failure,
  }) = _PokedexState;
}
