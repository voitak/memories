// ignore_for_file: avoid-dynamic

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:memories/app/logging/log_hub.dart';

enum NavigationLogLevel { none, normal }

class GoRouterNavigationObserver extends NavigatorObserver {
  GoRouterNavigationObserver();

  @override
  void didPush(Route<dynamic>? route, Route<dynamic>? previousRoute) {
    if (globalNavigationLoggerLevel == NavigationLogLevel.none) return;
    log('[Navigation] push:\n'
        '      from: ${previousRoute?.settings.name ?? ''}\n'
        '      to:   ${route?.settings.name ?? ''}');
  }

  @override
  void didPop(Route<dynamic>? route, Route<dynamic>? previousRoute) {
    if (globalNavigationLoggerLevel == NavigationLogLevel.none) return;
    log('[Navigation] pop:\n'
        '      from: ${previousRoute?.settings.name ?? ''}\n'
        '      to:   ${route?.settings.name ?? ''}');
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    if (globalNavigationLoggerLevel == NavigationLogLevel.none) return;
    log('[Navigation] replace:\n'
        '      old: ${oldRoute?.settings.name ?? ''}\n'
        '      new: ${newRoute?.settings.name ?? ''}');
  }
}
