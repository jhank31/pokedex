import 'package:pokedex_global/core/local_db/providers/di/database_providers.dart';
import 'package:pokedex_global/core/theming/theme/themes.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'theming_provider.g.dart';

@Riverpod(keepAlive: true)
class Theming extends _$Theming {
  @override
  AppThemes build() {
    return AppThemes.light;
  }

  Future<void> setInitialTheme(AppThemes theme) async {
    state = theme;
  }

  Future<void> toggleTheme() async {
    final repository = ref.watch(localStorageRepositoryProvider);
    final isDarkMode = await repository.isDarkMode();
    await repository.setDarkMode(!isDarkMode);
    state = state == AppThemes.dark ? AppThemes.light : AppThemes.dark;
  }

  Future<AppThemes> getTheme() async {
    final repository = ref.watch(localStorageRepositoryProvider);
    final isDarkMode = await repository.isDarkMode();
    return isDarkMode ? AppThemes.dark : AppThemes.light;
  }
}
