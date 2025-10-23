# 🧪 Guía Rápida de Testing - Pokedex

## 📊 Resumen Ejecutivo

✅ **20 tests unitarios** creados y pasando  
✅ **3 capas** testeadas (Datasource, Repository, UseCase)  
✅ **Fixtures reutilizables** para datos de prueba  
✅ **Mocks centralizados** con Mocktail  
✅ **Documentación completa** con ejemplos  

---

## 🎯 Respuesta a tu Pregunta

### ❓ "¿Es mejor crear mocks de cada modelo para facilitar los tests?"

**Respuesta: NO, no debes hacer mocks de modelos.**

### ✅ Lo Correcto

**1. Para MODELOS/ENTIDADES → Usa FIXTURES**
```dart
// ✅ CORRECTO - Fixture (instancia real con datos de prueba)
class PokemonDetailFixture {
  static const pokemonDetailModel = PokemonDetail(
    id: 25,
    name: 'pikachu',
    height: 4,
    weight: 60,
    // ... datos reales
  );
  
  // Factory para variaciones
  static PokemonDetail create({int? id, String? name}) {
    return PokemonDetail(
      id: id ?? 1,
      name: name ?? 'default',
      // ...
    );
  }
}
```

**2. Para DEPENDENCIAS (Datasources, Repositories, etc.) → Usa MOCKS**
```dart
// ✅ CORRECTO - Mock de dependencias
class MockPokemonDatasource extends Mock implements PokemonDatasource {}

// En el test
final mockDatasource = MockPokemonDatasource();
when(() => mockDatasource.getPokemon()).thenReturn(fixture);
```

### ❌ Lo Incorrecto

```dart
// ❌ INCORRECTO - No hagas mocks de modelos
class MockPokemonDetail extends Mock implements PokemonDetail {}

// ❌ INCORRECTO - No repitas datos en cada test
test('test 1', () {
  final pokemon = PokemonDetail(id: 25, name: 'pikachu', ...);
});
test('test 2', () {
  final pokemon = PokemonDetail(id: 25, name: 'pikachu', ...); // ❌ Duplicado
});
```

---

## 📁 Estructura Creada

```
test/
├── 📄 README.md                      # Guía completa
├── 📄 EXAMPLES.md                    # Ejemplos de código
├── 📄 TESTING_SUMMARY.md            # Resumen detallado
│
├── 📂 fixtures/                      # ⭐ DATOS DE PRUEBA
│   ├── pokemon_detail_fixture.dart
│   └── pokemon_list_fixture.dart
│
├── 📂 helpers/                       # ⭐ MOCKS COMPARTIDOS
│   └── test_helpers.dart
│
└── 📂 features/
    └── pokemon_details/
        ├── data/
        │   ├── datasource/           # 6 tests ✅
        │   └── repository/           # 7 tests ✅
        └── domain/
            └── usecases/             # 7 tests ✅
```

---

## 🚀 Comandos Principales

### Ejecutar Tests

```bash
# Todos los tests
flutter test

# Con el script personalizado
./scripts/run_tests.sh

# Solo una capa
./scripts/run_tests.sh datasource
./scripts/run_tests.sh repository
./scripts/run_tests.sh usecase

# Con cobertura
./scripts/run_tests.sh coverage

# Modo watch (re-ejecuta al guardar)
./scripts/run_tests.sh watch
```

---

## 📝 Ejemplo Completo de Test

### 1️⃣ Crear Fixture

```dart
// test/fixtures/pokemon_fixture.dart
class PokemonFixture {
  static const pikachu = PokemonDetail(
    id: 25,
    name: 'pikachu',
    // ...
  );
}
```

### 2️⃣ Crear Mock

```dart
// test/helpers/test_helpers.dart
class MockDatasource extends Mock implements PokemonDatasource {}
```

### 3️⃣ Escribir Test

```dart
// test/.../datasource_test.dart
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import '../../fixtures/pokemon_fixture.dart';
import '../../helpers/test_helpers.dart';

void main() {
  late MockDio mockDio;
  late PokemonDatasourceImpl datasource;

  setUp(() {
    mockDio = MockDio();
    datasource = PokemonDatasourceImpl(dio: mockDio);
  });

  test('should return Pokemon when successful', () async {
    // Arrange - Configura el escenario
    when(() => mockDio.get(any())).thenAnswer(
      (_) async => Response(
        data: PokemonFixture.pikachuJson,
        statusCode: 200,
        requestOptions: RequestOptions(path: ''),
      ),
    );

    // Act - Ejecuta la acción
    final result = await datasource.getPokemon(name: 'pikachu');

    // Assert - Verifica el resultado
    expect(result, isA<PokemonDetail>());
    expect(result.name, 'pikachu');
    verify(() => mockDio.get(any())).called(1);
  });
}
```

---

## 💡 Conceptos Clave

### Fixture vs Mock

| Aspecto | Fixture | Mock |
|---------|---------|------|
| **Qué es** | Instancia REAL de datos | Simulación de comportamiento |
| **Para qué** | Datos de prueba reutilizables | Controlar dependencias |
| **Cuándo** | Modelos, Entities, DTOs | Datasources, Repos, APIs |
| **Ejemplo** | `const pokemon = Pokemon(...)` | `class MockRepo extends Mock` |

### Patrón AAA

```dart
test('descripción clara', () {
  // 1. Arrange (Preparar)
  final mock = MockService();
  when(() => mock.fetch()).thenReturn(data);
  
  // 2. Act (Actuar)
  final result = sut.doSomething();
  
  // 3. Assert (Verificar)
  expect(result, expectedValue);
  verify(() => mock.fetch()).called(1);
});
```

---

## 📚 Archivos de Documentación

1. **`test/README.md`** - Guía completa de testing
   - Estructura de carpetas
   - Conceptos de Fixtures vs Mocks
   - Comandos útiles
   - Checklist para nuevos tests

2. **`test/EXAMPLES.md`** - Ejemplos prácticos
   - Tests de Datasource
   - Tests de Repository
   - Tests de Use Case
   - Tests de Providers
   - Casos de error

3. **`test/TESTING_SUMMARY.md`** - Resumen técnico
   - Qué se implementó
   - Diferencias clave
   - Próximos pasos
   - Checklist final

4. **`scripts/run_tests.sh`** - Script de automatización
   - Ejecutar tests
   - Generar cobertura
   - Modo watch

---

## 🎯 Lo que Tienes Ahora

### ✅ Tests Implementados

**Datasource (6 tests)**
- ✅ Llamadas HTTP exitosas
- ✅ Parseo de JSON
- ✅ Manejo de errores de red
- ✅ Validación de endpoints

**Repository (7 tests)**
- ✅ Orquestación de datasources
- ✅ Transformación de modelos a entidades
- ✅ Manejo de múltiples tipos
- ✅ Eliminación de duplicados
- ✅ Manejo de errores en cada paso

**Use Cases (7 tests)**
- ✅ Llamadas al repository
- ✅ Propagación de datos
- ✅ Propagación de errores
- ✅ Validación de parámetros

### ✅ Herramientas

- **Fixtures** - Datos reutilizables (Pikachu, Charizard, etc.)
- **Mocks** - Simulaciones (Dio, Datasource, Repository)
- **Scripts** - Automatización de tests
- **Documentación** - Guías y ejemplos completos

---

## 🔄 Cómo Aplicar a Otras Features

### Para agregar tests a otra feature (ej: Home):

```bash
# 1. Crear fixtures
test/fixtures/home_fixture.dart

# 2. Crear tests siguiendo la misma estructura
test/features/home/
  data/datasource/home_datasource_test.dart
  data/repository/home_repository_test.dart
  domain/usecases/get_home_data_test.dart

# 3. Reutilizar los mocks de test/helpers/test_helpers.dart

# 4. Ejecutar
flutter test test/features/home/
```

---

## 📊 Estadísticas

| Métrica | Valor |
|---------|-------|
| Tests Totales | 20 ✅ |
| Tests Pasando | 20 (100%) 🎉 |
| Fixtures | 2 archivos |
| Helpers | 1 archivo |
| Documentación | 4 archivos |
| Scripts | 1 |

---

## 🎓 Próximos Pasos Recomendados

1. **Agregar tests para Home feature**
   - Seguir el mismo patrón
   - Reutilizar fixtures y mocks

2. **Incrementar cobertura**
   - Objetivo: >80%
   - Comando: `flutter test --coverage`

3. **Tests de Widgets** (opcional)
   - Para componentes visuales
   - Ver `test/EXAMPLES.md`

4. **Integración Continua**
   - GitHub Actions
   - Ejecutar tests automáticamente

---

## 🆘 ¿Necesitas Ayuda?

### Consulta la documentación:
- **Dudas generales**: `test/README.md`
- **Ejemplos de código**: `test/EXAMPLES.md`
- **Detalles técnicos**: `test/TESTING_SUMMARY.md`

### Comandos útiles:
```bash
# Ver ayuda del script
./scripts/run_tests.sh help

# Ejecutar tests en modo verbose
flutter test --reporter expanded

# Ver cobertura
flutter test --coverage
lcov --summary coverage/lcov.info
```

---

## ✨ Conclusión

Ya tienes un **sistema de testing completo y profesional** configurado:

✅ Diferencia clara entre **Fixtures** (datos) y **Mocks** (comportamiento)  
✅ Tests organizados por capas (Data, Domain)  
✅ Datos reutilizables con factories  
✅ Documentación exhaustiva  
✅ Scripts de automatización  

**¡Ahora puedes escribir tests con confianza! 🚀**

---

**Happy Testing! 🧪**

