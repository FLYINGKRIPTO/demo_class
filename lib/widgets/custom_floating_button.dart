import 'package:demo_class_project/core/app_color_helper.dart';
import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton(
      {super.key,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.shape,
      this.gradient,
      this.backgroundColor,
      this.child});

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final VoidCallback? onTap;

  final double? width;

  final double? height;

  final Widget? child;

  final BoxShape? shape;

  final Gradient? gradient;

  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: fabWidget,
          )
        : fabWidget;
  }

  Widget get fabWidget => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: FloatingActionButton(
          backgroundColor: backgroundColor,
          onPressed: onTap,
          child: Container(
            alignment: Alignment.center,
            width: width,
            height: height,
            decoration: roundGreenGradient,
            child: child,
          ),
        ),
      );
}

extension ScreenStyleHelper on CustomFloatingButton {
  BoxDecoration get roundGreenGradient => BoxDecoration(
        color: ColorConstant.white,
        shape: shape ?? BoxShape.rectangle,
        gradient: gradient,
      );
}
