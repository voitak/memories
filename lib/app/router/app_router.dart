import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:memories/app/logging/navigation_observer.dart';
import 'package:memories/app/widgets/views/root_view.dart';
import 'package:memories/features/camera/view/camera_view.dart';
import 'package:memories/features/gallery/view/gallery_view.dart';
import 'package:memories/features/notifications/view/notifications_view.dart';
import 'package:memories/features/profile/view/profile_view.dart';

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
                path: '/gallery',
                pageBuilder: (BuildContext context, GoRouterState state) =>
                    const NoTransitionPage<void>(child: GalleryView()),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/camera',
                pageBuilder: (BuildContext context, GoRouterState state) =>
                    const NoTransitionPage<void>(child: CameraView()),
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
        path: '/notifications',
        pageBuilder: (BuildContext context, GoRouterState state) =>
            const NoTransitionPage<void>(child: NotificationsView()),
      ),
    ],
  );
}
