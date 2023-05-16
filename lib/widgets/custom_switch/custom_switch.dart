import 'package:demo_class_project/core/app_color_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch(
      {super.key,
      this.alignment,
      this.margin,
      this.value,
      this.onChanged,
      this.height,
      this.width,
      this.borderRadius});

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final bool? value;

  final Function(bool)? onChanged;

  final double? height;
  final double? width;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: switchWidget,
          )
        : switchWidget;
  }

  Widget get switchWidget => Padding(
        padding: margin ?? EdgeInsets.zero,
        child: FlutterSwitch(
          value: value ?? false,
          height: height ?? 24,
          width: width ?? 24,
          toggleSize: 24,
          borderRadius: 12,
          activeColor: ColorConstant.blanchedAlmond,
          activeToggleColor: ColorConstant.darkCyn,
          inactiveColor: ColorConstant.aeroBlue,
          inactiveToggleColor: ColorConstant.greyNeutral3,
          onToggle: (value) {
            onChanged!(value);
          },
        ),
      );
}
