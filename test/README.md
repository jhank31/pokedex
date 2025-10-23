# 🧪 Guía de Testing - Pokedex App

Esta guia explica la estructura de testing y las mejores practicas implementadas en el proyecto.

## 📁 Estructura de Carpetas

```
test/
├── fixtures/               # Datos de prueba (fixtures)
│   ├── pokemon_detail_fixture.dart
│   └── pokemon_list_fixture.dart
├── helpers/               # Mocks y helpers compartidos
│   └── test_helpers.dart
└── features/              # Tests organizados por features
    └── pokemon_details/
        ├── data/
        │   ├── datasource/
        │   └── repository/
        └── domain/
            └── usecases/
```

## 🎯 Conceptos Clave

### 1. **Fixtures** (Datos de Prueba)
Los fixtures son **instancias reales** de los modelos con datos predefinidos. No son mocks.

**Ejemplo:**
```dart
// ✅ Correcto - Fixture
static const pokemonDetailModel = PokemonDetail(
  id: 25,
  name: 'pikachu',
  height: 4,
  weight: 60,
  // ...
);

// ✅ Tambien se pueden crear factories
static PokemonDetail createPokemonDetail({
  int id = 1,
  String name = 'bulbasaur',
  // ...
}) => PokemonDetail(...);
```

**Ventajas:**
- ✅ Reutilizables en multiples tests
- ✅ Datos consistentes
- ✅ Facil mantenimiento
- ✅ Reduce duplicación de codigo

### 2. **Mocks** (Simulaciones de Dependencias)
Los mocks son **simulaciones** de clases o interfaces para controlar el comportamiento en tests.

**Ejemplo:**
```dart
// ✅ Correcto - Mock de una dependencia
class MockPokemonDetailsDatasource extends Mock 
    implements PokemonDetailsDatasource {}

// En el test
when(() => mockDatasource.getPokemonDetail(name: 'pikachu'))
    .thenAnswer((_) async => fixture);
```

## 🚀 Cómo Ejecutar los Tests

### Ejecutar todos los tests
```bash
flutter test
```

### Ejecutar tests específicos
```bash
# Tests de un archivo específico
flutter test test/features/pokemon_details/data/datasource/pokemon_details_datasource_test.dart

# Tests de una carpeta
flutter test test/features/pokemon_details/
```

### Ejecutar con cobertura
```bash
flutter test --coverage
```

## 📝 Patron de Testing Implementado

### Triple A (Arrange-Act-Assert)

```dart
test('should return PokemonDetail when successful', () async {
  // Arrange - Prepara el escenario
  when(() => mockDio.get(any())).thenAnswer(
    (_) async => Response(data: fixture, statusCode: 200),
  );

  // Act - Ejecuta la accion
  final result = await datasource.getPokemonDetail(name: 'pikachu');

  // Assert - Verifica el resultado
  expect(result, isA<PokemonDetail>());
  expect(result.name, 'pikachu');
  verify(() => mockDio.get(any())).called(1);
});
```

## 🎨 Tipos de Tests Implementados

### 1. **Tests de Datasource** (Data Layer)
- ✅ Verifica que las llamadas HTTP sean correctas
- ✅ Verifica el manejo de respuestas exitosas
- ✅ Verifica el manejo de errores de red
- ✅ Verifica el parseo de JSON


### 2. **Tests de Repository** (Data Layer)
- ✅ Verifica la orquestación de múltiples datasources
- ✅ Verifica la transformación de modelos a entidades
- ✅ Verifica el manejo de errores
- ✅ Verifica la lógica de negocio (ej: remover duplicados)


### 3. **Tests de Use Cases** (Domain Layer)
- ✅ Verifica que el use case llame correctamente al repository
- ✅ Verifica el manejo de errores
- ✅ Verifica que los datos fluyan correctamente
- ✅ Verifica la lógica de negocio del dominio


## 🛠️ Herramientas Utilizadas

- **flutter_test**: Framework de testing de Flutter
- **mocktail**: Libreria para crear mocks
- **fixtures**: Datos de prueba reutilizables

## 💡 Mejores Prácticas



