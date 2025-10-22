import 'package:pokedex_global/features/pokemon_details/data/models/pokemon_detail.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/entities.dart';

/// {@template pokemon_ability_slot_entity}
/// An entity that represents the ability slot of a pokemon.
/// {@endtemplate}
class PokemonAbilitySlotEntity {
  /// {@macro pokemon_ability_slot_entity}
  const PokemonAbilitySlotEntity({
    required this.isHidden,
    required this.slot,
    required this.ability,
  });

  /// The is hidden of the pokemon ability.
  final bool isHidden;

  /// The slot of the pokemon ability.
  final int slot;

  /// The ability of the pokemon.
  final PokemonAbilityEntity ability;

  /// Creates a copy of this entity with the given fields replaced with new values.
  PokemonAbilitySlotEntity copyWith({
    bool? isHidden,
    int? slot,
    PokemonAbilityEntity? ability,
  }) {
    return PokemonAbilitySlotEntity(
      isHidden: isHidden ?? this.isHidden,
      slot: slot ?? this.slot,
      ability: ability ?? this.ability,
    );
  }

  /// Converts this entity to a model.
  PokemonAbilitySlot toModel() {
    return PokemonAbilitySlot(
      isHidden: isHidden,
      slot: slot,
      ability: ability.toModel(),
    );
  }

  /// Creates an entity from a model.
  factory PokemonAbilitySlotEntity.fromModel(PokemonAbilitySlot model) {
    return PokemonAbilitySlotEntity(
      isHidden: model.isHidden ?? false,
      slot: model.slot,
      ability: PokemonAbilityEntity.fromModel(model.ability),
    );
  }
}
