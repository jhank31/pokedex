
import 'package:pokedex_global/core/logging/logs/app_talker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'logs_provider.g.dart';

/// {@template app_talker_provider}
/// Provider that exposes a global instance of [AppTalker]
/// for logging in the entire application.
/// {@endtemplate}
@riverpod
AppTalker appTalker(Ref ref, String tag) {
  return AppTalker(tag: tag);
}
