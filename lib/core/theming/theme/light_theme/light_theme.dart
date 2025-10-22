import 'package:flutter/material.dart';
import 'package:pokedex_global/core/theming/core/base_color_palette.dart';
import 'package:pokedex_global/core/theming/core/base_theme.dart';
import 'package:pokedex_global/core/theming/theme/light_theme/color_palette_light.dart';

/// {@template light_theme}
/// Light theme for the app
/// {@endtemplate}
class LightTheme extends BaseTheme {
  /// {@macro light_theme}
  const LightTheme();

  @override
  List<Color> get appBarGradientColors => [
        baseColorPalette.primary400,
        baseColorPalette.secondaryColor,
      ];

  @override
  BaseColorPalette get baseColorPalette => ColorPaletteLight();

  @override
  bool get isDark => false;

  @override
  ThemeData get theme => baseTheme;
}
