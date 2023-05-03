import 'package:demo_class_project/base_button.dart';
import 'package:flutter/material.dart';

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
      onPressed: super.onTap,
      style: buttonStyle,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (prefixWidget != null) prefixWidget!,
          Text(
            text,
          ),
          if (suffixWidget != null) suffixWidget!,
        ],
      ),
    );
  }
}
