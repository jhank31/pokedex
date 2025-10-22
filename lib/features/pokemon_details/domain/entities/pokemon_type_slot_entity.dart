import 'package:pokedex_global/features/pokemon_details/data/models/pokemon_detail.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/entities.dart';

/// {@template pokemon_type_slot_entity}
/// An entity that represents the type slot of a pokemon.
/// {@endtemplate}
class PokemonTypeSlotEntity {
  /// {@macro pokemon_type_slot_entity}
  const PokemonTypeSlotEntity({
    required this.slot,
    required this.type,
  });

  /// The slot of the pokemon type.
  final int slot;

  /// The type of the pokemon.
  final PokemonTypeEntity type;

  /// Creates a copy of this entity with the given fields replaced with new values.
  PokemonTypeSlotEntity copyWith({
    int? slot,
    PokemonTypeEntity? type,
  }) {
    return PokemonTypeSlotEntity(
      slot: slot ?? this.slot,
      type: type ?? this.type,
    );
  }

  /// Converts this entity to a model.
  PokemonTypeSlot toModel() {
    return PokemonTypeSlot(
      slot: slot,
      type: type.toModel(),
    );
  }

  /// Creates an entity from a model.
  factory PokemonTypeSlotEntity.fromModel(PokemonTypeSlot model) {
    return PokemonTypeSlotEntity(
      slot: model.slot,
      type: PokemonTypeEntity.fromModel(model.type),
    );
  }
}
