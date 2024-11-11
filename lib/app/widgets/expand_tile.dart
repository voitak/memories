import 'package:flutter/material.dart';
import 'package:memories/app/theme/app_theme_extensions.dart';

class ExpandTile extends StatefulWidget {
  const ExpandTile({
    required this.title,
    this.showDivider = true,
    this.canExpand = true,
    this.icon,
    this.subtitle,
    this.expandInfo,
    super.key,
  });

  final String title;
  final String? subtitle;
  final Widget? icon;
  final List<Widget>? expandInfo;
  final bool showDivider;
  final bool canExpand;

  @override
  State<ExpandTile> createState() => _ExpandTileState();
}

class _ExpandTileState extends State<ExpandTile> {
  bool isExpanded = false;

  double turns = 0;
  double radius = 12;
  double horizontalPadding = 16;

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.all(Radius.circular(radius)),
      color: context.colors.background,
      type: MaterialType.button,
      child: Container(
        width: MediaQuery.sizeOf(context).width - horizontalPadding * 2,
        decoration: BoxDecoration(
          border: Border.all(
            color: context.colors.accent.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(radius),
        ),
        child: Column(
          children: [
            GestureDetector(
              behavior: HitTestBehavior.translucent,
              onTap: () {
                setState(() {
                  if (isExpanded) {
                    turns = 0.0;
                  } else {
                    turns = 0.5;
                  }
                  isExpanded = !isExpanded;
                });
              },
              child: Padding(
                padding: EdgeInsets.all(horizontalPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        if (widget.icon != null) widget.icon!,
                        const SizedBox(width: 15),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            if (widget.subtitle != null)
                              Text(
                                widget.subtitle!,
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                            const SizedBox(height: 2),
                            Text(
                              widget.title,
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          if (widget.canExpand)
                            AnimatedRotation(
                              curve: Curves.fastLinearToSlowEaseIn,
                              duration: const Duration(milliseconds: 500),
                              turns: turns,
                              child: Icon(
                                Icons.arrow_drop_down,
                                color: context.colors.darkAccent,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (widget.canExpand)
              AnimatedSwitcher(
                duration: const Duration(milliseconds: 200),
                transitionBuilder: (child, animation) {
                  return SizeTransition(sizeFactor: animation, child: child);
                },
                child: !isExpanded && (widget.expandInfo?.isNotEmpty != null)
                    ? null
                    : Padding(
                        padding: EdgeInsets.only(
                          left: horizontalPadding,
                          right: horizontalPadding,
                          bottom: 10,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 1),
                            if (widget.showDivider)
                              const Divider(height: 0, thickness: 1),
                            const SizedBox(height: 5),
                            ...?widget.expandInfo,
                          ],
                        ),
                      ),
              ),
          ],
        ),
      ),
    );
  }
}
