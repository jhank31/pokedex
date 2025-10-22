import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex_global/core/router/app_router.gr.dart';
import 'package:pokedex_global/features/home/presentation/provider/pokedex_provider.dart';

/// {@template home_view}
/// A view that displays the home.
/// {@endtemplate}
class HomeView extends ConsumerWidget {
  /// {@macro home_view}
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokedexList = ref.watch(pokedexListProvider);
    return pokedexList.when(
      data: (data) => Scaffold(
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: ListView.separated(
              itemCount: data.length,
              separatorBuilder: (context, index) => const SizedBox(height: 10),
              itemBuilder: (context, index) => Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: GestureDetector(
                    onTap: () => context
                        .pushRoute(PokemonDetailsRoute(name: data[index].name)),
                    child: Text(data[index].name),
                  )),
            ),
          ),
        ),
      ),
      error: (error, stackTrace) => const Scaffold(
        body: Center(
          child: Text('Error'),
        ),
      ),
      loading: () => const Scaffold(
        body: Center(
          child: Text('Loading'),
        ),
      ),
    );
  }
}
