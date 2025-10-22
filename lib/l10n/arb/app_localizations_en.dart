// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get hello => 'Hello';

  @override
  String greetUser(Object username) {
    return 'Welcome, $username!';
  }

  @override
  String get startOnboardingTitle => 'All Pokémon in one place';

  @override
  String get startOnboardingDescription =>
      'Access a wide list of Pokémon from all generations created by Nintendo';

  @override
  String get endOnboardingTitle => 'All Pokémon in one place';

  @override
  String get endOnboardingDescription =>
      'Access a wide list of Pokémon from all generations created by Nintendo';

  @override
  String get continueButton => 'Continue';

  @override
  String get finishButton => 'Finish';
}
