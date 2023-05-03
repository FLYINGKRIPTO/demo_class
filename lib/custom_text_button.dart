import 'package:demo_class_project/base_button.dart';
import 'package:demo_class_project/button_theme_helper.dart';
import 'package:flutter/material.dart';

/// Button which extends [BaseButton] class and returns an returns an [TextButton[ widget
/// takes [prefixWidget] and [suffixWidget] as additional parameters

class CustomTextButton extends BaseButton {
  final Widget? prefixWidget;
  final Widget? suffixWidget;

  const CustomTextButton(
      {Key? key,
      required String text,
      VoidCallback? onTap,
      ButtonStyle? buttonStyle,
      this.prefixWidget,
      this.suffixWidget})
      : super(
            key: key,
            text: text,
            onTap: onTap,
            buttonStyle: buttonStyle,);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onTap,
      style: buttonStyle ?? ButtonThemeHelper.textButtonBlack,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (prefixWidget != null) prefixWidget!,
          Text(
            text,
            style: buttonTextStyle,
          ),
          if (suffixWidget != null) suffixWidget!,
        ],
      ),
    );
  }
}
