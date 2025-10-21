import 'package:hive_crypto_wallet_app/core/logging/logs/app_talker.dart';

/// {@template talker_factory}
/// TalkerFactory is a factory for creating instances of [AppTalker]
/// {@endtemplate}
class TalkerFactory {
  static AppTalker createTalker({required String tag}) {
    return AppTalker(tag: tag);
  }
}
