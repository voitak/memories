// ignore_for_file: prefer-single-widget-per-file

import 'dart:io';

import 'package:flutter/material.dart';

const _iOSHorizontalPadding = 16.0;
const _androidHorizontalPadding = 14.0;

class CommonPadding extends StatelessWidget {
  const CommonPadding({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) => Platform.isIOS
      ? Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: _iOSHorizontalPadding),
          child: child,
        )
      : Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: _androidHorizontalPadding),
          child: child,
        );
}

class RightPadding extends StatelessWidget {
  const RightPadding({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) => Platform.isIOS
      ? Padding(
          padding: const EdgeInsets.only(right: _iOSHorizontalPadding),
          child: child,
        )
      : Padding(
          padding: const EdgeInsets.only(right: _androidHorizontalPadding),
          child: child,
        );
}
