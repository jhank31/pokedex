import 'package:pokedex_global/core/errors/failures/app_failure.dart';

/// {@template unauthorized_exception}
/// Exception thrown when authentication/authorization fails.
/// This includes 401 (Unauthorized) and 403 (Forbidden) errors.
/// {@endtemplate}
class UnauthorizedException extends AppFailure {
  /// {@macro unauthorized_exception}
  const UnauthorizedException({
    required super.message,
    super.code,
    super.stackTrace,
    super.exception,
  });

  /// Creates an UnauthorizedException for authentication failure (401)
  factory UnauthorizedException.authenticationFailed({
    String? message,
    Object? exception,
    StackTrace? stackTrace,
  }) =>
      UnauthorizedException(
        message: message ?? 'Authentication failed. Please login again.',
        code: 'UNAUTHORIZED_401',
        exception: exception,
        stackTrace: stackTrace,
      );

  /// Creates an UnauthorizedException for forbidden access (403)
  factory UnauthorizedException.forbidden({
    String? message,
    Object? exception,
    StackTrace? stackTrace,
  }) =>
      UnauthorizedException(
        message: message ?? 'Access forbidden. You don\'t have permission.',
        code: 'FORBIDDEN_403',
        exception: exception,
        stackTrace: stackTrace,
      );

  @override
  String get userMessage =>
      'Authentication error. Please check your credentials.';
}
