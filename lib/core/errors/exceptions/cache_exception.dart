import 'package:pokedex_global/core/errors/failures/app_failure.dart';

/// {@template cache_exception}
/// Exception thrown when there's an error with local cache/storage operations.
/// This includes database errors, file system errors, etc.
/// {@endtemplate}
class CacheException extends AppFailure {
  /// {@macro cache_exception}
  const CacheException({
    required super.message,
    super.code,
    super.stackTrace,
    super.exception,
  });

  
  @override
  String get userMessage => 'Local storage error. Please try again.';
}
