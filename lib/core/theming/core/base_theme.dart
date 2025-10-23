import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pokedex_global/core/theming/core/app_typography.dart';
import 'package:pokedex_global/core/theming/core/base_color_palette.dart';

abstract class BaseTheme {
  const BaseTheme();

  /// Color palette from where the theme will be get the colora
  BaseColorPalette get baseColorPalette;

  /// The color Scheme of the theme
  ColorScheme get colorScheme => baseColorPalette.colorScheme;

  /// The typography of the theme
  AppTypography get typography => const AppTypography();

  /// Colors list of the gradient
  List<Color> get appBarGradientColors;

  /// The primary color of the button
  Color get primaryButtonColor => baseColorPalette.primaryColor;

  /// Wheter the theme is dark or not
  bool get isDark;

  Brightness get brightness => isDark ? Brightness.dark : Brightness.light;

  Brightness get brightnessStatusBar => Brightness.light;

  SystemUiOverlayStyle get systemUiOverlayStyle => SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // solo para android
        statusBarIconBrightness: brightnessStatusBar, // solo para android
        // solo para ios
        statusBarBrightness: brightnessStatusBar == Brightness.light
            ? Brightness.dark
            : Brightness.light,
      );

  ThemeData get theme;

  ThemeData get baseTheme => ThemeData(
        scaffoldBackgroundColor: baseColorPalette.background,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor:
                WidgetStateProperty.all(baseColorPalette.primaryColor),
            foregroundColor: WidgetStateProperty.all(baseColorPalette.white),
          ),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
            padding: WidgetStateProperty.all(
              const EdgeInsets.symmetric(horizontal: 16),
            ),
            backgroundColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) {
              if (states.contains(WidgetState.disabled)) {
                return baseColorPalette.primary100;
              }
              return baseColorPalette.primaryColor;
            }),
            shape: WidgetStateProperty.all(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(7),
              ),
            ),
            side: WidgetStateProperty.resolveWith<BorderSide>(
              (Set<WidgetState> states) {
                if (states.contains(WidgetState.pressed)) {
                  return BorderSide(
                    color: baseColorPalette.primary500,
                  );
                } else {
                  if (states.contains(WidgetState.disabled)) {
                    return BorderSide(
                      color: baseColorPalette.gray100,
                    );
                  }
                }
                return BorderSide(
                  color: baseColorPalette.primary500,
                );
              },
            ),
          ),
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: baseColorPalette.primaryColor,
          foregroundColor: baseColorPalette.white,
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: baseColorPalette.primaryColor,
          textTheme: ButtonTextTheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
          ),
        ),
        colorScheme: ColorScheme.fromSeed(
          seedColor: baseColorPalette.primaryColor,
          secondary: baseColorPalette.secondaryColor,
          brightness: brightness,
        ),
        appBarTheme: AppBarTheme(
          elevation: 0,
          centerTitle: true,
          titleTextStyle: TextStyle(
            color: isDark ? baseColorPalette.white : baseColorPalette.black,
            fontSize: typography.xxlRegular.fontSize,
            fontWeight: typography.xxlRegular.fontWeight,
            fontFamily: typography.primaryFontFamily,
          ),
          iconTheme: IconThemeData(
            color: isDark ? baseColorPalette.white : baseColorPalette.black,
          ),
          backgroundColor: Colors.transparent,
        ),
        bottomSheetTheme: BottomSheetThemeData(
          backgroundColor: baseColorPalette.background,
        ),
        cardTheme: CardThemeData(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          color: baseColorPalette.white,
        ),
        textTheme: TextTheme(
          bodyLarge: TextStyle(
            color: isDark
                ? baseColorPalette.textBlack
                : baseColorPalette.textWhite,
            fontFamily: typography.primaryFontFamily,
          ),
          bodyMedium: TextStyle(
            color: isDark
                ? baseColorPalette.textWhite
                : baseColorPalette.textBlack,
          ),
          titleLarge: TextStyle(
            color: isDark
                ? baseColorPalette.textWhite
                : baseColorPalette.textBlack,
            fontWeight: FontWeight.bold,
          ),
          titleMedium: TextStyle(
            color: isDark
                ? baseColorPalette.textWhite
                : baseColorPalette.textBlack,
            fontWeight: FontWeight.bold,
          ),
          titleSmall: TextStyle(
            color: isDark
                ? baseColorPalette.textWhite
                : baseColorPalette.textBlack,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: IconThemeData(
          color: isDark ? baseColorPalette.white : baseColorPalette.black,
        ),
        navigationBarTheme: NavigationBarThemeData(
          labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
            (states) {
              if (states.contains(WidgetState.selected)) {
                return TextStyle(
                  color: baseColorPalette.primary400,
                  fontWeight: FontWeight.bold,
                );
              }
              return TextStyle(
                color: baseColorPalette.gray500,
              );
            },
          ),
        ),
        useMaterial3: true,
        fontFamily: typography.primaryFontFamily,
        brightness: brightness,
        primaryColor: baseColorPalette.primaryColor,
        
      );
}
