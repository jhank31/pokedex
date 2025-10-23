import 'package:dio/dio.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_global/core/errors/errors.dart';
import 'package:pokedex_global/core/logging/logs/app_talker.dart';
import 'package:pokedex_global/features/favorites/data/datasource/favorites_datasource.dart';
import 'package:pokedex_global/features/favorites/domain/repository/favorites_repository.dart';
import 'package:pokedex_global/features/home/data/datasource/pokedex_datasource.dart';
import 'package:pokedex_global/features/home/domain/repository/pokedex_repository.dart';
import 'package:pokedex_global/features/pokemon_details/data/datasource/pokemon_details_datasource.dart';
import 'package:pokedex_global/features/pokemon_details/domain/repository/pokemon_details_repository.dart';
import 'package:pokedex_global/features/pokemon_details/domain/usecases/usecases.dart';

/// Mock class for Dio
class MockDio extends Mock implements Dio {}

/// Mock class for Response
class MockResponse<T> extends Mock implements Response<T> {}

/// Mock class for PokemonDetailsDatasource
class MockPokemonDetailsDatasource extends Mock
    implements PokemonDetailsDatasource {}

/// Mock class for PokemonDetailsRepository
class MockPokemonDetailsRepository extends Mock
    implements PokemonDetailsRepository {}

/// Mock class for RequestOptions
class MockRequestOptions extends Mock implements RequestOptions {}

/// Mock class for AppTalker
class MockAppTalker extends Mock implements AppTalker {}

/// Mock class for ErrorHandler
class MockErrorHandler extends Mock implements ErrorHandler {}

/// Mock class for PokedexDatasource
class MockPokedexDatasource extends Mock implements PokedexDatasource {}

/// Mock class for PokedexRepository
class MockPokedexRepository extends Mock implements PokedexRepository {}

/// Mock class for GetPokemonDetailUseCase
class MockGetPokemonDetailUseCase extends Mock
    implements GetPokemonDetailUseCase {}

/// Mock class for FavoritesDatasource
class MockFavoritesDatasource extends Mock implements FavoritesDatasource {}

/// Mock class for FavoritesRepository
class MockFavoritesRepository extends Mock implements FavoritesRepository {}

/// Fake StackTrace for testing
class FakeStackTrace extends Fake implements StackTrace {}

/// Registers fallback values for Mocktail
void registerFallbackValues() {
  registerFallbackValue(
    RequestOptions(path: ''),
  );
  registerFallbackValue(FakeStackTrace());
}
