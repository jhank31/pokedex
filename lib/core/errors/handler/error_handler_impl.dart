import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:pokedex_global/core/errors/exceptions/network_exception.dart';
import 'package:pokedex_global/core/errors/exceptions/not_found_exception.dart';
import 'package:pokedex_global/core/errors/exceptions/server_exception.dart';
import 'package:pokedex_global/core/errors/exceptions/unauthorized_exception.dart';
import 'package:pokedex_global/core/errors/exceptions/unknown_exception.dart';
import 'package:pokedex_global/core/errors/exceptions/validation_exception.dart';
import 'package:pokedex_global/core/errors/failures/app_failure.dart';
import 'package:pokedex_global/core/errors/handler/error_handler.dart';
import 'package:pokedex_global/core/logging/logs/app_talker.dart';

/// {@template error_handler_impl}
/// Implementation of [ErrorHandler] that converts exceptions into
/// typed AppFailure exceptions and logs them using AppTalker.
/// {@endtemplate}
class ErrorHandlerImpl implements ErrorHandler {
  /// The logger instance
  final AppTalker _logger;

  /// {@macro error_handler_impl}
  const ErrorHandlerImpl({
    required AppTalker logger,
  }) : _logger = logger;

  @override
  AppFailure handleError(
    Object error,
    StackTrace stackTrace, {
    String? context,
  }) {
    // If it's already an AppFailure, just log and return it
    if (error is AppFailure) {
      _logError(error, stackTrace, context);
      return error;
    }

    // Convert the error to an appropriate AppFailure
    final failure = _convertToAppFailure(error, stackTrace);
    _logError(failure, stackTrace, context);
    return failure;
  }

  /// Converts a raw error to an appropriate AppFailure
  AppFailure _convertToAppFailure(Object error, StackTrace stackTrace) {
    // Handle Dio exceptions (HTTP client)
    if (error is DioException) {
      return _handleDioException(error, stackTrace);
    }

    // Handle socket exceptions (network issues)
    if (error is SocketException) {
      return NetworkException.noConnection(
        exception: error,
        stackTrace: stackTrace,
      );
    }

    // Handle timeout exceptions
    if (error is TimeoutException) {
      return NetworkException.timeout(
        exception: error,
        stackTrace: stackTrace,
      );
    }

    // Handle format exceptions (parsing errors)
    if (error is FormatException) {
      return ValidationException.parsingError(
        message: error.message,
        exception: error,
        stackTrace: stackTrace,
      );
    }

    // Handle type errors (usually data parsing issues)
    if (error is TypeError) {
      return ValidationException.parsingError(
        message: 'Type error: ${error.toString()}',
        exception: error,
        stackTrace: stackTrace,
      );
    }

    // Default to unknown exception
    return UnknownException.fromError(
      exception: error,
      stackTrace: stackTrace,
    );
  }

  /// Handles DioException and converts it to appropriate AppFailure
  AppFailure _handleDioException(DioException error, StackTrace stackTrace) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return NetworkException.timeout(
          exception: error,
          stackTrace: stackTrace,
        );

      case DioExceptionType.connectionError:
        return NetworkException.noConnection(
          exception: error,
          stackTrace: stackTrace,
        );

      case DioExceptionType.badResponse:
        return _handleBadResponse(error, stackTrace);

      case DioExceptionType.cancel:
        return UnknownException(
          message: 'Request was cancelled',
          code: 'REQUEST_CANCELLED',
          exception: error,
          stackTrace: stackTrace,
        );

      case DioExceptionType.badCertificate:
        return NetworkException(
          message: 'SSL certificate verification failed',
          code: 'BAD_CERTIFICATE',
          exception: error,
          stackTrace: stackTrace,
        );

      case DioExceptionType.unknown:
        return UnknownException.fromError(
          exception: error,
          stackTrace: stackTrace,
          additionalInfo: error.message,
        );
    }
  }

  /// Handles bad HTTP responses based on status code
  AppFailure _handleBadResponse(DioException error, StackTrace stackTrace) {
    final statusCode = error.response?.statusCode;
    final responseData = error.response?.data;

    if (statusCode == null) {
      return NetworkException(
        message: 'Bad response from server',
        code: 'BAD_RESPONSE',
        exception: error,
        stackTrace: stackTrace,
      );
    }

    // Extract message from response if available
    String? message;
    if (responseData is Map<String, dynamic>) {
      message = responseData['message'] as String? ??
          responseData['error'] as String?;
    }

    // Handle different status codes
    switch (statusCode) {
      case 400:
        return ValidationException(
          message: message ?? 'Bad request',
          code: 'BAD_REQUEST_400',
          exception: error,
          stackTrace: stackTrace,
        );

      case 401:
        return UnauthorizedException.authenticationFailed(
          message: message,
          exception: error,
          stackTrace: stackTrace,
        );

      case 403:
        return UnauthorizedException.forbidden(
          message: message,
          exception: error,
          stackTrace: stackTrace,
        );

      case 404:
        return NotFoundException(
          message: message ?? 'Resource not found',
          code: 'NOT_FOUND_404',
          exception: error,
          stackTrace: stackTrace,
        );

      case >= 500 && < 600:
        return ServerException.fromStatusCode(
          statusCode: statusCode,
          message: message,
          exception: error,
          stackTrace: stackTrace,
        );

      case _:
        return NetworkException.badResponse(
          statusCode: statusCode,
          message: message,
          exception: error,
          stackTrace: stackTrace,
        );
    }
  }

  /// Logs the error using AppTalker
  void _logError(AppFailure failure, StackTrace stackTrace, String? context) {
    final contextMsg = context != null ? ' [Context: $context]' : '';
    final message = '${failure.developerMessage}$contextMsg';

    _logger.handleException(
      failure,
      stackTrace,
      message,
    );
  }

  @override
  Never throwError(
    Object error,
    StackTrace stackTrace, {
    String? context,
  }) {
    throw handleError(error, stackTrace, context: context);
  }

  @override
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

  @override
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
