import 'package:pokedex_global/core/errors/failures/app_failure.dart';

/// {@template server_exception}
/// Exception thrown when there's a server-side error.
/// This typically includes 5xx HTTP status codes.
/// {@endtemplate}
class ServerException extends AppFailure {
  /// {@macro server_exception}
  const ServerException({
    required super.message,
    super.code,
    super.stackTrace,
    super.exception,
  });

  /// Creates a ServerException with a specific status code
  factory ServerException.fromStatusCode({
    required int statusCode,
    String? message,
    Object? exception,
    StackTrace? stackTrace,
  }) =>
      ServerException(
        message: message ?? 'Server error occurred (Status: $statusCode)',
        code: 'SERVER_ERROR_$statusCode',
        exception: exception,
        stackTrace: stackTrace,
      );

 
  @override
  String get userMessage =>
      'Server error. Our team has been notified. Please try again later.';
}
