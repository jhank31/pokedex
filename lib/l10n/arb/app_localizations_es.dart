// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get hello => 'Hola';

  @override
  String greetUser(Object username) {
    return 'Bienvenido, $username!';
  }

  @override
  String get startOnboardingTitle => 'Todos los Pokémon en un solo lugar';

  @override
  String get startOnboardingDescription =>
      'Accede a una amplia lista de Pokémon de todas las generaciones creadas por Nintendo';

  @override
  String get endOnboardingTitle => 'Mantén tu Pokédex actualizada';

  @override
  String get endOnboardingDescription =>
      'Regístrate y guarda tu perfil, Pokémon favoritos, configuraciones y mucho más en la aplicación';

  @override
  String get continueButton => 'Continuar';

  @override
  String get finishButton => 'Finalizar';

  @override
  String get weight => 'Peso';

  @override
  String get height => 'Altura';

  @override
  String get ability => 'Habilidad';

  @override
  String get category => 'Categoría';

  @override
  String get gender => 'Género';

  @override
  String get unknown => 'Desconocido';

  @override
  String get weaknesses => 'Debilidades';

  @override
  String get errorTitle => 'Algo salió mal...';

  @override
  String get errorDescription =>
      'No pudimos cargar la información en este momento. Verifica tu conexión o intenta nuevamente más tarde.';

  @override
  String get retry => 'Reintentar';

  @override
  String get noFavorites => 'No has marcado ningún Pokémon como favorito.';

  @override
  String get noFavoritesDescription =>
      'Haz clic en el ícono de corazón de tus Pokémon favoritos y aparecerán aquí.';

  @override
  String get search => 'Procurar Pokémon...';

  @override
  String get searchToShowData => 'Busca un Pokémon para ver sus datos';

  @override
  String get home => 'Pokedex';

  @override
  String get favorites => 'Favoritos';

  @override
  String get regions => 'Regiones';

  @override
  String get profile => 'Perfil';

  @override
  String get availableSoon => '¡Muy pronto disponible!';

  @override
  String get availableSoonDescription =>
      'Estamos trabajando para traerte esta sección. Vuelve más adelante para descubrir todas las novedades.';

  @override
  String get changeTheme => 'Cambiar Tema';
}
