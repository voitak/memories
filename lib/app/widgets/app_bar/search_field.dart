import 'package:flutter/material.dart';
import 'package:memories/app/localization/generated/l10n.dart';

class SearchField extends StatefulWidget {
  const SearchField({required this.controller, super.key});

  final TextEditingController controller;

  @override
  State<SearchField> createState() => _SearchFieldState();
}

class _SearchFieldState extends State<SearchField> {
  bool emptyField = true;

  @override
  Widget build(BuildContext context) => SizedBox(
        child: TextFormField(
          autocorrect: false,
          controller: widget.controller,
          cursorHeight: 20,
          cursorWidth: 1,
          onChanged: (String value) {
            setState(() {
              emptyField = value.isEmpty;
            });
          },
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.only(left: 16),
            constraints: const BoxConstraints(maxHeight: 45),
            hintText: S.current.search,
            suffixIcon: emptyField
                ? const Icon(Icons.search)
                : GestureDetector(
                    onTap: () {
                      setState(() {
                        emptyField = true;
                        widget.controller.clear();
                      });
                    },
                    child: const Icon(Icons.close),
                  ),
          ),
        ),
      );
}
