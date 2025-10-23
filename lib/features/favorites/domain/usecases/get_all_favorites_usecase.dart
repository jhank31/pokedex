

import 'package:pokedex_global/core/utils/usecases/usecases.dart';
import 'package:pokedex_global/features/favorites/domain/repository/favorites_repository.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/entities.dart';

/// {@template get_all_favorites_use_case}
/// A use case that represents the get all favorites use case.
/// {@endtemplate}
class GetAllFavoritesUseCase implements UseCase<List<PokemonDetailEntity>, GetAllFavoritesParams> {
  final FavoritesRepository repository;

  GetAllFavoritesUseCase({required this.repository});

  @override
  Future<List<PokemonDetailEntity>> call(GetAllFavoritesParams params) async {
    return await repository.getAllFavorites(pokemonIds: params.pokemonIds);
  }
}

/// {@template get_all_favorites_params}
/// A class that represents the parameters for the get all favorites use case.
/// {@endtemplate}
class GetAllFavoritesParams {
  /// The list of pokemon ids.
  final List<int> pokemonIds;

  GetAllFavoritesParams({required this.pokemonIds});
}