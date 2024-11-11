import 'package:flutter/material.dart';
import 'package:flutter_bloc_side_effect/flutter_bloc_side_effect.dart';
import 'package:memories/app/extensions/context.dart';
import 'package:memories/app/extensions/string.dart';
import 'package:memories/app/widgets/app_bar/category_app_bar.dart';
import 'package:memories/features/auth/bloc/auth_bloc.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  // ignore: dispose-fields
  late final AuthBloc authBloc;

  @override
  void initState() {
    super.initState();
    authBloc = AuthBloc(repository: context.dependencies.authRepository)
      ..add(const AuthEvent.initialize());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CategoryAppBar(categoryName: 'Авторизация'.hardCoded),
      body: BlocBuilder<AuthBloc, AuthState>(
        bloc: authBloc,
        builder: (context, state) {
          return Center(
            child: state.maybeWhen(
              orElse: CircularProgressIndicator.adaptive,
              idle: (user) => Text(user.description),
            ),
          );
        },
      ),
    );
  }
}
