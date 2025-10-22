import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_global/features/home/presentation/view/home_view.dart';

/// {@template home_page}
/// A page that displays the home view.
/// {@endtemplate}
@RoutePage()
class HomePage extends StatelessWidget {
  /// {@macro home_page}
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HomeView();
  }
}
