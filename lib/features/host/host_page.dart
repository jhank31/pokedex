import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_global/features/host/view/host_view.dart';

/// {@template host_page}
/// A page that displays the host view.
/// {@endtemplate}
@RoutePage()
class HostPage extends StatelessWidget {
  /// {@macro host_page}
  const HostPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const HostView();
  }
}
