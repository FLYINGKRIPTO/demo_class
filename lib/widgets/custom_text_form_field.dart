import 'package:demo_class_project/core/app_color_helper.dart';
import 'package:demo_class_project/core/text_theme_helper.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final Alignment? alignment;

  final double? width;

  final EdgeInsetsGeometry? margin;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final bool? isObscureText;

  final TextInputAction? textInputAction;

  final TextInputType? textInputType;

  final int? maxLines;

  final String? hintText;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final FormFieldValidator<String>? validator;

  final EdgeInsets? contentPadding;

  final bool? filled;

  final Color? fillColor;

  final TextStyle? hintTextStyle;

  final TextStyle? textStyle;

  final OutlineInputBorder? defaultBorderDecoration;

  final OutlineInputBorder? enabledBorderDecoration;

  final OutlineInputBorder? focusedBorderDecoration;

  final OutlineInputBorder? disabledBorderDecoration;

  final Gradient? textFieldBackgroundGradient;

  final BorderRadius? borderRadius;

  const CustomTextFormField({
    Key? key,
    this.alignment,
    this.focusNode,
    this.isObscureText = false,
    this.prefixConstraints,
    this.margin,
    this.controller,
    this.hintText,
    this.suffixConstraints,
    this.validator,
    this.maxLines,
    this.prefix,
    this.suffix,
    this.textInputAction = TextInputAction.next,
    this.textInputType = TextInputType.text,
    this.contentPadding,
    this.filled = false,
    this.fillColor = ColorConstant.cosmicLatte,
    this.hintTextStyle,
    this.textStyle,
    this.width,
    this.disabledBorderDecoration,
    this.enabledBorderDecoration,
    this.focusedBorderDecoration,
    this.defaultBorderDecoration,
    this.borderRadius,
    this.textFieldBackgroundGradient,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      decoration: isGradient ? roundGreenGradient: bgDecoration,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: textStyle ?? TextThemeHelper.displaySmallGreen600,
        obscureText: isObscureText ?? false,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: decoration,
        validator: validator,
      ),
    );
  }

  InputDecoration get decoration =>
      InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintTextStyle ?? TextThemeHelper.displaySmallGreen600,
        border: defaultBorderDecoration ?? greyCircularRadius12,
        enabledBorder: enabledBorderDecoration ?? blackCircularRadius18,
        focusedBorder: focusedBorderDecoration ?? greenCircularRadius24,
        disabledBorder: disabledBorderDecoration ?? yellowCircularRadius12,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        fillColor: fillColor,
        filled: filled,
        isDense: true,
        contentPadding: contentPadding,
      );
}

extension ScreenStyleHelper on CustomTextFormField {
  OutlineInputBorder get yellowCircularRadius12 =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: ColorConstant.yellow,
          width: 1,
        ),
      );

  OutlineInputBorder get greenCircularRadius24 =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(24),
        borderSide: const BorderSide(
          color: ColorConstant.green,
          width: 1,
        ),
      );

  OutlineInputBorder get greyCircularRadius12 =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: ColorConstant.greyNeutral3,
          width: 1,
        ),
      );

  OutlineInputBorder get blackCircularRadius18 =>
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(
          color: ColorConstant.black,
          width: 1,
        ),
      );

  BoxDecoration get roundGreenGradient =>
      BoxDecoration(
        color: ColorConstant.white,
        gradient: textFieldBackgroundGradient,
      );

  bool get isGradient => textFieldBackgroundGradient != null;

  BoxDecoration get bgDecoration =>
      BoxDecoration(
        color: fillColor ?? ColorConstant.greyNeutral3,
        borderRadius: borderRadius ??
            BorderRadius.circular(
              8,
            ),
      );
}