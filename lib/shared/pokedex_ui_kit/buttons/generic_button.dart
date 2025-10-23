import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex_global/core/const/sizes.dart';
import 'package:pokedex_global/core/theming/core/provider/theming_provider.dart';

/// {@template generic_button}
/// A generic button that can be used to navigate to a page or perform an action.
/// {@endtemplate}
class GenericButton extends ConsumerWidget {
  /// {@macro generic_button}
  const GenericButton({
    super.key,
    required this.onPressed,
    required this.child,
    this.height = 50,
    this.width = double.infinity,
    this.padding = const EdgeInsets.symmetric(
      horizontal: Sizes.p16,
      vertical: Sizes.p10,
    ),
    this.color,
  });

  /// The callback to be called when the button is pressed.
  final VoidCallback onPressed;

  /// The child of the button.
  final Widget child;

  /// height of the button.
  final double height;

  /// width of the button.
  final double width;

  /// color of the button.
  final Color? color;

  /// padding of the button.
  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themingProvider);
    return MaterialButton(
      onPressed: onPressed,
      splashColor: Colors.transparent,
      child: SizedBox(
        height: height,
        width: width,
        child: Container(
            alignment: Alignment.center,
            padding: padding,
            decoration: BoxDecoration(
              color: color ?? theme.baseTheme.baseColorPalette.primaryColor,
              borderRadius: BorderRadius.circular(Sizes.p100),
            ),
            child: child),
      ),
    );
  }
}
