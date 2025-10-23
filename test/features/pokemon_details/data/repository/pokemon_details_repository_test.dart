import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_global/features/pokemon_details/data/repository/pokemon_details_repository_impl.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/pokemon_detail_entity.dart';

import '../../../../fixtures/pokemon_detail_fixture.dart';
import '../../../../helpers/test_helpers.dart';

void main() {
  late MockPokemonDetailsDatasource mockDatasource;
  late MockAppTalker mockAppTalker;
  late MockErrorHandler mockErrorHandler;
  late PokemonDetailsRepositoryImpl repository;

  setUpAll(() {
    registerFallbackValues();
  });

  setUp(() {
    mockDatasource = MockPokemonDetailsDatasource();
    mockAppTalker = MockAppTalker();
    mockErrorHandler = MockErrorHandler();
    repository = PokemonDetailsRepositoryImpl(
      pokemonDetailsDatasource: mockDatasource,
      appTalker: mockAppTalker,
      errorHandler: mockErrorHandler,
    );
  });

  group('PokemonDetailsRepository - getPokemonDetail', () {
    const tPokemonName = 'pikachu';
    final tPokemonDetail = PokemonDetailFixture.pokemonDetailModel;
    final tSpeciesJson = PokemonDetailFixture.pokemonSpeciesJson;
    final tTypeJson = PokemonDetailFixture.pokemonTypeElectricJson;

    test(
      'should return PokemonDetailEntity when datasource calls are successful',
      () async {
        // Arrange
        when(() => mockDatasource.getPokemonDetail(idOrName: tPokemonName))
            .thenAnswer((_) async => tPokemonDetail);

        when(() => mockDatasource.getPokemonSpecies(name: tPokemonName))
            .thenAnswer((_) async => tSpeciesJson);

        when(() => mockDatasource.getPokemonType(typeName: 'electric'))
            .thenAnswer((_) async => tTypeJson);

        // Act
        final result =
            await repository.getPokemonDetail(idOrName: tPokemonName);

        // Assert
        expect(result, isA<PokemonDetailEntity>());
        expect(result.name, tPokemonName);
        expect(result.id, 25);
        expect(result.height, 0.4); // 4 / 10
        expect(result.weight, 6.0); // 60 / 10
        expect(result.weaknesses, contains('ground'));

        // Verify all datasource methods were called
        verify(() => mockDatasource.getPokemonDetail(idOrName: tPokemonName))
            .called(1);
        verify(() => mockDatasource.getPokemonSpecies(name: tPokemonName))
            .called(1);
        verify(() => mockDatasource.getPokemonType(typeName: 'electric'))
            .called(1);
      },
    );

    test(
      'should handle Pokemon with multiple types correctly',
      () async {
        // Arrange
        final charizard = PokemonDetailFixture.charizardDetailModel;
        when(() => mockDatasource.getPokemonDetail(idOrName: 'charizard'))
            .thenAnswer((_) async => charizard);

        when(() => mockDatasource.getPokemonSpecies(name: 'charizard'))
            .thenAnswer((_) async => tSpeciesJson);

        when(() => mockDatasource.getPokemonType(typeName: 'fire')).thenAnswer(
          (_) async => {
            'damage_relations': {
              'double_damage_from': [
                {'name': 'water'},
                {'name': 'rock'},
              ],
            },
          },
        );

        when(() => mockDatasource.getPokemonType(typeName: 'flying'))
            .thenAnswer(
          (_) async => {
            'damage_relations': {
              'double_damage_from': [
                {'name': 'electric'},
                {'name': 'ice'},
              ],
            },
          },
        );

        // Act
        final result = await repository.getPokemonDetail(idOrName: 'charizard');

        // Assert
        expect(result.types.length, 2);
        expect(result.weaknesses.length,
            4); // Should contain all unique weaknesses
        expect(result.weaknesses,
            containsAll(['water', 'rock', 'electric', 'ice']));

        verify(() => mockDatasource.getPokemonType(typeName: 'fire')).called(1);
        verify(() => mockDatasource.getPokemonType(typeName: 'flying'))
            .called(1);
      },
    );

    test(
      'should throw Exception when getPokemonDetail fails',
      () async {
        // Arrange
        final exception = Exception('Network error');
        when(() => mockDatasource.getPokemonDetail(idOrName: tPokemonName))
            .thenThrow(exception);
        when(() => mockErrorHandler.handleError(any(), any(),
            context: any(named: 'context'))).thenThrow(exception);

        // Act
        final call = repository.getPokemonDetail;

        // Assert
        expect(
          () => call(idOrName: tPokemonName),
          throwsA(isA<Exception>()),
        );
      },
    );

    test(
      'should throw Exception when getPokemonSpecies fails',
      () async {
        // Arrange
        final exception = Exception('Species not found');
        when(() => mockDatasource.getPokemonDetail(idOrName: tPokemonName))
            .thenAnswer((_) async => tPokemonDetail);

        when(() => mockDatasource.getPokemonSpecies(name: tPokemonName))
            .thenThrow(exception);
        when(() => mockErrorHandler.handleError(any(), any(),
            context: any(named: 'context'))).thenThrow(exception);

        // Act
        final call = repository.getPokemonDetail;

        // Assert
        expect(
          () => call(idOrName: tPokemonName),
          throwsA(isA<Exception>()),
        );
      },
    );

    test(
      'should throw Exception when getPokemonType fails',
      () async {
        // Arrange
        final exception = Exception('Type not found');
        when(() => mockDatasource.getPokemonDetail(idOrName: tPokemonName))
            .thenAnswer((_) async => tPokemonDetail);

        when(() => mockDatasource.getPokemonSpecies(name: tPokemonName))
            .thenAnswer((_) async => tSpeciesJson);

        when(() => mockDatasource.getPokemonType(typeName: 'electric'))
            .thenThrow(exception);
        when(() => mockErrorHandler.handleError(any(), any(),
            context: any(named: 'context'))).thenThrow(exception);

        // Act
        final call = repository.getPokemonDetail;

        // Assert
        expect(
          () => call(idOrName: tPokemonName),
          throwsA(isA<Exception>()),
        );
      },
    );

    test(
      'should remove duplicate weaknesses',
      () async {
        // Arrange
        when(() => mockDatasource.getPokemonDetail(idOrName: tPokemonName))
            .thenAnswer((_) async => tPokemonDetail);

        when(() => mockDatasource.getPokemonSpecies(name: tPokemonName))
            .thenAnswer((_) async => tSpeciesJson);

        when(() => mockDatasource.getPokemonType(typeName: 'electric'))
            .thenAnswer(
          (_) async => {
            'damage_relations': {
              'double_damage_from': [
                {'name': 'ground'},
                {'name': 'ground'}, // Duplicate
              ],
            },
          },
        );

        // Act
        final result =
            await repository.getPokemonDetail(idOrName: tPokemonName);

        // Assert
        // Should only contain 'ground' once due to Set usage
        expect(result.weaknesses, ['ground']);
      },
    );
  });
}
