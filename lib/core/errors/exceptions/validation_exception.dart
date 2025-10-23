import 'package:pokedex_global/core/errors/failures/app_failure.dart';

/// {@template validation_exception}
/// Exception thrown when data validation fails.
/// This includes form validation, data parsing, etc.
/// {@endtemplate}
class ValidationException extends AppFailure {
  /// The field that failed validation (optional)
  final String? field;

  /// {@macro validation_exception}
  const ValidationException({
    required super.message,
    this.field,
    super.code,
    super.stackTrace,
    super.exception,
  });

  /// Creates a ValidationException for required field
  factory ValidationException.required({
    required String field,
    String? message,
    StackTrace? stackTrace,
  }) =>
      ValidationException(
        message: message ?? '$field is required',
        field: field,
        code: 'VALIDATION_REQUIRED',
        stackTrace: stackTrace,
      );

  /// Creates a ValidationException for invalid format
  factory ValidationException.invalidFormat({
    required String field,
    String? message,
    StackTrace? stackTrace,
  }) =>
      ValidationException(
        message: message ?? '$field has invalid format',
        field: field,
        code: 'VALIDATION_INVALID_FORMAT',
        stackTrace: stackTrace,
      );

  /// Creates a ValidationException for parsing errors
  factory ValidationException.parsingError({
    String? message,
    Object? exception,
    StackTrace? stackTrace,
  }) =>
      ValidationException(
        message: message ?? 'Failed to parse data',
        code: 'VALIDATION_PARSING_ERROR',
        exception: exception,
        stackTrace: stackTrace,
      );

  @override
  String get userMessage => message;

  @override
  String get developerMessage {
    final buffer = StringBuffer();
    buffer.write('[$runtimeType]');
    if (code != null) {
      buffer.write(' Code: $code');
    }
    if (field != null) {
      buffer.write(' Field: $field');
    }
    buffer.write(' - $message');
    if (exception != null) {
      buffer.write('\nOriginal exception: $exception');
    }
    return buffer.toString();
  }
}
