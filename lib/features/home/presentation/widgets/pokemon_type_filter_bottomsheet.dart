import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pokedex_global/core/const/gap.dart';
import 'package:pokedex_global/core/const/sizes.dart';
import 'package:pokedex_global/core/theming/core/provider/theming_provider.dart';
import 'package:pokedex_global/core/utils/formaters/string_formaters/capitalize_string.dart';
import 'package:pokedex_global/features/home/presentation/provider/pokedex_provider.dart';
import 'package:pokedex_global/l10n/l10n.dart';
import 'package:pokedex_global/shared/pokedex_ui_kit/pokedex_ui_kit.dart';

/// {@template pokemon_type_filter_bottomsheet}
/// A bottom sheet to filter Pokémon by type.
/// {@endtemplate}
class PokemonTypeFilterBottomSheet extends HookConsumerWidget {
  /// {@macro pokemon_type_filter_bottomsheet}
  const PokemonTypeFilterBottomSheet({
    super.key,
    required this.onApplyFilter,
    required this.listOfTypes,
    required this.onCancelFilter,
  });

  /// The list of possible types.
  final List<String> listOfTypes;

  /// The callback to be called when the filter is applied.
  final void Function(List<String>) onApplyFilter;

  /// The callback to be called when the filter is canceled.
  final VoidCallback onCancelFilter;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentFilters = ref.watch(pokedexListProvider).when(
          data: (data) => data.activeFilters,
          error: (error, stackTrace) => <String>[],
          loading: () => <String>[],
        );

    final selectedTypes = useState<List<String>>(currentFilters);
    final scrollController = useScrollController();
    final theme = ref.watch(themingProvider);
    final l10n = context.l10n;

    return Container(
      padding: const EdgeInsets.all(Sizes.p16),
      decoration: BoxDecoration(
        color: theme.baseTheme.baseColorPalette.background,
        borderRadius:
            const BorderRadius.vertical(top: Radius.circular(Sizes.p20)),
      ),
      child: SafeArea(
        top: false,
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  padding: EdgeInsets.zero,
                  alignment: Alignment.centerLeft,
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.close, size: Sizes.p28),
                ),
              ],
            ),
            Text(
              l10n.filterPokemons,
              style: theme.baseTheme.typography.xxlSemiBold,
            ),
            Gap.height32,
            Row(
              children: [
                Expanded(
                  child: Text(
                    l10n.type,
                    style: theme.baseTheme.typography.xlSemiBold,
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
            Gap.height16,
            Divider(
              color: theme.baseTheme.baseColorPalette.borderColor,
              thickness: 1,
            ),
            Expanded(
              child: ListView.builder(
                controller: scrollController,
                itemCount: listOfTypes.length,
                itemBuilder: (context, index) {
                  final type = listOfTypes[index];
                  final isSelected = selectedTypes.value.contains(type);
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        capitalizeString(type),
                        style: theme.baseTheme.typography.lgRegular,
                      ),
                      Checkbox(
                        value: isSelected,
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.all(Radius.circular(Sizes.p4)),
                        ),
                        activeColor:
                            theme.baseTheme.baseColorPalette.primary500,
                        side: BorderSide(
                            color:
                                theme.baseTheme.baseColorPalette.borderColor),
                        onChanged: (checked) {
                          if (checked == true) {
                            selectedTypes.value = [
                              ...selectedTypes.value,
                              type,
                            ];
                          } else {
                            selectedTypes.value = selectedTypes.value
                                .where((t) => t != type)
                                .toList();
                          }
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
            Gap.height32,
            GenericButton(
              onPressed: () {
                Navigator.of(context).pop();
                onApplyFilter(selectedTypes.value.toList());
              },
              color: theme.baseTheme.baseColorPalette.primaryColor,
              child: Text(l10n.apply,
                  style: theme.baseTheme.typography.xlSemiBold.copyWith(
                    color: theme.baseTheme.baseColorPalette.textWhite,
                  )),
            ),
            Gap.height12,
            GenericButton(
              onPressed: onCancelFilter,
              color: theme.baseTheme.baseColorPalette.borderColor,
              child: Text(l10n.cancel,
                  style: theme.baseTheme.typography.xlSemiBold.copyWith(
                    color: theme.baseTheme.baseColorPalette.textBlack,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
