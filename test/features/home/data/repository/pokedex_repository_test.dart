import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_global/features/home/data/models/models.dart';
import 'package:pokedex_global/features/home/data/repository/pokedex_impl.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/pokemon_detail_entity.dart';
import 'package:pokedex_global/features/pokemon_details/domain/usecases/get_pokemon_detail_usecase.dart';

import '../../../../fixtures/pokemon_detail_fixture.dart';
import '../../../../fixtures/pokemon_list_fixture.dart';
import '../../../../helpers/test_helpers.dart';

void main() {
  late MockPokedexDatasource mockDatasource;
  late MockGetPokemonDetailUseCase mockGetPokemonDetailUseCase;
  late MockAppTalker mockAppTalker;
  late MockErrorHandler mockErrorHandler;
  late PokedexImpl repository;

  setUpAll(() {
    // Register fallback values for mocktail
    registerFallbackValue(GetPokemonDetailParams(idOrName: 'pikachu'));
    registerFallbackValues();
  });

  setUp(() {
    mockDatasource = MockPokedexDatasource();
    mockGetPokemonDetailUseCase = MockGetPokemonDetailUseCase();
    mockAppTalker = MockAppTalker();
    mockErrorHandler = MockErrorHandler();
    repository = PokedexImpl(
      datasource: mockDatasource,
      getPokemonDetailUseCase: mockGetPokemonDetailUseCase,
      appTalker: mockAppTalker,
      errorHandler: mockErrorHandler,
    );
  });

  group('PokedexRepository - getPokemonList', () {
    const tLimit = 20;
    const tOffset = 0;
    final tPokemonListResponse = PokemonListResponse(
      count: 1302,
      next: 'https://pokeapi.co/api/v2/pokemon?offset=20&limit=20',
      previous: null,
      results: PokemonListFixture.pokemonList,
    );

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
      'should return list of PokemonDetailEntity when datasource and use case calls are successful',
      () async {
        // Arrange
        when(() => mockDatasource.getPokemonList(
              limit: tLimit,
              offset: tOffset,
            )).thenAnswer((_) async => tPokemonListResponse);

        when(() => mockGetPokemonDetailUseCase.call(any())).thenAnswer(
          (invocation) async {
            final params =
                invocation.positionalArguments[0] as GetPokemonDetailParams;
            if (params.idOrName == 'pikachu') {
              return tPikachuEntity;
            } else if (params.idOrName == 'charizard') {
              return tCharizardEntity;
            } else if (params.idOrName == 'bulbasaur') {
              return tBulbasaurEntity;
            }
            throw Exception('Unknown pokemon');
          },
        );

        // Act
        final result = await repository.getPokemonList(
          limit: tLimit,
          offset: tOffset,
        );

        // Assert
        expect(result, isA<List<PokemonDetailEntity>>());
        expect(result.length, 3);
        expect(result[0].name, 'bulbasaur');
        expect(result[1].name, 'charizard');
        expect(result[2].name, 'pikachu');

        verify(() => mockDatasource.getPokemonList(
              limit: tLimit,
              offset: tOffset,
            )).called(1);
        verify(() => mockGetPokemonDetailUseCase.call(any())).called(3);
      },
    );

    test(
      'should handle different limit and offset values',
      () async {
        // Arrange
        const differentLimit = 50;
        const differentOffset = 100;

        when(() => mockDatasource.getPokemonList(
              limit: differentLimit,
              offset: differentOffset,
            )).thenAnswer((_) async => tPokemonListResponse);

        when(() => mockGetPokemonDetailUseCase.call(any())).thenAnswer(
          (_) async => tPikachuEntity,
        );

        // Act
        final result = await repository.getPokemonList(
          limit: differentLimit,
          offset: differentOffset,
        );

        // Assert
        expect(result, isA<List<PokemonDetailEntity>>());
        verify(() => mockDatasource.getPokemonList(
              limit: differentLimit,
              offset: differentOffset,
            )).called(1);
      },
    );

    test(
      'should throw Exception when datasource fails',
      () async {
        // Arrange
        final exception = Exception('Network error');
        when(() => mockDatasource.getPokemonList(
              limit: tLimit,
              offset: tOffset,
            )).thenThrow(exception);
        when(() => mockErrorHandler.throwError(
              any(),
              any(),
              context: any(named: 'context'),
            )).thenThrow(exception);

        // Act
        final call = repository.getPokemonList;

        // Assert
        expect(
          () => call(limit: tLimit, offset: tOffset),
          throwsA(isA<Exception>()),
        );
      },
    );

    test(
      'should throw Exception when getPokemonDetailUseCase fails',
      () async {
        // Arrange
        final exception = Exception('Pokemon detail not found');
        when(() => mockDatasource.getPokemonList(
              limit: tLimit,
              offset: tOffset,
            )).thenAnswer((_) async => tPokemonListResponse);

        when(() => mockGetPokemonDetailUseCase.call(any()))
            .thenThrow(exception);
        when(() => mockErrorHandler.throwError(
              any(),
              any(),
              context: any(named: 'context'),
            )).thenThrow(exception);

        // Act
        final call = repository.getPokemonList;

        // Assert
        expect(
          () => call(limit: tLimit, offset: tOffset),
          throwsA(isA<Exception>()),
        );
      },
    );

    test(
      'should handle empty results list',
      () async {
        // Arrange
        final emptyResponse = PokemonListResponse(
          count: 0,
          next: null,
          previous: null,
          results: [],
        );

        when(() => mockDatasource.getPokemonList(
              limit: tLimit,
              offset: tOffset,
            )).thenAnswer((_) async => emptyResponse);

        // Act
        final result = await repository.getPokemonList(
          limit: tLimit,
          offset: tOffset,
        );

        // Assert
        expect(result, isEmpty);
        verify(() => mockDatasource.getPokemonList(
              limit: tLimit,
              offset: tOffset,
            )).called(1);
        verifyNever(() => mockGetPokemonDetailUseCase.call(any()));
      },
    );
  });

  group('PokedexRepository - getPokemon', () {
    const tPokemonName = 'pikachu';
    final tPokemonDetailEntity = PokemonDetailFixture.pokemonDetailEntity;

    test(
      'should return PokemonDetailEntity when use case call is successful',
      () async {
        // Arrange
        when(() => mockGetPokemonDetailUseCase.call(any()))
            .thenAnswer((_) async => tPokemonDetailEntity);

        // Act
        final result = await repository.getPokemon(idOrName: tPokemonName);

        // Assert
        expect(result, isA<PokemonDetailEntity>());
        expect(result.name, tPokemonName);
        expect(result.id, 25);
        verify(() => mockGetPokemonDetailUseCase.call(any())).called(1);
      },
    );

    test(
      'should work with different pokemon names',
      () async {
        // Arrange
        const differentPokemon = 'charizard';
        final charizardEntity = PokemonDetailFixture.createPokemonDetailEntity(
          id: 6,
          name: 'charizard',
          height: 1.7,
          weight: 90.5,
        );

        when(() => mockGetPokemonDetailUseCase.call(any()))
            .thenAnswer((_) async => charizardEntity);

        // Act
        final result = await repository.getPokemon(idOrName: differentPokemon);

        // Assert
        expect(result.name, 'charizard');
        expect(result.id, 6);
        verify(() => mockGetPokemonDetailUseCase.call(any())).called(1);
      },
    );

    test(
      'should throw Exception when use case fails',
      () async {
        // Arrange
        final exception = Exception('Pokemon not found');
        when(() => mockGetPokemonDetailUseCase.call(any()))
            .thenThrow(exception);
        when(() => mockErrorHandler.throwError(
              any(),
              any(),
              context: any(named: 'context'),
            )).thenThrow(exception);

        // Act
        final call = repository.getPokemon;

        // Assert
        expect(
          () => call(idOrName: tPokemonName),
          throwsA(isA<Exception>()),
        );
      },
    );

    test(
      'should work with pokemon ID as string',
      () async {
        // Arrange
        const pokemonId = '25';
        when(() => mockGetPokemonDetailUseCase.call(any()))
            .thenAnswer((_) async => tPokemonDetailEntity);

        // Act
        final result = await repository.getPokemon(idOrName: pokemonId);

        // Assert
        expect(result, isA<PokemonDetailEntity>());
        verify(() => mockGetPokemonDetailUseCase.call(any())).called(1);
      },
    );
  });
}
