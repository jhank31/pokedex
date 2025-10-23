import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex_global/core/const/gap.dart';
import 'package:pokedex_global/core/const/sizes.dart';
import 'package:pokedex_global/core/local_db/providers/favorites_providers_db.dart';
import 'package:pokedex_global/core/theming/core/provider/theming_provider.dart';
import 'package:pokedex_global/features/pokemon_details/domain/entities/entities.dart';
import 'package:pokedex_global/features/pokemon_details/domain/enums/pokemon_type_enum.dart';
import 'package:pokedex_global/features/pokemon_details/presentation/widgets/widgets.dart';
import 'package:pokedex_global/gen/assets/assets.gen.dart';
import 'package:pokedex_global/l10n/l10n.dart';
import 'package:pokedex_global/shared/pokedex_ui_kit/atoms/chip_pokemon_ability.dart';

/// {@template pokemon_details_view}
/// A view that displays the details of a pokemon.
/// {@endtemplate}
class PokemonDetailsView extends HookConsumerWidget {
  /// {@macro pokemon_details_view}
  const PokemonDetailsView(
      {super.key, required this.pokemon, required this.tag});

  /// The pokemon detail of the pokemon.
  final PokemonDetailEntity pokemon;

  /// The tag of the pokemon.
  final String tag;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.sizeOf(context);
    final theme = ref.watch(themingProvider);
    final isFavorite = ref.watch(watchIsFavoriteProvider(pokemon.id));
    final l10n = context.l10n;

    /// The controller of the animation.
    final controller = useAnimationController(
      duration: const Duration(milliseconds: 800),
    );

    /// The opacity of the animation.
    final opacity = CurvedAnimation(
      parent: controller,
      curve: Curves.easeInOut,
    );

    /// Executes the fade-in once the widget is mounted.
    useEffect(() {
      controller.forward();
      return null;
    }, []);

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: Padding(
            padding: const EdgeInsets.only(left: Sizes.p16),
            child: IconButton(
              onPressed: () {
                context.pop();
              },
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
            )),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: Sizes.p16),
            child: IconButton(
              onPressed: () {
                ref.read(toggleFavoriteProvider(
                        pokemonId: pokemon.id,
                        name: pokemon.name,
                        imageUrl: pokemon.imageUrl)
                    .future);
              },
              icon: isFavorite.value == true
                  ? const Icon(Icons.favorite, color: Colors.red)
                  : const Icon(Icons.favorite_border_rounded),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FadeTransition(
              opacity: opacity,
              child: PokemonDetailHeader(
                pokemon: pokemon,
                size: size,
                tag: tag,
                theme: theme,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: Sizes.p16, vertical: Sizes.p16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BasicPokemonInformation(
                    pokemon: pokemon,
                    theme: theme,
                    tag: tag,
                  ),
                  Gap.height16,
                  Divider(
                    color: theme.baseTheme.baseColorPalette.borderColor,
                    thickness: 1,
                  ),
                  Gap.height16,
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ChipPokemonInformation(
                                  theme: theme,
                                  size: size,
                                  value: pokemon.weight.toString(),
                                  icon: Assets.icons.weight,
                                  text: l10n.weight,
                                  postText: 'kg'),
                              Gap.height16,
                              ChipPokemonInformation(
                                theme: theme,
                                size: size,
                                value: pokemon.category.toUpperCase(),
                                icon: Assets.icons.category,
                                text: l10n.category,
                              ),
                            ]),
                        Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ChipPokemonInformation(
                                  theme: theme,
                                  size: size,
                                  value: pokemon.height.toString(),
                                  icon: Assets.icons.height,
                                  text: l10n.height,
                                  postText: 'm'),
                              Gap.height16,
                              ChipPokemonInformation(
                                theme: theme,
                                size: size,
                                value: pokemon.abilities.first.toUpperCase(),
                                icon: Assets.icons.pokeball,
                                text: l10n.ability,
                              ),
                            ]),
                      ]),
                  Gap.height16,
                  PokemonGenderBar(
                      size: size,
                      l10n: l10n,
                      theme: theme,
                      maleRate: pokemon.maleRate,
                      femaleRate: pokemon.femaleRate),
                  Gap.height32,
                  Text(l10n.weaknesses.toUpperCase(),
                      style: theme.baseTheme.typography.xlMedium),
                  Gap.height16,
                  Wrap(
                    spacing: Sizes.p10,
                    runSpacing: Sizes.p10,
                    children: pokemon.weaknesses
                        .map((weakness) => ChipPokemonAbility(
                            theme: theme,
                            type: PokemonTypeEnum.fromType(weakness)))
                        .toList(),
                  ),
                  Gap.height32,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
