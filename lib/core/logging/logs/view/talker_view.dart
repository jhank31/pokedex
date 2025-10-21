import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hive_crypto_wallet_app/core/logging/logs/app_talker.dart';
import 'package:talker_flutter/talker_flutter.dart';

/// {@template talker_view}
/// TalkerView is a widget that displays the talker logs
/// {@endtemplate}
@RoutePage()
class TalkerView extends StatelessWidget {
  /// {@macro talker_view}
  const TalkerView({super.key});

  @override
  Widget build(BuildContext context) {
    final appTalker = AppTalker.instanciaTalker;
    return TalkerScreen(
      talker: appTalker,
      theme: TalkerScreenTheme(
        logColors: {
          'verbose': Colors.green.shade300,
          'exception': Colors.orange,
          'error': Colors.red,
          'debug': Colors.lightBlue[300]!,
          'info': Colors.blue[500]!,
        },
      ),
      appBarTitle: 'Logs Page',
    );
  }
}
