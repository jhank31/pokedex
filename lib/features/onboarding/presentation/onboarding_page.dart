import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_global/features/onboarding/presentation/view/onboarding_view.dart';

/// {@template onboarding_page}
/// A page that displays the onboarding.
/// {@endtemplate}
@RoutePage()
class OnboardingPage extends StatelessWidget {
  /// {@macro onboarding_page}
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const OnboardingView();
  }
}
