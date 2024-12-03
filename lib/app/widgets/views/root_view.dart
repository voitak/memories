import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:memories/app/extensions/string.dart';
import 'package:memories/app/localization/generated/l10n.dart';

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
            label: 'Gallery'.hardCoded,
            icon: const Icon(Icons.photo_library),
          ),
          BottomNavigationBarItem(
            label: 'Camera'.hardCoded,
            icon: const Icon(Icons.camera_alt),
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
