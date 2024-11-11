import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:memories/app/logging/navigation_observer.dart';
import 'package:memories/app/widgets/views/root_view.dart';
import 'package:memories/features/auth/view/auth_view.dart';
import 'package:memories/features/cart/view/cart_view.dart';
import 'package:memories/features/cart/view/detail_view.dart';
import 'package:memories/features/location/view/location_view.dart';
import 'package:memories/features/profile/view/profile_view.dart';
import 'package:memories/features/search/view/search_view.dart';

final class AppRouter {
  AppRouter();

  final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>();

  late final GoRouter router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/location',
    observers: [GoRouterNavigationObserver()],
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (
          BuildContext context,
          GoRouterState state,
          StatefulNavigationShell navigationShell,
        ) =>
            RootView(navigationShell: navigationShell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/location',
                pageBuilder: (BuildContext context, GoRouterState state) =>
                    const NoTransitionPage<void>(child: LocationView()),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/search',
                pageBuilder: (BuildContext context, GoRouterState state) =>
                    const NoTransitionPage<void>(child: SearchView()),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/cart',
                pageBuilder: (BuildContext context, GoRouterState state) =>
                    const NoTransitionPage<void>(child: CartView()),
                routes: [
                  GoRoute(
                    path: 'detail_view',
                    builder: (BuildContext context, GoRouterState state) =>
                        const DetailView(),
                  ),
                  GoRoute(
                    parentNavigatorKey: _rootNavigatorKey,
                    path: 'test',
                    builder: (BuildContext context, GoRouterState state) =>
                        const AuthView(),
                  ),
                ],
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                name: 'Profile',
                path: '/profile',
                pageBuilder: (BuildContext context, GoRouterState state) =>
                    const NoTransitionPage<void>(child: ProfileView()),
              ),
            ],
          ),
        ],
      ),
      GoRoute(
        parentNavigatorKey: _rootNavigatorKey,
        name: 'Auth',
        path: '/auth',
        builder: (BuildContext context, GoRouterState state) =>
            const AuthView(),
      ),
    ],
  );
}
