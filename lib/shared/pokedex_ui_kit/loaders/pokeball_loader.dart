import 'package:flutter/material.dart';
import 'package:pokedex_global/gen/assets/assets.gen.dart';

/// {@template pokeball_loader}
/// A loader that represents the pokeball of a pokemon.
/// {@endtemplate}
class PokeBallLoader extends StatefulWidget {
  /// {@macro pokeball_loader}
  const PokeBallLoader({super.key, this.size = 100});

  /// The size of the loader.
  final double size;

  @override
  State<PokeBallLoader> createState() => _PokeBallLoaderState();
}

class _PokeBallLoaderState extends State<PokeBallLoader>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
      turns: _controller,
      child: Assets.images.logo.image(width: widget.size, height: widget.size),
    );
  }
}
