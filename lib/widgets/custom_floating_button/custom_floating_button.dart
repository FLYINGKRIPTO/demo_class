import 'package:demo_class_project/core/app_color_helper.dart';
import 'package:demo_class_project/decoration_helper.dart';
import 'package:flutter/material.dart';

class CustomFloatingButton extends StatelessWidget {
  const CustomFloatingButton(
      {super.key,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.child});

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final VoidCallback? onTap;

  final double? width;

  final double? height;

  final Widget? child;

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
          backgroundColor: ColorConstant.cosmicLatte,
          onPressed: onTap,
          child: Container(
            alignment: Alignment.center,
            width: width,
            height: height,
            decoration: DecorationHelper.roundGreenGradient,
            child: child,
          ),
        ),
      );
}
