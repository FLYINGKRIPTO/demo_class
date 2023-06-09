import 'package:demo_class_project/core/base_button.dart';
import 'package:flutter/material.dart';
import 'package:demo_class_project/core/button_theme_helper.dart';

/// Button which extends [BaseButton] class and returns an returns an [ElevatedButton[ widget
/// has and extra [child] parameter, for the addition of custom child widgets to the button, giving more flexibility to the user.
/// if [child[ widget is not provided, default [text[ para will be used

class CustomElevatedButton extends BaseButton {
  final Widget? child;
  final Widget? icon;
  final Widget? label;

  const CustomElevatedButton({
    Key? key,
    VoidCallback? onTap,
    ButtonStyle? buttonStyle,
    ButtonStyle? disabledButtonStyle,
    TextStyle? buttonTextStyle,
    bool? isDisabled,
    Gradient? gradient,
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
          buttonTextStyle: buttonTextStyle,
          gradient: gradient,
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
            ? ElevatedButton.icon(
                style: elevatedButtonStyle,
                onPressed: (isDisabled ?? false) ? () {} : onTap,
                icon: icon ?? const SizedBox.shrink(),
                label: label ?? const SizedBox.shrink(),
              )
            : ElevatedButton(
                style: elevatedButtonStyle,
                onPressed: (isDisabled ?? false) ? () {} : onTap,
                child: child ??
                    Text(
                      text,
                      style: buttonTextStyle,
                    ),
              ));
  }
}

extension CustomElevatedButtonX on CustomElevatedButton {
  ButtonStyle get elevatedButtonStyle => (isDisabled ?? false)
      ? disabledButtonStyle
      : (gradient == null)
          ? buttonStyle
          : ButtonThemeHelper.transparentButtonStyle;

  bool get isIconButton => (icon != null && label != null);

  BoxDecoration get gradientDecoration => BoxDecoration(gradient: gradient);

  bool get isGradient => gradient != null;
}
