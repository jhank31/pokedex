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

  @override
  String get weight => 'Weight';

  @override
  String get height => 'Height';

  @override
  String get ability => 'Ability';

  @override
  String get category => 'Category';

  @override
  String get gender => 'Gender';

  @override
  String get unknown => 'Unknown';

  @override
  String get weaknesses => 'Weaknesses';

  @override
  String get errorTitle => 'Something went wrong...';

  @override
  String get errorDescription =>
      'We were unable to load the information at this time. Please check your connection or try again later.';

  @override
  String get retry => 'Retry';

  @override
  String get noFavorites => 'You haven\'t marked any Pokémon as favorites.';

  @override
  String get noFavoritesDescription =>
      'Click on the heart icon of your favorite Pokémon and they will appear here.';

  @override
  String get search => 'Search for Pokémon...';

  @override
  String get searchToShowData => 'Search for a Pokémon to see its data';

  @override
  String get home => 'Pokedex';

  @override
  String get favorites => 'Favorites';

  @override
  String get regions => 'Regions';

  @override
  String get profile => 'Profile';

  @override
  String get availableSoon => 'Available soon!';

  @override
  String get availableSoonDescription =>
      'We are working to bring you this section. Come back later to discover all the news.';

  @override
  String get changeTheme => 'Change Theme';

  @override
  String get filterPokemons => 'Filter according to your preferences';

  @override
  String get type => 'Type';

  @override
  String get apply => 'Apply';

  @override
  String get cancel => 'Cancel';
}
