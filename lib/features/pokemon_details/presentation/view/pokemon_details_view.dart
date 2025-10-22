import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/entities.dart';

class PokemonDetailsView extends ConsumerWidget {
  /// {@macro pokemon_details_view}
  const PokemonDetailsView({super.key, required this.pokemon});

  /// The pokemon detail of the pokemon.
  final PokemonDetailEntity pokemon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(pokemon.imageUrl),
            Text(pokemon.name),
            Text(pokemon.height.toString()),
            Text(pokemon.weight.toString()),
            Text(pokemon.abilities.map((e) => e).join(', ')),
          ],
        ),
    );
  }
}
