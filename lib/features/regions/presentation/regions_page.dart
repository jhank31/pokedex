import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_global/features/regions/presentation/view/regions_view.dart';

/// {@template regions_page}
/// A page that displays the regions.
/// {@endtemplate}
@RoutePage()
class RegionsPage extends StatelessWidget {
  /// {@macro regions_page}
  const RegionsPage({super.key});
  @override
  Widget build(BuildContext context) {
    return const RegionsView();
  }
}