import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_global/core/network/endpoints/endpoints.dart';
import 'package:pokedex_global/features/pokemon_details/data/datasource/pokemon_details_datasource.dart';
import 'package:pokedex_global/features/pokemon_details/data/models/pokemon_detail.dart';

import '../../../../fixtures/pokemon_detail_fixture.dart';
import '../../../../helpers/test_helpers.dart';

void main() {
  late MockDio mockDio;
  late PokemonDetailsDatasourceImpl datasource;

  setUp(() {
    mockDio = MockDio();
    datasource = PokemonDetailsDatasourceImpl(dio: mockDio);
  });

  group('PokemonDetailsDatasource - getPokemonDetail', () {
    const tPokemonName = 'pikachu';
    final tPokemonDetail = PokemonDetailFixture.pokemonDetailModel;
    final tPokemonDetailJson = PokemonDetailFixture.pokemonDetailJson;

    test(
      'should return PokemonDetail when the call to dio is successful',
      () async {
        // Arrange
        when(() =>
                mockDio.get('${PokemonEndpoints.getPokemonList}/$tPokemonName'))
            .thenAnswer(
          (_) async => Response(
            data: tPokemonDetailJson,
            statusCode: 200,
            requestOptions: RequestOptions(
              path: '${PokemonEndpoints.getPokemonList}/$tPokemonName',
            ),
          ),
        );

        // Act
        final result =
            await datasource.getPokemonDetail(idOrName: tPokemonName);

        // Assert
        expect(result, isA<PokemonDetail>());
        expect(result.id, tPokemonDetail.id);
        expect(result.name, tPokemonDetail.name);
        verify(
          () => mockDio.get('${PokemonEndpoints.getPokemonList}/$tPokemonName'),
        ).called(1);
      },
    );

    test(
      'should throw an exception when the call to dio fails',
      () async {
        // Arrange
        when(() =>
                mockDio.get('${PokemonEndpoints.getPokemonList}/$tPokemonName'))
            .thenThrow(
          DioException(
            requestOptions: RequestOptions(
              path: '${PokemonEndpoints.getPokemonList}/$tPokemonName',
            ),
            type: DioExceptionType.connectionTimeout,
          ),
        );

        // Act
        final call = datasource.getPokemonDetail;

        // Assert
        expect(
          () => call(idOrName: tPokemonName),
          throwsA(isA<DioException>()),
        );
      },
    );

    test(
      'should throw an exception when the response data is invalid',
      () async {
        // Arrange
        when(() =>
                mockDio.get('${PokemonEndpoints.getPokemonList}/$tPokemonName'))
            .thenAnswer(
          (_) async => Response(
            data: {'invalid': 'data'},
            statusCode: 200,
            requestOptions: RequestOptions(
              path: '${PokemonEndpoints.getPokemonList}/$tPokemonName',
            ),
          ),
        );

        // Act
        final call = datasource.getPokemonDetail;

        // Assert
        expect(
          () => call(idOrName: tPokemonName),
          throwsA(isA<TypeError>()),
        );
      },
    );
  });

  group('PokemonDetailsDatasource - getPokemonSpecies', () {
    const tPokemonName = 'pikachu';
    final tSpeciesJson = PokemonDetailFixture.pokemonSpeciesJson;

    test(
      'should return species data when the call to dio is successful',
      () async {
        // Arrange
        when(() => mockDio.get(
            '${PokemonEndpoints.getPokemonSpecies}/$tPokemonName')).thenAnswer(
          (_) async => Response(
            data: tSpeciesJson,
            statusCode: 200,
            requestOptions: RequestOptions(
              path: '${PokemonEndpoints.getPokemonSpecies}/$tPokemonName',
            ),
          ),
        );

        // Act
        final result = await datasource.getPokemonSpecies(name: tPokemonName);

        // Assert
        expect(result, isA<Map<String, dynamic>>());
        expect(result['color']['name'], 'yellow');
        verify(
          () => mockDio
              .get('${PokemonEndpoints.getPokemonSpecies}/$tPokemonName'),
        ).called(1);
      },
    );

    test(
      'should throw an exception when the call fails',
      () async {
        // Arrange
        when(() => mockDio.get(
            '${PokemonEndpoints.getPokemonSpecies}/$tPokemonName')).thenThrow(
          DioException(
            requestOptions: RequestOptions(
              path: '${PokemonEndpoints.getPokemonSpecies}/$tPokemonName',
            ),
            response: Response(
              statusCode: 404,
              requestOptions: RequestOptions(
                path: '${PokemonEndpoints.getPokemonSpecies}/$tPokemonName',
              ),
            ),
          ),
        );

        // Act
        final call = datasource.getPokemonSpecies;

        // Assert
        expect(
          () => call(name: tPokemonName),
          throwsA(isA<DioException>()),
        );
      },
    );
  });

  group('PokemonDetailsDatasource - getPokemonType', () {
    const tTypeName = 'electric';
    final tTypeJson = PokemonDetailFixture.pokemonTypeElectricJson;

    test(
      'should return type data when the call to dio is successful',
      () async {
        // Arrange
        when(() => mockDio.get('${PokemonEndpoints.getPokemonType}/$tTypeName'))
            .thenAnswer(
          (_) async => Response(
            data: tTypeJson,
            statusCode: 200,
            requestOptions: RequestOptions(
              path: '${PokemonEndpoints.getPokemonType}/$tTypeName',
            ),
          ),
        );

        // Act
        final result = await datasource.getPokemonType(typeName: tTypeName);

        // Assert
        expect(result, isA<Map<String, dynamic>>());
        expect(result['name'], 'electric');
        expect(result['damage_relations'], isNotNull);
        verify(
          () => mockDio.get('${PokemonEndpoints.getPokemonType}/$tTypeName'),
        ).called(1);
      },
    );

    test(
      'should throw an exception when the call fails',
      () async {
        // Arrange
        when(() => mockDio.get('${PokemonEndpoints.getPokemonType}/$tTypeName'))
            .thenThrow(
          DioException(
            requestOptions: RequestOptions(
              path: '${PokemonEndpoints.getPokemonType}/$tTypeName',
            ),
            type: DioExceptionType.badResponse,
          ),
        );

        // Act
        final call = datasource.getPokemonType;

        // Assert
        expect(
          () => call(typeName: tTypeName),
          throwsA(isA<DioException>()),
        );
      },
    );
  });
}
