# Hive Crypto Wallet App

Una aplicación Flutter para gestión de carteras de criptomonedas con soporte para múltiples ambientes.

## 🚀 Características

- ✅ **Múltiples Ambientes**: Development, Staging, Production
- ✅ **Variables de Entorno**: Configuración centralizada por ambiente
- ✅ **State Management**: Riverpod con Hooks
- ✅ **Routing**: Auto Route para navegación
- ✅ **Logging**: Talker para logging avanzado
- ✅ **Localización**: Soporte multi-idioma
- ✅ **Arquitectura Limpia**: Estructura modular y escalable

## 🛠️ Configuración de Ambientes

### Variables de Entorno

El proyecto está configurado con tres ambientes diferentes:

- **Development**: Para desarrollo local
- **Staging**: Para pruebas y testing
- **Production**: Para producción

### Archivos de Configuración

```
env.development    # Variables para desarrollo
env.staging        # Variables para staging
env.production     # Variables para producción
```

### Ejecutar la Aplicación

```bash
# Desarrollo
./scripts/run_dev.sh
# o
flutter run --target lib/main_development.dart

# Staging
./scripts/run_staging.sh
# o
flutter run --target lib/main_staging.dart

# Producción
./scripts/run_prod.sh
# o
flutter run --target lib/main_production.dart
```

## 📁 Estructura del Proyecto

```
lib/
├── app/                    # Aplicación principal
├── core/                   # Funcionalidades core
│   ├── config/            # Configuración de ambientes
│   ├── const/             # Constantes
│   ├── logging/           # Sistema de logging
│   ├── router/            # Configuración de rutas
│   └── utils/             # Utilidades
├── l10n/                  # Localización
└── main_*.dart           # Puntos de entrada por ambiente
```

## 🔧 Desarrollo

### Prerequisitos

- Flutter SDK >= 3.24.0
- Dart SDK >= 3.0.0

### Instalación

```bash
# Clonar el repositorio
git clone <repository-url>
cd hive_crypto_wallet_app

# Instalar dependencias
flutter pub get

# Generar código
dart run build_runner build
```

### Scripts Disponibles

```bash
# Ejecutar en desarrollo
./scripts/run_dev.sh

# Ejecutar en staging
./scripts/run_staging.sh

# Ejecutar en producción
./scripts/run_prod.sh
```

## 📚 Documentación

- [Configuración de Ambientes](ENVIRONMENT_SETUP.md)
- [Guía de Desarrollo](docs/DEVELOPMENT.md)
- [API Documentation](docs/API.md)

## 🤝 Contribución

1. Fork el proyecto
2. Crea una rama para tu feature (`git checkout -b feature/AmazingFeature`)
3. Commit tus cambios (`git commit -m 'Add some AmazingFeature'`)
4. Push a la rama (`git push origin feature/AmazingFeature`)
5. Abre un Pull Request

## 📄 Licencia

Este proyecto está bajo la Licencia MIT - ver el archivo [LICENSE](LICENSE) para detalles.
# pokedex
