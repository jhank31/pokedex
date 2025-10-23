import 'package:flutter/material.dart';

/// {@template pokemon_header_clipper}
/// A clipper that represents the header of the pokemon details view.
/// {@endtemplate}
class PokemonHeaderClipper extends CustomClipper<Path> {
  /// {@macro pokemon_header_clipper}
  const PokemonHeaderClipper();

  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 170);
    path.quadraticBezierTo(
      /// middle point of the path
      size.width / 2,

      /// bottom point of the path
      size.height,

      /// right point of the path
      size.width,

      /// bottom point of the path
      size.height - 170,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
