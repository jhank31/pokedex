
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hive_crypto_wallet_app/features/market/view/view_market.dart';

/// {@template market_page}
/// A page that displays the market view.
/// {@endtemplate}
@RoutePage()
class MarketPage extends StatelessWidget {
  /// {@macro market_page}
  const MarketPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MarketView();
  }
}