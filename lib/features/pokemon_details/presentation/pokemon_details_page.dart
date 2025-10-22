import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/entities.dart';
import 'package:pokedex_global/features/pokemon_details/presentation/view/pokemon_details_view.dart';

/// {@template pokemon_details_page}
/// A page that displays the pokemon details.
/// {@endtemplate}
@RoutePage()
class PokemonDetailsPage extends StatelessWidget {
  /// {@macro pokemon_details_page}
  const PokemonDetailsPage({super.key, required this.pokemon});

  /// The pokemon detail of the pokemon.
  final PokemonDetailEntity pokemon;

  @override
  Widget build(BuildContext context) {
    return PokemonDetailsView(pokemon: pokemon);
  }
}
