import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pokedex_global/core/const/sizes.dart';
import 'package:pokedex_global/core/theming/theme/themes.dart';
import 'package:pokedex_global/core/utils/extension/pokemon_color_extension.dart';
import 'package:pokedex_global/core/utils/extension/pokemon_icon_type_extension.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/entities.dart';
import 'package:pokedex_global/features/pokemon_details/presentation/widgets/widgets.dart';
import 'package:pokedex_global/gen/assets/assets.gen.dart';

/// {@template pokemon_detail_header}
/// A widget that displays the header of the pokemon details view.
/// {@endtemplate}
class PokemonDetailHeader extends StatelessWidget {
  /// {@macro pokemon_detail_header}
  const PokemonDetailHeader({
    super.key,
    required this.pokemon,
    required this.size,
    required this.theme,
    required this.tag,
  });

  /// The pokemon detail of the pokemon.
  final PokemonDetailEntity pokemon;

  /// The size of the container.
  final Size size;

  /// The theme of the app.
  final AppThemes theme;

  /// The tag of the pokemon.
  final String tag;
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipPath(
            clipper: PokemonHeaderClipper(),
            child: Container(
              width: size.width,
              height: size.height * 0.4,
              color: pokemon.types.first.pokemonColor,
            )),
        Hero(
          tag: '$tag-${pokemon.types.first.pokemonIconType}-${pokemon.id}',
          child: ShaderMask(
            shaderCallback: (rect) => LinearGradient(
              colors: [
                theme.baseTheme.baseColorPalette.white,
                theme.baseTheme.baseColorPalette.white.withValues(alpha: 0.01)
              ],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ).createShader(rect),
            blendMode: BlendMode.srcIn,
            child: SvgPicture.asset(
              pokemon.types.first.pokemonIconType,
              height: size.height * 0.2,
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          child: Hero(
            tag: '$tag-${pokemon.id.toString()}',
            child: Image.network(
              pokemon.imageUrl,
              width: Sizes.p200,
              height: Sizes.p200,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) {
                return Assets.images.logo
                    .image(width: Sizes.p100, height: Sizes.p100);
              },
            ),
          ),
        ),
      ],
    );
  }
}
