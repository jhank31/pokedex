import 'package:talker/talker.dart';

/// {@template app_talker}
/// AppTalker is a logger for the app
/// {@endtemplate}
class AppTalker {
  const AppTalker({
    String? tag,
  }) : _tag = tag;

  static final Talker _talker = Talker();

  static Talker get instanciaTalker => _talker;

  /// tag to identify the origin of log
  final String? _tag;

  /// method to register logs of type [info]
  void info(String message) {
    final tagMessage = _tag != null ? '[$_tag] : ' : '';
    _talker.info('$tagMessage$message');
  }

  /// method to register logs of type [warning]
  void warning(String message) {
    final tagMessage = _tag != null ? '[$_tag] : ' : '';
    _talker.warning('$tagMessage$message');
  }

  /// method to register logs of type [error]
  void error(String message) {
    final tagMessage = _tag != null ? '[$_tag] : ' : '';
    _talker.error('$tagMessage$message');
  }

  /// method to register logs of type [debug]
  void debug(String message) {
    final tagMessage = _tag != null ? '[$_tag] : ' : '';
    _talker.debug('$tagMessage$message');
  }

  /// method to register logs of type [critical]
  void critical(String message) {
    final tagMessage = _tag != null ? '[$_tag] : ' : '';
    _talker.critical('$tagMessage$message');
  }

  /// method to handle exceptions and register logs of type [error]
  void handleException(
  Object exception,
  StackTrace stackTrace, [
  String? message,
]) {
  final tagMessage = _tag != null ? '[$_tag] : ' : '';
  _talker.handle(exception, stackTrace, '$tagMessage$message');
}

}
