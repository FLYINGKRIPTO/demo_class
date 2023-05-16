import 'package:demo_class_project/core/text_theme_helper.dart';
import 'package:flutter/material.dart';

class CustomRadioButton extends StatelessWidget {
  CustomRadioButton(
      {super.key,
      this.alignment,
      this.onChange,
      this.isRightCheck = false,
      this.iconSize,
      this.value,
      this.groupValue,
      this.text,
      this.width,
      this.margin});

  final Alignment? alignment;

  final Function(String)? onChange;

  final bool? isRightCheck;

  final double? iconSize;

  String? value;

  final String? groupValue;

  final String? text;

  final double? width;

  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: radioButtonWidget,
          )
        : radioButtonWidget;
  }

  Widget get radioButtonWidget => InkWell(
        onTap: () {
          onChange!(value!);
        },
        child: Container(
          width: width,
          margin: margin ?? EdgeInsets.zero,
          child: isRightCheck! ? rightSideRadio : leftSideRadio,
        ),
      );

  Widget get rightSideRadio => Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              right: 8,
            ),
            child: textWidget,
          ),
          radioWidget,
        ],
      );

  Widget get leftSideRadio => Row(
        children: [
          radioWidget,
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
        textAlign: TextAlign.center,
        style: TextThemeHelper.displaySmallGreen600,
      );

  Widget get radioWidget {
    return SizedBox(
      height: iconSize,
      width: iconSize,
      child: Radio<String>(
        value: value ?? "",
        groupValue: groupValue,
        onChanged: (value) {
          onChange!(value!);
        },
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
    );
  }
}
