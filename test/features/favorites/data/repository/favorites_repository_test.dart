import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_global/features/favorites/data/repository/favorite_repository_impl.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/pokemon_detail_entity.dart';

import '../../../../fixtures/pokemon_detail_fixture.dart';
import '../../../../helpers/test_helpers.dart';

void main() {
  late MockFavoritesDatasource mockDatasource;
  late MockAppTalker mockAppTalker;
  late MockErrorHandler mockErrorHandler;
  late FavoritesRepositoryImpl repository;

  setUpAll(() {
    registerFallbackValues();
  });

  setUp(() {
    mockDatasource = MockFavoritesDatasource();
    mockAppTalker = MockAppTalker();
    mockErrorHandler = MockErrorHandler();
    repository = FavoritesRepositoryImpl(
      datasource: mockDatasource,
      appTalker: mockAppTalker,
      errorHandler: mockErrorHandler,
    );
  });

  group('FavoritesRepository - getAllFavorites', () {
    final tPikachuEntity = PokemonDetailFixture.pokemonDetailEntity;
    final tCharizardEntity = PokemonDetailFixture.createPokemonDetailEntity(
      id: 6,
      name: 'charizard',
      height: 1.7,
      weight: 90.5,
    );
    final tBulbasaurEntity = PokemonDetailFixture.createPokemonDetailEntity(
      id: 1,
      name: 'bulbasaur',
      height: 0.7,
      weight: 6.9,
    );

    test(
      'should return list of PokemonDetailEntity when datasource call is successful',
      () async {
        // Arrange
        final tPokemonIds = [1, 6, 25];
        final tFavorites = [tBulbasaurEntity, tCharizardEntity, tPikachuEntity];

        when(() => mockDatasource.getAllFavorites(pokemonIds: tPokemonIds))
            .thenAnswer((_) async => tFavorites);

        // Act
        final result =
            await repository.getAllFavorites(pokemonIds: tPokemonIds);

        // Assert
        expect(result, isA<List<PokemonDetailEntity>>());
        expect(result.length, 3);
        expect(result[0].id, 1);
        expect(result[1].id, 6);
        expect(result[2].id, 25);
        verify(() => mockDatasource.getAllFavorites(pokemonIds: tPokemonIds))
            .called(1);
      },
    );

    test(
      'should handle empty pokemon IDs list',
      () async {
        // Arrange
        final tPokemonIds = <int>[];
        final emptyList = <PokemonDetailEntity>[];

        when(() => mockDatasource.getAllFavorites(pokemonIds: tPokemonIds))
            .thenAnswer((_) async => emptyList);

        // Act
        final result =
            await repository.getAllFavorites(pokemonIds: tPokemonIds);

        // Assert
        expect(result, isEmpty);
        verify(() => mockDatasource.getAllFavorites(pokemonIds: tPokemonIds))
            .called(1);
      },
    );

    test(
      'should handle single pokemon ID',
      () async {
        // Arrange
        final tPokemonIds = [25];
        final tFavorites = [tPikachuEntity];

        when(() => mockDatasource.getAllFavorites(pokemonIds: tPokemonIds))
            .thenAnswer((_) async => tFavorites);

        // Act
        final result =
            await repository.getAllFavorites(pokemonIds: tPokemonIds);

        // Assert
        expect(result.length, 1);
        expect(result[0].id, 25);
        verify(() => mockDatasource.getAllFavorites(pokemonIds: tPokemonIds))
            .called(1);
      },
    );

    test(
      'should throw exception when datasource fails',
      () async {
        // Arrange
        final tPokemonIds = [1, 6, 25];
        final exception = Exception('Network error');

        when(() => mockDatasource.getAllFavorites(pokemonIds: tPokemonIds))
            .thenThrow(exception);
        when(() => mockErrorHandler.handleError(
              any(),
              any(),
              context: any(named: 'context'),
            )).thenThrow(exception);

        // Act
        final call = repository.getAllFavorites;

        // Assert
        expect(
          () => call(pokemonIds: tPokemonIds),
          throwsA(isA<Exception>()),
        );
      },
    );

    test(
      'should handle large list of pokemon IDs',
      () async {
        // Arrange
        final tPokemonIds = List.generate(10, (index) => index + 1);
        final tFavorites = List.generate(
          10,
          (index) => PokemonDetailFixture.createPokemonDetailEntity(
            id: index + 1,
            name: 'pokemon_${index + 1}',
            height: 1.0,
            weight: 10.0,
          ),
        );

        when(() => mockDatasource.getAllFavorites(pokemonIds: tPokemonIds))
            .thenAnswer((_) async => tFavorites);

        // Act
        final result =
            await repository.getAllFavorites(pokemonIds: tPokemonIds);

        // Assert
        expect(result.length, 10);
        verify(() => mockDatasource.getAllFavorites(pokemonIds: tPokemonIds))
            .called(1);
      },
    );

    test(
      'should handle partial failure gracefully',
      () async {
        // Arrange
        final tPokemonIds = [1, 999, 25]; // 999 might not exist
        final exception = Exception('Pokemon 999 not found');

        when(() => mockDatasource.getAllFavorites(pokemonIds: tPokemonIds))
            .thenThrow(exception);
        when(() => mockErrorHandler.handleError(
              any(),
              any(),
              context: any(named: 'context'),
            )).thenThrow(exception);

        // Act & Assert
        expect(
          () => repository.getAllFavorites(pokemonIds: tPokemonIds),
          throwsA(isA<Exception>()),
        );
      },
    );

    test(
      'should log success when favorites are fetched',
      () async {
        // Arrange
        final tPokemonIds = [25];
        final tFavorites = [tPikachuEntity];

        when(() => mockDatasource.getAllFavorites(pokemonIds: tPokemonIds))
            .thenAnswer((_) async => tFavorites);

        // Act
        await repository.getAllFavorites(pokemonIds: tPokemonIds);

        // Assert
        verify(() => mockAppTalker.info(any())).called(1);
      },
    );

    test(
      'should handle duplicate pokemon IDs',
      () async {
        // Arrange
        final tPokemonIds = [25, 25, 25];
        final tFavorites = [tPikachuEntity, tPikachuEntity, tPikachuEntity];

        when(() => mockDatasource.getAllFavorites(pokemonIds: tPokemonIds))
            .thenAnswer((_) async => tFavorites);

        // Act
        final result =
            await repository.getAllFavorites(pokemonIds: tPokemonIds);

        // Assert
        expect(result.length, 3);
        verify(() => mockDatasource.getAllFavorites(pokemonIds: tPokemonIds))
            .called(1);
      },
    );

    test(
      'should handle different error types',
      () async {
        // Arrange
        final tPokemonIds = [1, 6, 25];
        final exception = Exception('Timeout error');

        when(() => mockDatasource.getAllFavorites(pokemonIds: tPokemonIds))
            .thenThrow(exception);
        when(() => mockErrorHandler.handleError(
              any(),
              any(),
              context: any(named: 'context'),
            )).thenThrow(exception);

        // Act & Assert
        expect(
          () => repository.getAllFavorites(pokemonIds: tPokemonIds),
          throwsA(
            predicate((e) =>
                e is Exception && e.toString().contains('Timeout error')),
          ),
        );
      },
    );
  });
}
