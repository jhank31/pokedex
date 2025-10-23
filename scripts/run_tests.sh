#!/bin/bash

# Script para ejecutar tests con diferentes opciones
# Uso: ./scripts/run_tests.sh [opción]

set -e

GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

echo -e "${BLUE}════════════════════════════════════════${NC}"
echo -e "${BLUE}  🧪 Pokedex - Test Runner${NC}"
echo -e "${BLUE}════════════════════════════════════════${NC}"
echo ""

case "${1:-all}" in
  all)
    echo -e "${GREEN}▶ Ejecutando todos los tests...${NC}"
    flutter test
    ;;
    
  unit)
    echo -e "${GREEN}▶ Ejecutando tests unitarios...${NC}"
    flutter test test/features/
    ;;
    
  coverage)
    echo -e "${GREEN}▶ Ejecutando tests con cobertura...${NC}"
    flutter test --coverage
    echo ""
    echo -e "${YELLOW}📊 Generando reporte de cobertura...${NC}"
    
    # Verificar si lcov está instalado
    if command -v lcov &> /dev/null; then
      lcov --summary coverage/lcov.info
      echo ""
      echo -e "${GREEN}✓ Reporte generado en: coverage/lcov.info${NC}"
      echo -e "${BLUE}Tip: Usa 'genhtml coverage/lcov.info -o coverage/html' para ver el reporte HTML${NC}"
    else
      echo -e "${YELLOW}⚠ lcov no está instalado. Instálalo con: brew install lcov${NC}"
    fi
    ;;
    
  watch)
    echo -e "${GREEN}▶ Modo watch activado...${NC}"
    echo -e "${BLUE}Los tests se ejecutarán automáticamente al guardar cambios${NC}"
    flutter test --watch
    ;;
    
  datasource)
    echo -e "${GREEN}▶ Ejecutando tests de datasource...${NC}"
    flutter test test/features/pokemon_details/data/datasource/
    ;;
    
  repository)
    echo -e "${GREEN}▶ Ejecutando tests de repository...${NC}"
    flutter test test/features/pokemon_details/data/repository/
    ;;
    
  usecase)
    echo -e "${GREEN}▶ Ejecutando tests de use cases...${NC}"
    flutter test test/features/pokemon_details/domain/usecases/
    ;;
    
  clean)
    echo -e "${YELLOW}▶ Limpiando archivos de test...${NC}"
    rm -rf coverage/
    rm -rf .dart_tool/
    echo -e "${GREEN}✓ Limpieza completada${NC}"
    ;;
    
  help)
    echo "Uso: ./scripts/run_tests.sh [opción]"
    echo ""
    echo "Opciones disponibles:"
    echo "  all         - Ejecutar todos los tests (default)"
    echo "  unit        - Ejecutar solo tests unitarios"
    echo "  coverage    - Ejecutar tests con cobertura"
    echo "  watch       - Modo watch (re-ejecuta al guardar)"
    echo "  datasource  - Solo tests de datasource"
    echo "  repository  - Solo tests de repository"
    echo "  usecase     - Solo tests de use cases"
    echo "  clean       - Limpiar archivos de test"
    echo "  help        - Mostrar esta ayuda"
    echo ""
    echo "Ejemplos:"
    echo "  ./scripts/run_tests.sh"
    echo "  ./scripts/run_tests.sh coverage"
    echo "  ./scripts/run_tests.sh watch"
    ;;
    
  *)
    echo -e "${YELLOW}⚠ Opción desconocida: $1${NC}"
    echo "Usa './scripts/run_tests.sh help' para ver las opciones disponibles"
    exit 1
    ;;
esac

echo ""
echo -e "${GREEN}✓ Completado${NC}"

