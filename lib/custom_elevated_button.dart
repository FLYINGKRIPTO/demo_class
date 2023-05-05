import 'package:demo_class_project/base_button.dart';
import 'package:flutter/material.dart';
import 'button_theme_helper.dart';

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
    bool? isDisabled,
    BoxDecoration? gradient,
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
          gradient: gradient,
          height: height,
          width: width,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: width,
        decoration: gradient,
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
}
