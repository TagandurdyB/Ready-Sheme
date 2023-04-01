import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  final Widget? child;
  final double? width;
  final Duration duration;
  final double? height;
  final double shape;
  final double borderWidth;
  final Color? color;
  final Color borderColor;
  final List<Color>? colors;
  final List<BoxShadow>? boxShadow;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final Alignment? alignment;
  final Alignment? gradientBegin;
  final Alignment? gradientEnd;
  final Function? onTap;
  const MyContainer(
      {super.key,
      this.boxShadow,
      this.duration = Duration.zero,
      this.child,
      this.width,
      this.height,
      this.shape = 0.0,
      this.borderWidth = 0.0,
      this.color = Colors.grey,
      this.borderColor = Colors.grey,
      this.colors,
      this.padding,
      this.margin,
      this.alignment,
      this.gradientBegin,
      this.gradientEnd,
      this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap != null ? () => onTap!() : null,
      child: AnimatedContainer(
        duration: duration,
        padding: padding,
        margin: margin,
        alignment: alignment,
        width: width,
        height: height,
        decoration: BoxDecoration(
            boxShadow: boxShadow,
            shape: BoxShape.rectangle,
            // ignore: unnecessary_null_comparison
            border: borderWidth == null
                ? null
                : Border.all(width: borderWidth, color: borderColor),
            borderRadius: BorderRadius.all(Radius.circular(shape)),
            color: colors == null ? color : null,
            gradient: colors != null
                ? LinearGradient(
                    begin: gradientBegin ?? Alignment.topLeft,
                    end: gradientEnd ?? Alignment.bottomRight,
                    colors: colors ?? [Colors.blue, Colors.red])
                : null),
        child: child,
      ),
    );
  }
}
