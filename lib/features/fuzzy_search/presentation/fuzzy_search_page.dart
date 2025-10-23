import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_global/features/fuzzy_search/presentation/view/fuzzy_search_view.dart';

/// {@template fuzzy_search_page}
/// A page that displays the fuzzy search.
/// {@endtemplate}
@RoutePage()
class FuzzySearchPage extends StatelessWidget {
  /// {@macro fuzzy_search_page}
  const FuzzySearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const FuzzySearchView();
  }
}
