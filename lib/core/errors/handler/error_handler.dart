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
  /// This method throws the appropriate AppFailure exception.
  Never throwError(
    Object error,
    StackTrace stackTrace, {
    String? context,
  }) {
    throw handleError(error, stackTrace, context: context);
  }

}
