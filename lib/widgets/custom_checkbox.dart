import 'package:demo_class_project/core/app_color_helper.dart';
import 'package:demo_class_project/core/text_theme_helper.dart';
import 'package:flutter/material.dart';

class CustomCheckbox extends StatelessWidget {
  CustomCheckbox({
    super.key,
    this.alignment,
    this.isRightCheck = false,
    this.iconSize,
    this.value = false,
    required this.onChange,
    this.text,
    this.width,
    this.margin,
    this.padding,
    this.textStyle,
    this.textAlignment,
    this.gradient,
  });

  final Alignment? alignment;

  final bool? isRightCheck;

  final double? iconSize;

  bool? value;

  final Function(bool) onChange;

  final String? text;

  final double? width;

  final EdgeInsetsGeometry? margin;

  final EdgeInsetsGeometry? padding;

  final TextStyle? textStyle;

  final TextAlign? textAlignment;

  final Gradient? gradient;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildCheckboxWidget,
          )
        : _buildCheckboxWidget;
  }

  Widget get _buildCheckboxWidget {
    return InkWell(
      onTap: () {
        value = !(value!);
        onChange(value!);
      },
      child: Container(
        width: width,
        margin: margin ?? EdgeInsets.zero,
        padding: padding,
        decoration: isGradient ? roundGreenGradient : null,
        child: isRightCheck! ? rightSideCheckbox : leftSideCheckbox,
      ),
    );
  }

  Widget get rightSideCheckbox => Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 8,
            ),
            child: textWidget,
          ),
          checkboxWidget,
        ],
      );

  Widget get leftSideCheckbox => Row(
        children: [
          checkboxWidget,
          Padding(
            padding: const EdgeInsets.only(
              left: 8,
            ),
            child: textWidget,
          ),
        ],
      );

  Widget get textWidget => Text(
        text ?? "",
        textAlign: textAlignment ?? TextAlign.center,
        style: textStyle ?? TextThemeHelper.bodySmallBlack400,
      );

  Widget get checkboxWidget => SizedBox(
        height: iconSize,
        width: iconSize,
        child: Checkbox(
          value: value ?? false,
          onChanged: (value) {
            onChange(value!);
          },
          checkColor: ColorConstant.blackOlive,
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
        ),
      );
}

extension ScreenStyleHelper on CustomCheckbox {
  BoxDecoration get roundGreenGradient => const BoxDecoration(
        color: ColorConstant.white,
        shape: BoxShape.rectangle,
        gradient: LinearGradient(
          colors: [
            ColorConstant.lightCyn,
            ColorConstant.darkCyn,
          ],
        ),
      );

  BoxDecoration get gradientDecoration => BoxDecoration(gradient: gradient);

  bool get isGradient => gradient != null;
}
