import 'package:dio/dio.dart';
import 'package:pokedex_global/core/network/endpoints/endpoints.dart';
import 'package:pokedex_global/features/home/data/models/models.dart';

/// {@template pokedex_datasource}
/// A datasource that contains the methods to get the pokemons.
/// {@endtemplate}
abstract interface class PokedexDatasource {
  Future<PokemonListResponse> getPokemonList(
      {required int limit, required int offset});
  
}

/// {@template pokedex_datasource_impl}
/// A implementation of the pokedex datasource.
/// {@endtemplate}
class PokedexDatasourceImpl implements PokedexDatasource {
  /// The dio instance.
  final Dio dio;

  /// {@macro pokedex_datasource_impl}
  PokedexDatasourceImpl({required this.dio});

  @override
  Future<PokemonListResponse> getPokemonList(
      {required int limit, required int offset}) async {
    try {
      final res = await dio.get(
        PokemonEndpoints.getPokemonList,
        queryParameters: {'limit': limit, 'offset': offset},
      );
      return PokemonListResponse.fromJson(res.data);
    } catch (e) {
      throw Exception(e);
    }
  }

  
}
