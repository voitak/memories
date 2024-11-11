import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:memories/app/localization/generated/l10n.dart';
import 'package:memories/app/theme/app_theme_data.dart';

class App extends StatelessWidget {
  const App({required this.router, super.key});

  final RouterConfig<Object> router;

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'template',
      theme: AppThemeData.light,
      darkTheme: AppThemeData.dark,
      // ignore: avoid-dynamic
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [Locale('ru')],
      routerConfig: router,
      builder: (BuildContext context, Widget? child) {
        return child!;
      },
    );
  }
}
