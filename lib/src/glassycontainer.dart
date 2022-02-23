import 'dart:ui';

import 'package:flutter/material.dart';

class GlassyContainer extends StatefulWidget {
  const GlassyContainer(
      {Key? key,
      required this.height,
      required this.width,
      required this.color,
      this.gradient,
      required this.child,
      this.radius = 0,
      this.blur = 20,
      this.opacity = 0.2,
      this.padding,})
      : super(key: key);
  final double height;
  final double width;
  final Color color;
  final Gradient? gradient;
  final Widget child;
  final double? radius;
  final double blur;
  final double? opacity;
  final EdgeInsetsGeometry? padding;

  @override
  State<GlassyContainer> createState() => _GlassyContainerState();
}

class _GlassyContainerState extends State<GlassyContainer> {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(widget.radius!),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: widget.blur, sigmaY: widget.blur),
          child: Container(
            padding: widget.padding,
            decoration: BoxDecoration(
              color: widget.color.withOpacity(widget.opacity!),
              borderRadius: BorderRadius.circular(widget.radius!),
              border: Border.all(
                width: 1.2,
                color: widget.color.withOpacity(0.2),
              ),
              gradient: widget.gradient,
            ),
            height: widget.height,
            width: widget.width,
            child: widget.child,
          ),
        ));
  }
}
