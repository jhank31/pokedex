import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hive_crypto_wallet_app/features/home/view/home_view.dart';

/// {@template home_page}
/// A page that displays the home view.
/// {@endtemplate}
@RoutePage()
class HomePage extends StatelessWidget {
  /// {@macro home_page}
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return HomeView();
  }
}
