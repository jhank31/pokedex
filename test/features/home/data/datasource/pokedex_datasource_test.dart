import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_global/core/network/endpoints/endpoints.dart';
import 'package:pokedex_global/features/home/data/datasource/pokedex_datasource.dart';
import 'package:pokedex_global/features/home/data/models/models.dart';

import '../../../../fixtures/pokemon_list_fixture.dart';
import '../../../../helpers/test_helpers.dart';

void main() {
  late MockDio mockDio;
  late PokedexDatasourceImpl datasource;

  setUp(() {
    mockDio = MockDio();
    datasource = PokedexDatasourceImpl(dio: mockDio);
  });

  group('PokedexDatasource - getPokemonList', () {
    const tLimit = 20;
    const tOffset = 0;
    final tPokemonListJson = PokemonListFixture.pokemonListJson;

    test(
      'should return PokemonListResponse when the call to dio is successful',
      () async {
        // Arrange
        when(() => mockDio.get(
              PokemonEndpoints.getPokemonList,
              queryParameters: {'limit': tLimit, 'offset': tOffset},
            )).thenAnswer(
          (_) async => Response(
            data: tPokemonListJson,
            statusCode: 200,
            requestOptions: RequestOptions(
              path: PokemonEndpoints.getPokemonList,
            ),
          ),
        );

        // Act
        final result = await datasource.getPokemonList(
          limit: tLimit,
          offset: tOffset,
        );

        // Assert
        expect(result, isA<PokemonListResponse>());
        expect(result.count, 1302);
        expect(result.results.length, 3);
        expect(result.results[0].name, 'bulbasaur');
        expect(result.results[1].name, 'charizard');
        expect(result.results[2].name, 'pikachu');
        verify(
          () => mockDio.get(
            PokemonEndpoints.getPokemonList,
            queryParameters: {'limit': tLimit, 'offset': tOffset},
          ),
        ).called(1);
      },
    );

    test(
      'should handle different limit and offset values',
      () async {
        // Arrange
        const differentLimit = 50;
        const differentOffset = 100;
        when(() => mockDio.get(
              PokemonEndpoints.getPokemonList,
              queryParameters: {
                'limit': differentLimit,
                'offset': differentOffset
              },
            )).thenAnswer(
          (_) async => Response(
            data: tPokemonListJson,
            statusCode: 200,
            requestOptions: RequestOptions(
              path: PokemonEndpoints.getPokemonList,
            ),
          ),
        );

        // Act
        final result = await datasource.getPokemonList(
          limit: differentLimit,
          offset: differentOffset,
        );

        // Assert
        expect(result, isA<PokemonListResponse>());
        verify(
          () => mockDio.get(
            PokemonEndpoints.getPokemonList,
            queryParameters: {
              'limit': differentLimit,
              'offset': differentOffset
            },
          ),
        ).called(1);
      },
    );

    test(
      'should throw an exception when the call to dio fails',
      () async {
        // Arrange
        when(() => mockDio.get(
              PokemonEndpoints.getPokemonList,
              queryParameters: {'limit': tLimit, 'offset': tOffset},
            )).thenThrow(
          DioException(
            requestOptions: RequestOptions(
              path: PokemonEndpoints.getPokemonList,
            ),
            type: DioExceptionType.connectionTimeout,
          ),
        );

        // Act
        final call = datasource.getPokemonList;

        // Assert
        expect(
          () => call(limit: tLimit, offset: tOffset),
          throwsA(isA<Exception>()),
        );
      },
    );

    test(
      'should throw an exception when the response data is invalid',
      () async {
        // Arrange
        when(() => mockDio.get(
              PokemonEndpoints.getPokemonList,
              queryParameters: {'limit': tLimit, 'offset': tOffset},
            )).thenAnswer(
          (_) async => Response(
            data: {'invalid': 'data'},
            statusCode: 200,
            requestOptions: RequestOptions(
              path: PokemonEndpoints.getPokemonList,
            ),
          ),
        );

        // Act
        final call = datasource.getPokemonList;

        // Assert
        expect(
          () => call(limit: tLimit, offset: tOffset),
          throwsA(isA<Exception>()),
        );
      },
    );

    test(
      'should handle network errors correctly',
      () async {
        // Arrange
        when(() => mockDio.get(
              PokemonEndpoints.getPokemonList,
              queryParameters: {'limit': tLimit, 'offset': tOffset},
            )).thenThrow(
          DioException(
            requestOptions: RequestOptions(
              path: PokemonEndpoints.getPokemonList,
            ),
            response: Response(
              statusCode: 500,
              requestOptions: RequestOptions(
                path: PokemonEndpoints.getPokemonList,
              ),
            ),
            type: DioExceptionType.badResponse,
          ),
        );

        // Act & Assert
        expect(
          () => datasource.getPokemonList(limit: tLimit, offset: tOffset),
          throwsA(isA<Exception>()),
        );
      },
    );
  });
}
