import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex_global/core/const/sizes.dart';
import 'package:pokedex_global/core/local_db/providers/favorites_providers_db.dart';
import 'package:pokedex_global/core/theming/theme/themes.dart';
import 'package:pokedex_global/core/utils/extension/pokemon_color_extension.dart';
import 'package:pokedex_global/core/utils/extension/pokemon_icon_type_extension.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/entities.dart';
import 'package:pokedex_global/gen/assets/assets.gen.dart';

/// {@template right_pokemon_card_section}
/// A section that displays the right side of the pokemon card.
/// {@endtemplate}
class RightPokemonCardSection extends ConsumerWidget {
  /// {@macro right_pokemon_card_section}
  const RightPokemonCardSection({
    super.key,
    required this.size,
    required this.pokemon,
    required this.theme,
    required this.tag,
  });

  /// The size of the container.
  final Size size;

  /// The pokemon detail of the pokemon.
  final PokemonDetailEntity pokemon;

  /// The theme of the app.
  final AppThemes theme;

  /// The tag of the pokemon.
  final String tag;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isFavorite = ref.watch(watchIsFavoriteProvider(pokemon.id));

    return Container(
      width: size.width * 0.35,
      height: size.height * 0.15,
      decoration: BoxDecoration(
        color: pokemon.types.first.pokemonColor,
        borderRadius: BorderRadius.circular(Sizes.p16),
      ),
      padding: const EdgeInsets.all(Sizes.p8),
      child: Stack(
        alignment: Alignment.center,
        children: [
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
                fit: BoxFit.contain,
              ),
            ),
          ),
          Positioned(
            bottom: 10,
            child: Hero(
              tag: '$tag-${pokemon.id.toString()}',
              child: Image.network(
                pokemon.imageUrl,
                width: Sizes.p100,
                height: Sizes.p100,
                fit: BoxFit.contain,
                errorBuilder: (context, error, stackTrace) {
                  return Assets.images.logo
                      .image(width: Sizes.p100, height: Sizes.p100);
                },
              ),
            ),
          ),
          Positioned(
            top: Sizes.p4,
            right: Sizes.p4,
            child: Container(
              decoration: BoxDecoration(
                color: theme.baseTheme.baseColorPalette.black
                    .withValues(alpha: 0.3),
                shape: BoxShape.circle,
                border: Border.all(
                  color: theme.baseTheme.baseColorPalette.white,
                  width: Sizes.p4,
                ),
              ),
              child: IconButton(
                visualDensity: VisualDensity.compact,
                onPressed: () {
                  ref.read(toggleFavoriteProvider(
                    pokemonId: pokemon.id,
                    name: pokemon.name,
                    imageUrl: pokemon.imageUrl,
                  ));
                },
                icon: Icon(
                  isFavorite.value ?? false
                      ? Icons.favorite
                      : Icons.favorite_border,
                  color: isFavorite.value ?? false
                      ? Colors.redAccent
                      : theme.baseTheme.baseColorPalette.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
