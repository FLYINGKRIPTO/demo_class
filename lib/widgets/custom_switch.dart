import 'package:demo_class_project/core/app_color_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
    this.inactiveText,
    this.inactiveTextColor,
    this.isAndroid = true,
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
  final String? inactiveText;
  final Color? inactiveTextColor;
  final bool isAndroid;

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
        child: isAndroid
            ? Switch(
                value: value ?? false,
                inactiveThumbColor:
                    inactiveToggleColor ?? ColorConstant.blackOlive,
                activeColor: activeColor ?? ColorConstant.green5,
                onChanged: (bool value) {
                  onChanged(value);
                },
              )
            : CupertinoSwitch(
                value: value ?? false,
                trackColor: inactiveToggleColor ?? ColorConstant.blackOlive,
                activeColor: activeColor ?? ColorConstant.green5,
                onChanged: (bool value) {
                  onChanged(value);
                },
              ),
      );
}
