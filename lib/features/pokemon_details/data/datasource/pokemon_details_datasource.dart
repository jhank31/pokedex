import 'package:dio/dio.dart';
import 'package:pokedex_global/core/network/endpoints/endpoints.dart';
import 'package:pokedex_global/features/pokemon_details/data/models/models.dart';

/// {@template pokemon_details_datasource}
/// A datasource that contains the methods to get the pokemon details.
/// {@endtemplate}
abstract interface class PokemonDetailsDatasource {
  Future<PokemonDetail> getPokemonDetail({required String name});
  Future<Map<String, dynamic>> getPokemonSpecies({required String name});
  Future<Map<String, dynamic>> getPokemonType({required String typeName});
}

/// {@template pokemon_details_datasource_impl}
/// A implementation of the pokemon details datasource.
/// {@endtemplate}
class PokemonDetailsDatasourceImpl implements PokemonDetailsDatasource {
  /// The dio instance.
  final Dio dio;

  /// {@macro pokemon_details_datasource_impl}
  PokemonDetailsDatasourceImpl({required this.dio});

  @override
  Future<PokemonDetail> getPokemonDetail({required String name}) async {
    final res = await dio.get('${PokemonEndpoints.getPokemonList}/$name');
    return PokemonDetail.fromJson(res.data as Map<String, dynamic>);
  }

  @override
  Future<Map<String, dynamic>> getPokemonSpecies({required String name}) async {
    final res = await dio.get('${PokemonEndpoints.getPokemonSpecies}/$name');
    return res.data as Map<String, dynamic>;
  }

  @override
  Future<Map<String, dynamic>> getPokemonType(
      {required String typeName}) async {
    final res = await dio.get('${PokemonEndpoints.getPokemonType}/$typeName');
    return res.data as Map<String, dynamic>;
  }
}
