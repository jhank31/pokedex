/// {@template app_failure}
/// Base abstract class for all custom exceptions in the application.
/// This serves as the main contract for error handling.
///
/// All custom exceptions should extend this class.
/// {@endtemplate}
abstract class AppFailure implements Exception {
  /// The error message
  final String message;

  /// Optional error code for categorization
  final String? code;

  /// Optional stack trace for debugging
  final StackTrace? stackTrace;

  /// Optional original exception that caused this failure
  final Object? exception;

  /// {@macro app_failure}
  const AppFailure({
    required this.message,
    this.code,
    this.stackTrace,
    this.exception,
  });

  /// Get a user-friendly message
  String get userMessage => message;

  /// Get a developer-friendly message with more details
  String get developerMessage {
    final buffer = StringBuffer();
    buffer.write('[$runtimeType]');
    if (code != null) {
      buffer.write(' Code: $code');
    }
    buffer.write(' - $message');
    if (exception != null) {
      buffer.write('\nOriginal exception: $exception');
    }
    return buffer.toString();
  }

  @override
  String toString() => developerMessage;
}
