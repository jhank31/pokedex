import 'dart:async';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex_global/core/theming/core/provider/theming_provider.dart';

/// this is the entry point of the application
Future<void> bootstrap(FutureOr<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();

  final container = ProviderContainer();
  final theme = await container.read(themingProvider.notifier).getTheme();
  await container.read(themingProvider.notifier).setInitialTheme(theme);
  runApp(
    UncontrolledProviderScope(container: container, child: await builder()),
  );
}
