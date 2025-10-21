// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:hive_crypto_wallet_app/core/logging/logs/view/talker_view.dart'
    as _i5;
import 'package:hive_crypto_wallet_app/features/home/home_page.dart' as _i1;
import 'package:hive_crypto_wallet_app/features/host/host_page.dart' as _i2;
import 'package:hive_crypto_wallet_app/features/market/market_page.dart' as _i3;
import 'package:hive_crypto_wallet_app/features/splash/splash_page.dart' as _i4;

/// generated route for
/// [_i1.HomePage]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
      : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomePage();
    },
  );
}

/// generated route for
/// [_i2.HostPage]
class HostRoute extends _i6.PageRouteInfo<void> {
  const HostRoute({List<_i6.PageRouteInfo>? children})
      : super(HostRoute.name, initialChildren: children);

  static const String name = 'HostRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.HostPage();
    },
  );
}

/// generated route for
/// [_i3.MarketPage]
class MarketRoute extends _i6.PageRouteInfo<void> {
  const MarketRoute({List<_i6.PageRouteInfo>? children})
      : super(MarketRoute.name, initialChildren: children);

  static const String name = 'MarketRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.MarketPage();
    },
  );
}

/// generated route for
/// [_i4.SplashPage]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute({List<_i6.PageRouteInfo>? children})
      : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.SplashPage();
    },
  );
}

/// generated route for
/// [_i5.TalkerView]
class TalkerRoute extends _i6.PageRouteInfo<void> {
  const TalkerRoute({List<_i6.PageRouteInfo>? children})
      : super(TalkerRoute.name, initialChildren: children);

  static const String name = 'TalkerRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.TalkerView();
    },
  );
}
