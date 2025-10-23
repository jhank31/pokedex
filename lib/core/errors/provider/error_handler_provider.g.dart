// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'error_handler_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning
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

@ProviderFor(errorHandler)
const errorHandlerProvider = ErrorHandlerProvider._();

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

final class ErrorHandlerProvider
    extends $FunctionalProvider<ErrorHandler, ErrorHandler, ErrorHandler>
    with $Provider<ErrorHandler> {
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
  const ErrorHandlerProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'errorHandlerProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$errorHandlerHash();

  @$internal
  @override
  $ProviderElement<ErrorHandler> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ErrorHandler create(Ref ref) {
    return errorHandler(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ErrorHandler value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ErrorHandler>(value),
    );
  }
}

String _$errorHandlerHash() => r'f50acff10c6c41bd324d821ee1d8b70607815508';
