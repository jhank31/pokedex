import 'package:auto_route/auto_route.dart';
import 'package:pokedex_global/core/router/app_router.gr.dart';

/// {@template app_router}
/// The router for the application.
/// {@endtemplate}
@AutoRouterConfig(
  /// replaceInRouteName is used to replace the screen or page in the route name
  replaceInRouteName: 'Screen|Page|View,Route',
)
class AppRouter extends RootStackRouter {
  @override
  RouteType get defaultRouteType => RouteType.adaptive();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: TalkerRoute.page),
        AutoRoute(page: HostRoute.page, children: [
          AutoRoute(page: HomeRoute.page),
          AutoRoute(page: RegionsRoute.page),
          AutoRoute(page: FavoritesRoute.page),
          AutoRoute(page: ProfileRoute.page),
        ]),
        AutoRoute(page: OnboardingRoute.page),
        AutoRoute(page: PokemonDetailsRoute.page),
        AutoRoute(page: FuzzySearchRoute.page),
      ];
}
