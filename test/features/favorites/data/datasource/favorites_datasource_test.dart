import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_global/features/favorites/data/datasource/favorites_datasource.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/pokemon_detail_entity.dart';
import 'package:pokedex_global/features/pokemon_details/domain/usecases/get_pokemon_detail_usecase.dart';

import '../../../../fixtures/pokemon_detail_fixture.dart';
import '../../../../helpers/test_helpers.dart';

void main() {
  late MockDio mockDio;
  late MockGetPokemonDetailUseCase mockGetPokemonDetailUseCase;
  late FavoritesDatasourceImpl datasource;

  setUpAll(() {
    // Register fallback values for mocktail
    registerFallbackValue(GetPokemonDetailParams(idOrName: '1'));
  });

  setUp(() {
    mockDio = MockDio();
    mockGetPokemonDetailUseCase = MockGetPokemonDetailUseCase();
    datasource = FavoritesDatasourceImpl(
      dio: mockDio,
      getPokemonDetailUseCase: mockGetPokemonDetailUseCase,
    );
  });

  group('FavoritesDatasource - getAllFavorites', () {
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
      'should return list of PokemonDetailEntity when use case calls are successful',
      () async {
        // Arrange
        final tPokemonIds = [1, 6, 25];

        when(() => mockGetPokemonDetailUseCase.call(any())).thenAnswer(
          (invocation) async {
            final params =
                invocation.positionalArguments[0] as GetPokemonDetailParams;
            if (params.idOrName == '1') {
              return tBulbasaurEntity;
            } else if (params.idOrName == '6') {
              return tCharizardEntity;
            } else if (params.idOrName == '25') {
              return tPikachuEntity;
            }
            throw Exception('Unknown pokemon');
          },
        );

        // Act
        final result =
            await datasource.getAllFavorites(pokemonIds: tPokemonIds);

        // Assert
        expect(result, isA<List<PokemonDetailEntity>>());
        expect(result.length, 3);
        expect(result[0].id, 1);
        expect(result[1].id, 6);
        expect(result[2].id, 25);
        verify(() => mockGetPokemonDetailUseCase.call(any())).called(3);
      },
    );

    test(
      'should handle empty pokemon IDs list',
      () async {
        // Arrange
        final tPokemonIds = <int>[];

        // Act
        final result =
            await datasource.getAllFavorites(pokemonIds: tPokemonIds);

        // Assert
        expect(result, isEmpty);
        verifyNever(() => mockGetPokemonDetailUseCase.call(any()));
      },
    );

    test(
      'should handle single pokemon ID',
      () async {
        // Arrange
        final tPokemonIds = [25];

        when(() => mockGetPokemonDetailUseCase.call(any()))
            .thenAnswer((_) async => tPikachuEntity);

        // Act
        final result =
            await datasource.getAllFavorites(pokemonIds: tPokemonIds);

        // Assert
        expect(result, isA<List<PokemonDetailEntity>>());
        expect(result.length, 1);
        expect(result[0].id, 25);
        verify(() => mockGetPokemonDetailUseCase.call(any())).called(1);
      },
    );

    test(
      'should throw exception when use case fails',
      () async {
        // Arrange
        final tPokemonIds = [1, 6, 25];

        when(() => mockGetPokemonDetailUseCase.call(any()))
            .thenThrow(Exception('Pokemon not found'));

        // Act
        final call = datasource.getAllFavorites;

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

        when(() => mockGetPokemonDetailUseCase.call(any())).thenAnswer(
          (invocation) async {
            final params =
                invocation.positionalArguments[0] as GetPokemonDetailParams;
            final id = int.parse(params.idOrName);
            return PokemonDetailFixture.createPokemonDetailEntity(
              id: id,
              name: 'pokemon_$id',
              height: 1.0,
              weight: 10.0,
            );
          },
        );

        // Act
        final result =
            await datasource.getAllFavorites(pokemonIds: tPokemonIds);

        // Assert
        expect(result, isA<List<PokemonDetailEntity>>());
        expect(result.length, 10);
        verify(() => mockGetPokemonDetailUseCase.call(any())).called(10);
      },
    );

    test(
      'should fetch all favorites in parallel',
      () async {
        // Arrange
        final tPokemonIds = [1, 6, 25];
        var callCount = 0;

        when(() => mockGetPokemonDetailUseCase.call(any())).thenAnswer(
          (invocation) async {
            callCount++;
            // Simulate some delay
            await Future.delayed(Duration(milliseconds: 10));
            final params =
                invocation.positionalArguments[0] as GetPokemonDetailParams;
            final id = int.parse(params.idOrName);
            return PokemonDetailFixture.createPokemonDetailEntity(
              id: id,
              name: 'pokemon_$id',
              height: 1.0,
              weight: 10.0,
            );
          },
        );

        // Act
        final stopwatch = Stopwatch()..start();
        final result =
            await datasource.getAllFavorites(pokemonIds: tPokemonIds);
        stopwatch.stop();

        // Assert
        expect(result.length, 3);
        // If requests were sequential, it would take at least 30ms
        // If parallel, it should be close to 10ms
        expect(stopwatch.elapsedMilliseconds, lessThan(25));
        expect(callCount, 3);
      },
    );

    test(
      'should handle duplicate pokemon IDs',
      () async {
        // Arrange
        final tPokemonIds = [25, 25, 25];

        when(() => mockGetPokemonDetailUseCase.call(any()))
            .thenAnswer((_) async => tPikachuEntity);

        // Act
        final result =
            await datasource.getAllFavorites(pokemonIds: tPokemonIds);

        // Assert
        expect(result.length, 3);
        // Even with duplicates, all IDs should be processed
        verify(() => mockGetPokemonDetailUseCase.call(any())).called(3);
      },
    );
  });
}
