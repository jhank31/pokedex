import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_global/features/favorites/presentation/view/favorites_view.dart';

/// {@template favorites_page}
/// A page that displays the favorites.
/// {@endtemplate}
@RoutePage()
class FavoritesPage extends StatelessWidget {
  /// {@macro favorites_page}
  const FavoritesPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const FavoritesView();
  }
}
