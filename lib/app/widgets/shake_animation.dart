import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShakeAnimation extends StatefulWidget {
  const ShakeAnimation({
    required this.child,
    this.afterAnimationCallback,
    this.duration = const Duration(milliseconds: 700),
    this.deltaX = 20,
    this.curve = Curves.bounceOut,
    this.useVibration = true,
    super.key,
  });

  final Widget child;
  final VoidCallback? afterAnimationCallback;
  final Duration duration;
  final double deltaX;
  final Curve curve;
  final bool useVibration;

  @override
  State<ShakeAnimation> createState() => _ShakeAnimationState();
}

class _ShakeAnimationState extends State<ShakeAnimation>
    with SingleTickerProviderStateMixin<ShakeAnimation> {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: widget.duration,
      vsync: this,
    )
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          widget.afterAnimationCallback?.call();
        }
      })
      ..forward();
    if (widget.useVibration) {
      HapticFeedback.mediumImpact();
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  /// convert 0-1 to 0-1-0
  double shake(double value) =>
      2 * (0.5 - (0.5 - widget.curve.transform(value)).abs());

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) => Transform.translate(
        offset: Offset(widget.deltaX * shake(_controller.value), 0),
        child: child,
      ),
      child: widget.child,
    );
  }
}
