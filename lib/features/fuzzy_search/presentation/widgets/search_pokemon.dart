import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex_global/core/const/sizes.dart';
import 'package:pokedex_global/core/theming/core/provider/theming_provider.dart';

/// {@template search_pokemon}
/// A widget that searches for a pokemon.
/// {@endtemplate}
class SearchPokemon extends HookConsumerWidget {
  /// {@macro search_pokemon}
  const SearchPokemon({
    super.key,
    required this.onSearch,
    required this.label,
    this.enabled = true,
    this.backIcon,
  });

  /// The callback of the search.
  final Future<void> Function(String) onSearch;

  /// The label of the search.
  final String label;

  /// Whether the search is enabled.
  final bool enabled;

  /// icon to back to home screen
  final Widget? backIcon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textEditingController = useTextEditingController();
    final focusNode = useFocusNode();
    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (enabled) {
          focusNode.requestFocus();
        }
      });
      return null;
    }, []);
    final theme = ref.watch(themingProvider);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Sizes.p20),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              enabled: enabled,
              focusNode: focusNode,
              controller: textEditingController,
              onChanged: (value) async => await onSearch(value),
              onTapOutside: (event) => FocusScope.of(context).unfocus(),
              style: theme.baseTheme.typography.mdRegular.copyWith(
                color: theme.baseTheme.isDark
                    ? theme.baseTheme.baseColorPalette.textWhite
                    : theme.baseTheme.baseColorPalette.textBlack,
              ),
              decoration: InputDecoration(
                labelText: label,
                prefixIcon: Padding(
                  padding: const EdgeInsets.only(left: Sizes.p16),
                  child: Icon(Icons.search,
                      color: theme.baseTheme.baseColorPalette.gray500),
                ),
                labelStyle: theme.baseTheme.typography.mdRegular.copyWith(
                  color: theme.baseTheme.baseColorPalette.gray500,
                ),
                floatingLabelBehavior: FloatingLabelBehavior.never,
                hint: null,
                disabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: theme.baseTheme.baseColorPalette.borderColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(Sizes.p30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: theme.baseTheme.baseColorPalette.borderColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(Sizes.p30),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: theme.baseTheme.baseColorPalette.borderColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(Sizes.p30),
                ),
              ),
            ),
          ),
          backIcon ?? SizedBox.shrink(),
        ],
      ),
    );
  }
}
