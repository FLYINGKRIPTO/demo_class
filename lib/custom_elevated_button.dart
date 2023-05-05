import 'package:demo_class_project/base_button.dart';
import 'package:demo_class_project/decoration_helper.dart';
import 'package:flutter/material.dart';
import 'button_theme_helper.dart';

/// Button which extends [BaseButton] class and returns an returns an [ElevatedButton[ widget
/// has and extra [child] parameter, for the addition of custom child widgets to the button, giving more flexibility to the user.
/// if [child[ widget is not provided, default [text[ para will be used

class CustomElevatedButton extends BaseButton {
  final Widget? child;

  const CustomElevatedButton({
    Key? key,
    VoidCallback? onTap,
    ButtonStyle? buttonStyle,
    ButtonStyle? disabledButtonStyle,
    bool? isDisabled,
    BoxDecoration? gradient,
    this.child,
    required String text,
  }) : super(
          key: key,
          text: text,
          onTap: onTap,
          buttonStyle: buttonStyle,
          isDisabled: isDisabled,
          disabledButtonStyle: disabledButtonStyle,
          gradient: gradient,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: gradient,
      child: ElevatedButton(
        style: (isDisabled ?? false)
            ? disabledButtonStyle
            : (gradient == null)
                ? buttonStyle
                : ButtonThemeHelper.gradientButtonStyle,
        onPressed: (isDisabled ?? false) ? () {} : onTap,
        child: child ??
            Text(
              text,
              style: buttonTextStyle,
            ),
      ),
    );
  }
}
