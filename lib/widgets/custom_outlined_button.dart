import 'package:demo_class_project/core/base_button.dart';
import 'package:flutter/material.dart';

/// Button which extends [BaseButton] class and returns an returns an [OutlinedButton[ widget
/// has and extra [child] parameter, for the addition of custom child widgets to the button, giving more flexibility to the user.
/// if [child] widget is not provided, default [text[ para will be used

class CustomOutlinedButton extends BaseButton {
  final Widget? child;
  final Widget? icon;
  final Widget? label;

  const CustomOutlinedButton({
    Key? key,
    VoidCallback? onTap,
    ButtonStyle? buttonStyle,
    ButtonStyle? disabledButtonStyle,
    bool? isDisabled,
    double? height,
    double? width,
    this.child,
    this.icon,
    this.label,
    required String text,
  }) : super(
          key: key,
          text: text,
          onTap: onTap,
          buttonStyle: buttonStyle,
          isDisabled: isDisabled,
          disabledButtonStyle: disabledButtonStyle,
          height: height,
          width: width,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: isGradient ? gradientDecoration : null,
      child: isIconButton
          ? OutlinedButton.icon(
              style: (isDisabled ?? false) ? disabledButtonStyle : buttonStyle,
              onPressed: (isDisabled ?? false) ? () {} : onTap,
              icon: icon!,
              label: label!,
            )
          : OutlinedButton(
              style: (isDisabled ?? false) ? disabledButtonStyle : buttonStyle,
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

extension CustomOutlineButtonX on CustomOutlinedButton {
  bool get isIconButton => (icon != null && label != null);

  BoxDecoration get gradientDecoration => BoxDecoration(gradient: gradient);

  bool get isGradient => gradient != null;
}
