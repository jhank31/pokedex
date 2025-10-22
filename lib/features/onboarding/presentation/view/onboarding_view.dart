import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:pokedex_global/core/const/gap.dart';
import 'package:pokedex_global/core/const/sizes.dart';
import 'package:pokedex_global/core/router/app_router.gr.dart';
import 'package:pokedex_global/core/theming/core/provider/theming_provider.dart';
import 'package:pokedex_global/features/onboarding/presentation/view/end_onboarding_view.dart';
import 'package:pokedex_global/features/onboarding/presentation/view/start_onboarding_view.dart';
import 'package:pokedex_global/l10n/l10n.dart';
import 'package:pokedex_global/shared/pokedex_ui_kit/pokedex_ui_kit.dart';

/// {@template onboarding_view}
/// A view that displays the onboarding.
/// {@endtemplate}
class OnboardingView extends ConsumerStatefulWidget {
  /// {@macro onboarding_view}
  const OnboardingView({super.key});

  @override
  ConsumerState<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends ConsumerState<OnboardingView> {
  // cotrollers
  late final PageController pageController;

  // list of views
  final listOfViews = [
    const StartOnboardingView(),
    const EndOnboardingView(),
  ];

  // current index
  int currentIndex = 0;

  // button text
  String buttonText = '';

  // is last page
  bool isLastPage = false;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final theme = ref.watch(themingProvider);
    isLastPage = currentIndex == listOfViews.length - 1;
    buttonText = isLastPage ? l10n.finishButton : l10n.continueButton;
    return Scaffold(
      body: PageView.builder(
        itemCount: listOfViews.length,
        controller: pageController,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: listOfViews[index],
          );
        },
        onPageChanged: (index) => setState(() => currentIndex = index),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  listOfViews.length,
                  (index) => AnimatedContainer(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                        margin:
                            const EdgeInsets.symmetric(horizontal: Sizes.p4),
                        width: index == currentIndex ? Sizes.p28 : Sizes.p10,
                        height: Sizes.p10,
                        decoration: BoxDecoration(
                          color: index == currentIndex
                              ? theme.baseTheme.baseColorPalette.primary500
                              : theme.baseTheme.baseColorPalette.primary100
                                  .withValues(alpha: 0.25),
                          borderRadius: BorderRadius.circular(Sizes.p10),
                        ),
                      )),
            ),
            Gap.height20,
            GenericButton(
              height: 58,
              onPressed: () {
                if (isLastPage) {
                  context.pushRoute(const HomeRoute());
                } else {
                  pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
              child: Text(buttonText,
                  style: theme.baseTheme.typography.xlSemiBold.copyWith(
                    color: theme.baseTheme.baseColorPalette.textWhite,
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
