import 'package:flutter/material.dart';
import 'package:flutter_bloc_side_effect/side_effect_bloc.dart';
import 'package:template/app/extensions/context.dart';
import 'package:template/app/widgets/app_bar/template_app_bar.dart';
import 'package:template/app/widgets/wrappers/paddings.dart';

class {name}[-C]View extends StatelessWidget {
  const {name}[-C]View({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumerWithSideEffects<{name}[-C]Bloc, {name}[-C]State,
    {name}[-C]SideEffect>(
      bloc: context.dependencies.{name}[-c]Bloc,
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: TemplateAppBar(
           title: '{name}[-C]',
          ),
          body: CommonPadding(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [],
            ),
          ),
        );
      },
    );
  }
}
