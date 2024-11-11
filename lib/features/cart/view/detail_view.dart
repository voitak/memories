import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:memories/app/extensions/string.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('detail view'.hardCoded)),
      body: Center(
        child: GestureDetector(
          onTap: () {
            context.pushNamed('Test');
          },
          child: Container(
            color: Colors.amber,
            height: 100,
            width: 100,
            child: Text('container'.hardCoded),
          ),
        ),
      ),
    );
  }
}
