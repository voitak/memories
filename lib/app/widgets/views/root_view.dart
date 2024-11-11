import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:memories/app/extensions/string.dart';
import 'package:memories/app/localization/generated/l10n.dart';
import 'package:memories/app/theme/app_theme_extensions.dart';

class RootView extends StatelessWidget {
  const RootView({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  void _goBranch(int index) {
    navigationShell.goBranch(
      index,
      // A common pattern when using bottom navigation bars is to support
      // navigating to the initial location when tapping the item that is
      // already active. This example demonstrates how to support this behavior,
      // using the initialLocation parameter of goBranch.
      initialLocation: index == navigationShell.currentIndex,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navigationShell,
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        currentIndex: navigationShell.currentIndex,
        onTap: _goBranch,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        items: [
          BottomNavigationBarItem(
            label: S.current.ipLocation,
            icon: const Icon(Icons.add_business),
          ),
          BottomNavigationBarItem(
            label: S.current.search,
            icon: const Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: S.current.cart,
            icon: Badge(
              backgroundColor: context.colors.background,
              textColor: context.colors.accent,
              label: Text('100'.hardCoded),
              child: const Icon(Icons.shopping_cart_rounded),
            ),
          ),
          BottomNavigationBarItem(
            label: S.current.profile,
            icon: const Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}
