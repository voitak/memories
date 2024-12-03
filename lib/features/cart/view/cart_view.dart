import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:memories/app/extensions/string.dart';
import 'package:memories/app/localization/generated/l10n.dart';
import 'package:memories/app/theme/app_theme_extensions.dart';
import 'package:memories/app/widgets/wrappers/paddings.dart';

class CartView extends StatelessWidget {
  const CartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(S.current.cart),
        actions: [
          RightPadding(
            child: GestureDetector(
              behavior: HitTestBehavior.opaque,
              child: Center(child: Text(S.current.clear)),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              style: ButtonStyle(
                textStyle: WidgetStateProperty.all(context.styles.h1),
              ),
              onPressed: () {
                GoRouter.of(context).push('/cart/detail_view');
              },
              child: Text('detail view'.hardCoded),
            ),
            Text(S.current.cart),
          ],
        ),
      ),
    );
  }
}
