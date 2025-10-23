import 'package:pokedex_global/core/errors/failures/app_failure.dart';

/// {@template network_exception}
/// Exception thrown when there's a network-related error.
/// This includes connectivity issues, timeouts, DNS failures, etc.
/// {@endtemplate}
class NetworkException extends AppFailure {
  /// {@macro network_exception}
  const NetworkException({
    required super.message,
    super.code,
    super.stackTrace,
    super.exception,
  });

  /// Creates a NetworkException for connection timeout
  factory NetworkException.timeout({
    String? message,
    Object? exception,
    StackTrace? stackTrace,
  }) =>
      NetworkException(
        message: message ?? 'Connection timeout. Please try again.',
        code: 'NETWORK_TIMEOUT',
        exception: exception,
        stackTrace: stackTrace,
      );

  /// Creates a NetworkException for no internet connection
  factory NetworkException.noConnection({
    String? message,
    Object? exception,
    StackTrace? stackTrace,
  }) =>
      NetworkException(
        message:
            message ?? 'No internet connection. Please check your network.',
        code: 'NO_CONNECTION',
        exception: exception,
        stackTrace: stackTrace,
      );

  /// Creates a NetworkException for bad response
  factory NetworkException.badResponse({
    required int statusCode,
    String? message,
    Object? exception,
    StackTrace? stackTrace,
  }) =>
      NetworkException(
        message: message ?? 'Bad response from server (Status: $statusCode)',
        code: 'BAD_RESPONSE_$statusCode',
        exception: exception,
        stackTrace: stackTrace,
      );

  @override
  String get userMessage =>
      'Network error. Please check your connection and try again.';
}
