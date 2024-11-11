import 'package:flutter/material.dart';
import 'package:memories/app/extensions/num.dart';
import 'package:memories/app/localization/generated/l10n.dart';
import 'package:memories/app/widgets/app_bar/search_field.dart';
import 'package:memories/app/widgets/app_bar/template_app_bar.dart';

class SearchView extends StatefulWidget {
  const SearchView({super.key});

  @override
  State<SearchView> createState() => _SearchViewState();
}

class _SearchViewState extends State<SearchView> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TemplateAppBar(
        title: SearchField(controller: TextEditingController()),
      ),
      body: Center(
        child: Text('${S.current.search} ${value.formatted}'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            value++;
          });
        },
      ),
    );
  }
}
