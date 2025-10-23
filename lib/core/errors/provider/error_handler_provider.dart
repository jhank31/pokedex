import 'package:pokedex_global/core/errors/handler/error_handler.dart';
import 'package:pokedex_global/core/errors/handler/error_handler_impl.dart';
import 'package:pokedex_global/core/logging/logs/app_talker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'error_handler_provider.g.dart';

/// {@template error_handler_provider}
/// Provider for the ErrorHandler instance.
///
/// This provides a singleton instance of ErrorHandler that can be
/// injected into repositories and other services.
///
/// Usage:
/// ```dart
/// class MyRepository {
///   final ErrorHandler errorHandler;
///
///   MyRepository({required this.errorHandler});
///
///   Future<Data> getData() async {
///     try {
///       return await apiClient.getData();
///     } catch (e, stackTrace) {
///       throw errorHandler.handleError(e, stackTrace);
///     }
///   }
/// }
/// ```
/// {@endtemplate}
@riverpod
ErrorHandler errorHandler(Ref ref) {
  return ErrorHandlerImpl(
    logger: const AppTalker(tag: 'ErrorHandler'),
  );
}
