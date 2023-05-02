import 'package:demo_class_project/base_button.dart';
import 'package:demo_class_project/text_theme_helper.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends BaseButton {
  final Alignment? alignment;
  final Widget? prefixWidget;
  final Widget? suffixWidget;

  const CustomTextButton(
      {Key? key,
      this.alignment,
      required VoidCallback onTap,
      required String text,
      this.prefixWidget,
      this.suffixWidget})
      : super(key: key, text: text, onTap: onTap);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: super.onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (prefixWidget != null) prefixWidget!,
          Text(
            text,
            style: TextThemeHelper.bodySmallBlack400Inter8,
          ),
          if (suffixWidget != null) suffixWidget!,
        ],
      ),
    );
  }
}
