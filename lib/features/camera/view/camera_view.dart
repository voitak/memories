import 'package:flutter/material.dart';
import 'package:flutter_bloc_side_effect/flutter_bloc_side_effect.dart';
import 'package:memories/app/extensions/context.dart';
import 'package:memories/app/widgets/app_bar/template_app_bar.dart';
import 'package:memories/app/widgets/wrappers/paddings.dart';
import 'package:memories/features/camera/bloc/camera_bloc.dart';

class CameraView extends StatelessWidget {
  const CameraView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumerWithSideEffects<CameraBloc, CameraState,
        CameraSideEffect>(
      bloc: context.dependencies.cameraBloc,
      listener: (context, state) {},
      sideEffectsListener: (context, sideEffect) {},
      builder: (context, state) {
        return const Scaffold(
          appBar: TemplateAppBar(
            title: Text('Camera'),
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
