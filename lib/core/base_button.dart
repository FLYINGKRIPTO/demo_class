import 'package:flutter/material.dart';

///BaseButton widget which will be parent to all kinds of button widgets
/// that can be used to display a button with custom text and styling.
/// The [text] parameter is required and specifies the text to display on the button.
/// The [onTap] parameter is optional and specifies a function to be called when the button is tapped.
/// The [buttonStyle] parameter is also optional and can be used to customize the button's appearance
/// The [buttonTextStyle] parameter is also optional and can be used to set text style additionally
/// The [isDisabled] property to be used when button needs to be in disabled state, inheriting button can perform required action

class BaseButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  final ButtonStyle? buttonStyle;
  final ButtonStyle? disabledButtonStyle;
  final TextStyle? buttonTextStyle;
  final bool? isDisabled;
  final BoxDecoration? gradient;
  final BorderRadius? borderRadius;
  final double? height;
  final double? width;

  const BaseButton({
    Key? key,
    required this.text,
    this.onTap,
    this.buttonStyle,
    this.buttonTextStyle,
    this.isDisabled = false,
    this.disabledButtonStyle,
    this.gradient,
    this.borderRadius,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox.shrink();
  }
}
