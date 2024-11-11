import 'package:flutter/material.dart';
import 'package:memories/app/theme/app_theme_extensions.dart';

class Clickable extends StatefulWidget {
  const Clickable({
    required this.child,
    this.onTap,
    this.onLongPress,
    this.expandPadding,
    super.key,
  });

  final Widget child;
  final VoidCallback? onTap;
  final VoidCallback? onLongPress;
  final EdgeInsetsGeometry? expandPadding;

  @override
  State<Clickable> createState() => _ClickableState();
}

class _ClickableState extends State<Clickable> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: (widget.expandPadding != null)
          ? HitTestBehavior.translucent
          : HitTestBehavior.opaque,
      onTap: widget.onTap,
      onLongPress: widget.onLongPress,
      onPanStart: (_) => setState(() => _isPressed = true),
      onPanDown: (_) => setState(() => _isPressed = true),
      onPanEnd: (_) => setState(() => _isPressed = false),
      onPanCancel: () => setState(() => _isPressed = false),
      child: Padding(
        padding: widget.expandPadding ?? EdgeInsets.zero,
        child: Stack(
          children: [
            widget.child,
            if (widget.onTap != null)
              AnimatedOpacity(
                duration: const Duration(milliseconds: 60),
                opacity: _isPressed ? 1 : 0,
                child: ColorFiltered(
                  colorFilter: ColorFilter.mode(
                    context.colors.background.withOpacity(0.4),
                    BlendMode.srcATop,
                  ),
                  child: widget.child,
                ),
              ),
          ],
        ),
      ),
    );
  }
}
