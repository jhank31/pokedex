import 'package:flutter/material.dart';
import 'package:pokedex_global/core/theming/core/base_color_palette.dart';

/// {@template color_palette_dark}
/// Color palette for the dark theme
/// {@endtemplate}
final class ColorPaletteDark extends BaseColorPalette {
  @override
  Color get primary100 => Colors.deepOrange.shade100;

  @override
  Color get primary200 => Colors.deepOrange.shade200;

  @override
  Color get primary300 => Colors.deepOrange.shade300;

  @override
  Color get primary400 => Colors.deepOrange.shade400;

  @override
  Color get primary500 => Colors.deepOrange.shade500;

  @override
  Color get secondary100 => Colors.green.shade100;

  @override
  Color get secondary200 => Colors.green.shade200;

  @override
  Color get secondary300 => Colors.green.shade300;

  @override
  Color get secondary400 => Colors.green.shade400;

  @override
  Color get secondary500 => Colors.green.shade500;

  @override
  Color get primaryColor => primary500;

  @override
  Color get secondaryColor => secondary500;

  @override
  ColorScheme get colorScheme => ColorScheme.fromSeed(
        seedColor: primary500,
      );

  @override
  Color get background => gray800;
}
