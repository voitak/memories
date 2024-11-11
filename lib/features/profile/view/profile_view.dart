import 'package:flutter/material.dart';
import 'package:memories/app/extensions/context.dart';
import 'package:memories/app/extensions/string.dart';
import 'package:memories/app/localization/generated/l10n.dart';
import 'package:memories/app/theme/app_theme_extensions.dart';
import 'package:memories/app/widgets/app_bar/template_app_bar.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TemplateAppBar(title: Text(S.current.personal_account)),
      body: Center(
        child: TextButton(
          onPressed: () {
            context.router.push('/auth');
          },
          child: Text('Авторизация'.hardCoded, style: context.styles.h1),
        ),
      ),
    );
  }
}
