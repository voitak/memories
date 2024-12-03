import 'package:flutter/material.dart';
import 'package:flutter_bloc_side_effect/flutter_bloc_side_effect.dart';
import 'package:memories/app/extensions/context.dart';
import 'package:memories/app/widgets/app_bar/template_app_bar.dart';
import 'package:memories/app/widgets/wrappers/paddings.dart';
import 'package:memories/features/video/bloc/video_bloc.dart';

class VideoView extends StatelessWidget {
  const VideoView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumerWithSideEffects<VideoBloc, VideoState, VideoSideEffect>(
      bloc: context.dependencies.videoBloc,
      listener: (context, state) {},
      sideEffectsListener: (context, sideEffect) {},
      builder: (context, state) {
        return const Scaffold(
          appBar: TemplateAppBar(
            title: Text('Video'),
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
