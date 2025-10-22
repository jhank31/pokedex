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
}
