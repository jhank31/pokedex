import 'package:pokedex_global/core/errors/failures/app_failure.dart';

/// {@template error_handler}
/// A handler for errors in the application.
/// {@endtemplate}
abstract class ErrorHandler {
  /// Handles an error and returns an appropriate AppFailure
  ///
  /// This method should:
  /// 1. Identify the type of error
  /// 2. Log it appropriately
  /// 3. Return a typed AppFailure exception
  AppFailure handleError(
    Object error,
    StackTrace stackTrace, {
    String? context,
  });

  /// Handles an error and throws the appropriate AppFailure
  ///
  /// This is a convenience method that calls [handleError] and throws
  /// the result immediately.
  Never throwError(
    Object error,
    StackTrace stackTrace, {
    String? context,
  }) {
    throw handleError(error, stackTrace, context: context);
  }

  /// Executes a function and handles any errors that occur
  Future<T> execute<T>(
    Future<T> Function() operation, {
    String? context,
  }) async {
    try {
      return await operation();
    } catch (e, stackTrace) {
      throwError(e, stackTrace, context: context);
    }
  }

  /// Executes a synchronous function and handles any errors that occur
  T executeSync<T>(
    T Function() operation, {
    String? context,
  }) {
    try {
      return operation();
    } catch (e, stackTrace) {
      throwError(e, stackTrace, context: context);
    }
  }
}
