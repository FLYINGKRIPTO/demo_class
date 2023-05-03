import 'package:demo_class_project/base_button.dart';
import 'package:flutter/material.dart';

/// Button which extends [BaseButton] class and returns an returns an [OutlinedButton[ widget
/// has and extra [child] parameter, for the addition of custom child widgets to the button, giving more flexibility to the user.
/// if [child[ widget is not provided, default [text[ para will be used

class CustomOutlinedButton extends BaseButton {
  final Widget? child;
  const CustomOutlinedButton({
    Key? key,
    VoidCallback? onTap,
    ButtonStyle? buttonStyle,
    this.child,
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
      child: child ?? Text(
        text,
        style: buttonTextStyle,
      ),
    );
  }
}
