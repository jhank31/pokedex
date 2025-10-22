
import 'package:pokedex_global/core/theming/core/base_theme.dart';
import 'package:pokedex_global/core/theming/theme/dark_theme/dark_theme.dart';
import 'package:pokedex_global/core/theming/theme/light_theme/light_theme.dart';

/// {@template app_themes}
/// App themes for the app
/// {@endtemplate}
enum AppThemes {
  dark(DarkTheme()),
  light(LightTheme());

  const AppThemes(this.baseTheme);

  final BaseTheme baseTheme;
}
