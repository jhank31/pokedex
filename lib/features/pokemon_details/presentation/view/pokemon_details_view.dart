import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex_global/features/pokemon_details/presentation/provider/pokemon_details_provider.dart';

class PokemonDetailsView extends ConsumerWidget {
  /// {@macro pokemon_details_view}
  const PokemonDetailsView({super.key, required this.name});

  /// The name of the pokemon.
  final String name;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonDetails = ref.watch(pokemonDetailsProvider(name));
    return Scaffold(
      body: pokemonDetails.when(
        data: (data) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(data.imageUrl),
            Text(data.name),
            Text(data.height.toString()),
            Text(data.weight.toString()),
            Text(data.abilities.map((e) => e).join(', ')),
          ],
        ),
        error: (error, stackTrace) => Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(Icons.error_outline, size: 48, color: Colors.red),
              const SizedBox(height: 16),
              Text(
                'Error al cargar el Pokémon',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: 8),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  error.toString(),
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ),
            ],
          ),
        ),
        loading: () => const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
