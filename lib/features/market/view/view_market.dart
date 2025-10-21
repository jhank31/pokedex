import 'package:flutter/material.dart';

/// {@template market_view}
/// A view that displays the market.
/// {@endtemplate}
class MarketView extends StatelessWidget {
  const MarketView({super.key});

  /// {@macro market_view}
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Market View'),
      ),
    );
  }
}