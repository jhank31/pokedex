import 'package:hive_crypto_wallet_app/core/theming/theme/themes.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theming_provider.g.dart';

/// {@template theme_provider}
/// Provider for the theme
/// {@endtemplate}
@riverpod
class Theming extends _$Theming {
  @override
  AppThemes build() {
    return AppThemes.dark;
  }
}
