import 'package:flutter/material.dart';
import 'package:flutter_bloc_side_effect/flutter_bloc_side_effect.dart';
import 'package:memories/app/extensions/context.dart';
import 'package:memories/app/widgets/app_bar/template_app_bar.dart';
import 'package:memories/app/widgets/wrappers/paddings.dart';
import 'package:memories/features/gallery/bloc/gallery_bloc.dart';

class GalleryView extends StatefulWidget {
  const GalleryView({super.key});

  @override
  State<GalleryView> createState() => _GalleryViewState();
}

class _GalleryViewState extends State<GalleryView> {
  // ignore: dispose-fields
  late final GalleryBloc galleryBloc;

  @override
  void initState() {
    super.initState();
    galleryBloc = GalleryBloc(repository: context.dependencies.galleryRepository)
      ..add(const GalleryEvent.initialize());
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumerWithSideEffects<GalleryBloc, GalleryState,
        GallerySideEffect>(
      bloc: context.dependencies.galleryBloc,
      listener: (context, state) {},
      sideEffectsListener: (context, sideEffect) {},
      builder: (context, state) {
        return const Scaffold(
          appBar: TemplateAppBar(
            title: Text('Gallery'),
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
