import 'package:pokedex_global/core/errors/failures/app_failure.dart';

/// {@template unknown_exception}
/// Exception thrown when an unexpected error occurs that doesn't fit
/// into any other category.
/// {@endtemplate}
class UnknownException extends AppFailure {
  /// {@macro unknown_exception}
  const UnknownException({
    required super.message,
    super.code,
    super.stackTrace,
    super.exception,
  });

  /// Creates an UnknownException from an unexpected error
  factory UnknownException.fromError({
    Object? exception,
    StackTrace? stackTrace,
    String? additionalInfo,
  }) {
    final msg = additionalInfo != null
        ? 'An unexpected error occurred: $additionalInfo'
        : 'An unexpected error occurred';
    return UnknownException(
      message: msg,
      code: 'UNKNOWN_ERROR',
      exception: exception,
      stackTrace: stackTrace,
    );
  }

  @override
  String get userMessage =>
      'An unexpected error occurred. Please try again later.';
}
