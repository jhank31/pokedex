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

  /// Creates a CacheException for read operations
  factory CacheException.readError({
    String? message,
    Object? exception,
    StackTrace? stackTrace,
  }) =>
      CacheException(
        message: message ?? 'Failed to read from local storage',
        code: 'CACHE_READ_ERROR',
        exception: exception,
        stackTrace: stackTrace,
      );

  /// Creates a CacheException for write operations
  factory CacheException.writeError({
    String? message,
    Object? exception,
    StackTrace? stackTrace,
  }) =>
      CacheException(
        message: message ?? 'Failed to write to local storage',
        code: 'CACHE_WRITE_ERROR',
        exception: exception,
        stackTrace: stackTrace,
      );

  /// Creates a CacheException for delete operations
  factory CacheException.deleteError({
    String? message,
    Object? exception,
    StackTrace? stackTrace,
  }) =>
      CacheException(
        message: message ?? 'Failed to delete from local storage',
        code: 'CACHE_DELETE_ERROR',
        exception: exception,
        stackTrace: stackTrace,
      );

  /// Creates a CacheException when data is not found
  factory CacheException.notFound({
    String? message,
    Object? exception,
    StackTrace? stackTrace,
  }) =>
      CacheException(
        message: message ?? 'Data not found in local storage',
        code: 'CACHE_NOT_FOUND',
        exception: exception,
        stackTrace: stackTrace,
      );

  @override
  String get userMessage => 'Local storage error. Please try again.';
}
