// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:pokedex_global/core/logging/logs/view/talker_view.dart' as _i7;
import 'package:pokedex_global/features/favorites/presentation/favorites_page.dart'
    as _i1;
import 'package:pokedex_global/features/home/presentation/home_page.dart'
    as _i2;
import 'package:pokedex_global/features/host/host_page.dart' as _i3;
import 'package:pokedex_global/features/onboarding/presentation/onboarding_page.dart'
    as _i4;
import 'package:pokedex_global/features/pokemon_details/presentation/pokemon_details_page.dart'
    as _i5;
import 'package:pokedex_global/features/splash/presentation/splash_page.dart'
    as _i6;

/// generated route for
/// [_i1.FavoritesPage]
class FavoritesRoute extends _i8.PageRouteInfo<void> {
  const FavoritesRoute({List<_i8.PageRouteInfo>? children})
      : super(FavoritesRoute.name, initialChildren: children);

  static const String name = 'FavoritesRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i1.FavoritesPage();
    },
  );
}

/// generated route for
/// [_i2.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomePage();
    },
  );
}

/// generated route for
/// [_i3.HostPage]
class HostRoute extends _i8.PageRouteInfo<void> {
  const HostRoute({List<_i8.PageRouteInfo>? children})
      : super(HostRoute.name, initialChildren: children);

  static const String name = 'HostRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i3.HostPage();
    },
  );
}

/// generated route for
/// [_i4.OnboardingPage]
class OnboardingRoute extends _i8.PageRouteInfo<void> {
  const OnboardingRoute({List<_i8.PageRouteInfo>? children})
      : super(OnboardingRoute.name, initialChildren: children);

  static const String name = 'OnboardingRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i4.OnboardingPage();
    },
  );
}

/// generated route for
/// [_i5.PokemonDetailsPage]
class PokemonDetailsRoute extends _i8.PageRouteInfo<PokemonDetailsRouteArgs> {
  PokemonDetailsRoute({
    _i9.Key? key,
    required String name,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          PokemonDetailsRoute.name,
          args: PokemonDetailsRouteArgs(key: key, name: name),
          initialChildren: children,
        );

  static const String name = 'PokemonDetailsRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PokemonDetailsRouteArgs>();
      return _i5.PokemonDetailsPage(key: args.key, name: args.name);
    },
  );
}

class PokemonDetailsRouteArgs {
  const PokemonDetailsRouteArgs({this.key, required this.name});

  final _i9.Key? key;

  final String name;

  @override
  String toString() {
    return 'PokemonDetailsRouteArgs{key: $key, name: $name}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PokemonDetailsRouteArgs) return false;
    return key == other.key && name == other.name;
  }

  @override
  int get hashCode => key.hashCode ^ name.hashCode;
}

/// generated route for
/// [_i6.SplashPage]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute({List<_i8.PageRouteInfo>? children})
      : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i6.SplashPage();
    },
  );
}

/// generated route for
/// [_i7.TalkerView]
class TalkerRoute extends _i8.PageRouteInfo<void> {
  const TalkerRoute({List<_i8.PageRouteInfo>? children})
      : super(TalkerRoute.name, initialChildren: children);

  static const String name = 'TalkerRoute';

  static _i8.PageInfo page = _i8.PageInfo(
    name,
    builder: (data) {
      return const _i7.TalkerView();
    },
  );
}
