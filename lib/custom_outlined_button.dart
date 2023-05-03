import 'package:demo_class_project/base_button.dart';
import 'package:flutter/material.dart';

/// Button which extends [BaseButton] class and returns an returns an [OutlinedButton[ widget

class CustomOutlinedButton extends BaseButton {
  const CustomOutlinedButton({
    Key? key,
    VoidCallback? onTap,
    ButtonStyle? buttonStyle,
    required String text,
  }) : super(
          key: key,
          text: text,
          onTap: onTap,
          buttonStyle: buttonStyle,
        );

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: buttonStyle,
      onPressed: onTap,
      child: Text(
        text,
      ),
    );
  }
}
