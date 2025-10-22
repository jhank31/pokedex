import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'api_client.g.dart';

/// {@template api_client}
/// The API client for the application.
/// {@endtemplate}
@riverpod
  Dio apiClient(Ref ref) {
  return Dio(BaseOptions(baseUrl:'https://pokeapi.co/api/v2/'));
}
