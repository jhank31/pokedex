import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_global/features/splash/presentation/view/splash_vew.dart';

/// {@template splash_page}
/// The splash page for the application.
/// {@endtemplate}
@RoutePage()
class SplashPage extends StatelessWidget {
  /// {@macro splash_page}
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const SplashView();
  }
}
