import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex_global/core/local_db/providers/user_settings_providers.dart';
import 'package:pokedex_global/core/router/app_router.gr.dart';
import 'package:pokedex_global/core/theming/core/provider/theming_provider.dart';
import 'package:pokedex_global/gen/assets/assets.gen.dart';

/// {@template splash_view}
/// The splash view for the application.
/// {@endtemplate}
class SplashView extends HookConsumerWidget {
  /// {@macro splash_view}
  const SplashView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // states
    final scale = useState(1.0);
    final expandToFull = useState(false);
    final hasNavigated = useState(false);

    // effect that runs only once when the view is rendered
    useEffect(() {
      Future<void> runAnimationSequence() async {
        scale.value = 1;
        await Future.delayed(const Duration(milliseconds: 400));

        scale.value = 1.5;
        await Future.delayed(const Duration(milliseconds: 400));

        expandToFull.value = true;
        scale.value = 0.0;
        await Future.delayed(const Duration(milliseconds: 400));

        final hasSeenOnboarding =
            await ref.watch(hasSeenOnboardingProvider.future);

        if (hasNavigated.value) return;
        hasNavigated.value = true;

        if (context.mounted) {
          if (hasSeenOnboarding == true) {
            context.replaceRoute(const HomeRoute());
          } else {
            context.replaceRoute(const OnboardingRoute());
          }
        }
      }

      runAnimationSequence();
      return null;
    }, const []);

    final screenSize = MediaQuery.sizeOf(context);
    final theme = ref.watch(themingProvider);
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned.fill(
            child:
                Container(color: theme.baseTheme.baseColorPalette.background),
          ),
          Center(
            child: AnimatedScale(
              duration: const Duration(milliseconds: 400),
              curve: Curves.easeInOutBack,
              scale: scale.value,
              child: SizedBox(
                width: screenSize.width * 0.35,
                height: screenSize.height * 0.5,
                child: SvgPicture.asset(
                  Assets.icons.splashLogo,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
