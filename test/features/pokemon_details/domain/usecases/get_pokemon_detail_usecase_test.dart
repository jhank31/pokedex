import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/pokemon_detail_entity.dart';
import 'package:pokedex_global/features/pokemon_details/domain/usecases/get_pokemon_detail_usecase.dart';

import '../../../../fixtures/pokemon_detail_fixture.dart';
import '../../../../helpers/test_helpers.dart';

void main() {
  late MockPokemonDetailsRepository mockRepository;
  late GetPokemonDetailUseCase useCase;

  setUp(() {
    mockRepository = MockPokemonDetailsRepository();
    useCase = GetPokemonDetailUseCase(repository: mockRepository);
  });

  group('GetPokemonDetailUseCase', () {
    const tPokemonName = 'pikachu';
    final tPokemonDetailEntity = PokemonDetailFixture.pokemonDetailEntity;

    test(
      'should get pokemon detail from the repository',
      () async {
        // Arrange
        when(() => mockRepository.getPokemonDetail(idOrName: tPokemonName))
            .thenAnswer((_) async => tPokemonDetailEntity);

        // Act
        final result =
            await useCase(GetPokemonDetailParams(idOrName: tPokemonName));

        // Assert
        expect(result, tPokemonDetailEntity);
        expect(result.name, tPokemonName);
        expect(result.id, 25);
        verify(() => mockRepository.getPokemonDetail(idOrName: tPokemonName))
            .called(1);
        verifyNoMoreInteractions(mockRepository);
      },
    );

    test(
      'should return PokemonDetailEntity with correct data',
      () async {
        // Arrange
        when(() => mockRepository.getPokemonDetail(idOrName: tPokemonName))
            .thenAnswer((_) async => tPokemonDetailEntity);

        // Act
        final result =
            await useCase(GetPokemonDetailParams(idOrName: tPokemonName));

        // Assert
        expect(result, isA<PokemonDetailEntity>());
        expect(result.name, 'pikachu');
        expect(result.height, 0.4);
        expect(result.weight, 6.0);
        expect(result.abilities, contains('static'));
        expect(result.weaknesses, contains('ground'));
      },
    );

    test(
      'should throw exception when repository throws exception',
      () async {
        // Arrange
        when(() => mockRepository.getPokemonDetail(idOrName: tPokemonName))
            .thenThrow(Exception('Pokemon not found'));

        // Act
        final call = useCase.call;

        // Assert
        expect(
          () => call(GetPokemonDetailParams(idOrName: tPokemonName)),
          throwsA(isA<Exception>()),
        );
        verify(() => mockRepository.getPokemonDetail(idOrName: tPokemonName))
            .called(1);
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

        when(() => mockRepository.getPokemonDetail(idOrName: differentPokemon))
            .thenAnswer((_) async => charizardEntity);

        // Act
        final result = await useCase(
          GetPokemonDetailParams(idOrName: differentPokemon),
        );

        // Assert
        expect(result.name, 'charizard');
        expect(result.id, 6);
        verify(() =>
                mockRepository.getPokemonDetail(idOrName: differentPokemon))
            .called(1);
      },
    );

    test(
      'should handle network errors correctly',
      () async {
        // Arrange
        when(() => mockRepository.getPokemonDetail(idOrName: tPokemonName))
            .thenThrow(Exception('Network error'));

        // Act & Assert
        expect(
          () => useCase(GetPokemonDetailParams(idOrName: tPokemonName)),
          throwsA(
            predicate(
              (e) => e is Exception && e.toString().contains('Network error'),
            ),
          ),
        );
      },
    );
  });

  group('GetPokemonDetailParams', () {
    test('should create params with correct idOrName', () {
      // Arrange & Act
      final params = GetPokemonDetailParams(idOrName: 'bulbasaur');

      // Assert
      expect(params.idOrName, 'bulbasaur');
    });

    test('should handle different pokemon names', () {
      // Arrange & Act
      final params1 = GetPokemonDetailParams(idOrName: 'pikachu');
      final params2 = GetPokemonDetailParams(idOrName: 'charizard');

      // Assert
      expect(params1.idOrName, 'pikachu');
      expect(params2.idOrName, 'charizard');
    });
  });
}
