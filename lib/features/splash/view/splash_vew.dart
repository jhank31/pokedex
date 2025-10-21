import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hive_crypto_wallet_app/core/router/app_router.gr.dart';

/// {@template splash_view}
/// The splash view for the application.
/// {@endtemplate}
class SplashView extends StatelessWidget {
  /// {@macro splash_view}
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => context.pushRoute(HostRoute()),
          child: const Text('Ir a la pagina de inicio'),
        ),
      ),
    );
  }
}
