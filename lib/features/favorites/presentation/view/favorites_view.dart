import 'package:flutter/material.dart';

/// {@template favorites_view}
/// A view that displays the favorites.
/// {@endtemplate}
class FavoritesView extends StatelessWidget {
  /// {@macro favorites_view}
  const FavoritesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Favorites View'),
      ),
    );
  }
}