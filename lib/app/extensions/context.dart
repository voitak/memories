import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:memories/app/dependencies/dependencies.dart';

extension ContextExtensions on BuildContext {
  Dependencies get dependencies => Dependencies.of(this);

  GoRouter get router => GoRouter.of(this);
}
