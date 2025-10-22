import 'package:flutter/material.dart';
import 'package:pokedex_global/core/theming/core/base_color_palette.dart';
import 'package:pokedex_global/core/theming/core/base_theme.dart';
import 'package:pokedex_global/core/theming/theme/dark_theme/color_palette_dark.dart';

/// {@template dark_theme}
/// Dark theme for the app
/// {@endtemplate}
class DarkTheme extends BaseTheme {
  /// {@macro dark_theme}
  const DarkTheme();

  @override
  List<Color> get appBarGradientColors => [
        baseColorPalette.primary400,
        baseColorPalette.secondaryColor ,
  ];

  @override
  BaseColorPalette get baseColorPalette => ColorPaletteDark();

  @override
  bool get isDark => true;

  @override
  ThemeData get theme => baseTheme;

}
