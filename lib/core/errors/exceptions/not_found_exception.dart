import 'package:pokedex_global/core/errors/failures/app_failure.dart';

/// {@template not_found_exception}
/// Exception thrown when a requested resource is not found.
/// This typically corresponds to 404 HTTP status codes.
/// {@endtemplate}
class NotFoundException extends AppFailure {
  /// The resource type that was not found
  final String? resourceType;

  /// {@macro not_found_exception}
  const NotFoundException({
    required super.message,
    this.resourceType,
    super.code,
    super.stackTrace,
    super.exception,
  });

  @override
  String get userMessage => 'The requested item could not be found.';

  @override
  String get developerMessage {
    final buffer = StringBuffer();
    buffer.write('[$runtimeType]');
    if (code != null) {
      buffer.write(' Code: $code');
    }
    if (resourceType != null) {
      buffer.write(' Resource: $resourceType');
    }
    buffer.write(' - $message');
    if (exception != null) {
      buffer.write('\nOriginal exception: $exception');
    }
    return buffer.toString();
  }
}
