import 'package:flutter/material.dart';
import 'package:flutter_bloc_side_effect/flutter_bloc_side_effect.dart';
import 'package:memories/app/extensions/context.dart';
import 'package:memories/app/widgets/app_bar/template_app_bar.dart';
import 'package:memories/app/widgets/wrappers/paddings.dart';
import 'package:memories/features/location/bloc/location_bloc.dart';
import 'package:memories/features/location/view/widgets/location_info.dart';

class LocationView extends StatelessWidget {
  const LocationView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumerWithSideEffects<LocationBloc, LocationState,
        LocationSideEffect>(
      bloc: context.dependencies.locationBloc,
      listenWhen: (_, __) => true,
      listener: (context, state) {},
      sideEffectsListener: (context, sideEffect) {},
      builder: (context, state) {
        return Scaffold(
          appBar: TemplateAppBar(
            title: state.isLoading
                ? const CircularProgressIndicator.adaptive()
                : Text(state.ip),
          ),
          body: CommonPadding(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                state.isLoading
                    ? const Center(child: CircularProgressIndicator.adaptive())
                    : Center(child: LocationInfo(location: state.ipLocation)),
              ],
            ),
          ),
        );
      },
    );
  }
}
