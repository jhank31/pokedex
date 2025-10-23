// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;
import 'package:pokedex_global/core/logging/logs/view/talker_view.dart' as _i10;
import 'package:pokedex_global/features/favorites/presentation/favorites_page.dart'
    as _i1;
import 'package:pokedex_global/features/fuzzy_search/presentation/fuzzy_search_page.dart'
    as _i2;
import 'package:pokedex_global/features/home/presentation/home_page.dart'
    as _i3;
import 'package:pokedex_global/features/host/host_page.dart' as _i4;
import 'package:pokedex_global/features/onboarding/presentation/onboarding_page.dart'
    as _i5;
import 'package:pokedex_global/features/pokemon_details/domain/entities/entities.dart'
    as _i13;
import 'package:pokedex_global/features/pokemon_details/presentation/pokemon_details_page.dart'
    as _i6;
import 'package:pokedex_global/features/profile/presentation/profile_page.dart'
    as _i7;
import 'package:pokedex_global/features/regions/presentation/regions_page.dart'
    as _i8;
import 'package:pokedex_global/features/splash/presentation/splash_page.dart'
    as _i9;

/// generated route for
/// [_i1.FavoritesPage]
class FavoritesRoute extends _i11.PageRouteInfo<void> {
  const FavoritesRoute({List<_i11.PageRouteInfo>? children})
      : super(FavoritesRoute.name, initialChildren: children);

  static const String name = 'FavoritesRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i1.FavoritesPage();
    },
  );
}

/// generated route for
/// [_i2.FuzzySearchPage]
class FuzzySearchRoute extends _i11.PageRouteInfo<void> {
  const FuzzySearchRoute({List<_i11.PageRouteInfo>? children})
      : super(FuzzySearchRoute.name, initialChildren: children);

  static const String name = 'FuzzySearchRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i2.FuzzySearchPage();
    },
  );
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i11.PageRouteInfo<void> {
  const HomeRoute({List<_i11.PageRouteInfo>? children})
      : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomePage();
    },
  );
}

/// generated route for
/// [_i4.HostPage]
class HostRoute extends _i11.PageRouteInfo<void> {
  const HostRoute({List<_i11.PageRouteInfo>? children})
      : super(HostRoute.name, initialChildren: children);

  static const String name = 'HostRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i4.HostPage();
    },
  );
}

/// generated route for
/// [_i5.OnboardingPage]
class OnboardingRoute extends _i11.PageRouteInfo<void> {
  const OnboardingRoute({List<_i11.PageRouteInfo>? children})
      : super(OnboardingRoute.name, initialChildren: children);

  static const String name = 'OnboardingRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i5.OnboardingPage();
    },
  );
}

/// generated route for
/// [_i6.PokemonDetailsPage]
class PokemonDetailsRoute extends _i11.PageRouteInfo<PokemonDetailsRouteArgs> {
  PokemonDetailsRoute({
    _i12.Key? key,
    required _i13.PokemonDetailEntity pokemon,
    required String tag,
    List<_i11.PageRouteInfo>? children,
  }) : super(
          PokemonDetailsRoute.name,
          args: PokemonDetailsRouteArgs(key: key, pokemon: pokemon, tag: tag),
          initialChildren: children,
        );

  static const String name = 'PokemonDetailsRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PokemonDetailsRouteArgs>();
      return _i6.PokemonDetailsPage(
        key: args.key,
        pokemon: args.pokemon,
        tag: args.tag,
      );
    },
  );
}

class PokemonDetailsRouteArgs {
  const PokemonDetailsRouteArgs({
    this.key,
    required this.pokemon,
    required this.tag,
  });

  final _i12.Key? key;

  final _i13.PokemonDetailEntity pokemon;

  final String tag;

  @override
  String toString() {
    return 'PokemonDetailsRouteArgs{key: $key, pokemon: $pokemon, tag: $tag}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PokemonDetailsRouteArgs) return false;
    return key == other.key && pokemon == other.pokemon && tag == other.tag;
  }

  @override
  int get hashCode => key.hashCode ^ pokemon.hashCode ^ tag.hashCode;
}

/// generated route for
/// [_i7.ProfilePage]
class ProfileRoute extends _i11.PageRouteInfo<void> {
  const ProfileRoute({List<_i11.PageRouteInfo>? children})
      : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i7.ProfilePage();
    },
  );
}

/// generated route for
/// [_i8.RegionsPage]
class RegionsRoute extends _i11.PageRouteInfo<void> {
  const RegionsRoute({List<_i11.PageRouteInfo>? children})
      : super(RegionsRoute.name, initialChildren: children);

  static const String name = 'RegionsRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i8.RegionsPage();
    },
  );
}

/// generated route for
/// [_i9.SplashPage]
class SplashRoute extends _i11.PageRouteInfo<void> {
  const SplashRoute({List<_i11.PageRouteInfo>? children})
      : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i9.SplashPage();
    },
  );
}

/// generated route for
/// [_i10.TalkerView]
class TalkerRoute extends _i11.PageRouteInfo<void> {
  const TalkerRoute({List<_i11.PageRouteInfo>? children})
      : super(TalkerRoute.name, initialChildren: children);

  static const String name = 'TalkerRoute';

  static _i11.PageInfo page = _i11.PageInfo(
    name,
    builder: (data) {
      return const _i10.TalkerView();
    },
  );
}
