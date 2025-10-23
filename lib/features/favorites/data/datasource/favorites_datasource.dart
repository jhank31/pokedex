import 'package:dio/dio.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/entities.dart';
import 'package:pokedex_global/features/pokemon_details/domain/usecases/usecases.dart';

/// {@template favorites_datasource}
/// A datasource that contains the methods to get the favorites.
/// {@endtemplate}
abstract interface class FavoritesDatasource {
  /// Get all favorites.
  Future<List<PokemonDetailEntity>> getAllFavorites(
      {required List<int> pokemonIds});
}

/// {@template favorites_datasource_impl}
/// A implementation of the favorites datasource.
/// {@endtemplate}
class FavoritesDatasourceImpl implements FavoritesDatasource {
  /// The database of the favorites datasource.
  final Dio dio;

  final GetPokemonDetailUseCase getPokemonDetailUseCase;

  /// {@macro favorites_datasource_impl}
  FavoritesDatasourceImpl(
      {required this.dio, required this.getPokemonDetailUseCase});

  @override
  Future<List<PokemonDetailEntity>> getAllFavorites(
      {required List<int> pokemonIds}) async {
    final futures = pokemonIds.map((id) => getPokemonDetailUseCase
        .call(GetPokemonDetailParams(idOrName: id.toString())));
    final favorites = await Future.wait(futures);
    return favorites;
  }
}
