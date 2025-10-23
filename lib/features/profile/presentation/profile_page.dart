import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_global/features/profile/presentation/view/profile_view.dart';

/// {@template profile_page}
/// A page that displays the profile.
/// {@endtemplate}
@RoutePage()
class ProfilePage extends StatelessWidget {
  /// {@macro profile_page}
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ProfileView();
  }
}
