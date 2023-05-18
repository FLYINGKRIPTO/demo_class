import 'package:demo_class_project/core/app_color_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({
    super.key,
    this.alignment,
    this.margin,
    this.value,
    required this.onChanged,
    this.height,
    this.width,
    this.borderRadius,
    this.activeColor,
    this.activeToggleColor,
    this.inactiveColor,
    this.inactiveToggleColor,
    this.toggleSize,
    this.activeText,
    this.activeTextColor,
  });

  final Alignment? alignment;

  final EdgeInsetsGeometry? margin;

  final bool? value;

  final Function(bool) onChanged;

  final double? height;
  final double? width;
  final double? borderRadius;
  final Color? activeColor;
  final Color? activeToggleColor;
  final Color? inactiveColor;
  final Color? inactiveToggleColor;
  final double? toggleSize;
  final String? activeText;
  final Color? activeTextColor;

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
          toggleSize: toggleSize ?? 24,
          borderRadius: borderRadius ?? 12,
          activeColor: activeColor ?? ColorConstant.blanchedAlmond,
          activeToggleColor: activeToggleColor ?? ColorConstant.darkCyn,
          inactiveColor: inactiveColor ?? ColorConstant.aeroBlue,
          inactiveToggleColor:
              inactiveToggleColor ?? ColorConstant.greyNeutral3,
          onToggle: (value) {
            onChanged(value);
          },
          activeText: activeText,
          activeTextColor: activeTextColor ?? ColorConstant.blackOlive,
          showOnOff: true,

        ),
      );
}
