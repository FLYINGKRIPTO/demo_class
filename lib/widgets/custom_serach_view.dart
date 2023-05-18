import 'package:demo_class_project/core/app_color_helper.dart';
import 'package:demo_class_project/core/text_theme_helper.dart';
import 'package:flutter/material.dart';

class CustomSearchView extends StatelessWidget {
  const CustomSearchView({
    super.key,
    this.alignment,
    this.width,
    this.margin,
    this.controller,
    this.focusNode,
    this.hintText,
    this.prefix,
    this.prefixConstraints,
    this.suffix,
    this.suffixConstraints,
    this.filled = false,
    this.contentPadding,
    this.textStyle,
    this.hintTextStyle,
    this.fillColor,
    this.defaultBorderDecoration,
    this.enabledBorderDecoration,
    this.disabledBorderDecoration,
    this.focusedBorderDecoration,
  });

  final Alignment? alignment;

  final double? width;

  final EdgeInsetsGeometry? margin;

  final TextEditingController? controller;

  final FocusNode? focusNode;

  final String? hintText;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final Widget? suffix;

  final BoxConstraints? suffixConstraints;

  final bool filled;

  final EdgeInsetsGeometry? contentPadding;

  final TextStyle? textStyle;

  final TextStyle? hintTextStyle;

  final Color? fillColor;

  final OutlineInputBorder? defaultBorderDecoration;

  final OutlineInputBorder? enabledBorderDecoration;

  final OutlineInputBorder? focusedBorderDecoration;

  final OutlineInputBorder? disabledBorderDecoration;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: searchViewWidget,
          )
        : searchViewWidget;
  }

  Widget get searchViewWidget => Container(
        width: width ?? double.maxFinite,
        margin: margin,
        child: TextFormField(
          controller: controller,
          focusNode: focusNode,
          style: textStyle ?? TextThemeHelper.bodySmallWhite800,
          decoration: decoration,
        ),
      );

  get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: hintTextStyle ??  TextThemeHelper.displaySmallGreen600,
        border: defaultBorderDecoration ?? yellowCircularRadius12,
        enabledBorder: enabledBorderDecoration ?? greenCircularRadius24,
        focusedBorder: focusedBorderDecoration ?? greyCircularRadius12,
        disabledBorder: disabledBorderDecoration ?? blackCircularRadius18,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        fillColor: fillColor ?? ColorConstant.cosmicLatte,
        filled: filled,
        isDense: true,
        contentPadding: contentPadding,
      );
}

/// Extension on [CustomSearchView] to facilitate inclusion of all types of decorations etc
extension ScreenStyleHelper on CustomSearchView {
   OutlineInputBorder get yellowCircularRadius12 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: ColorConstant.yellow,
          width: 1,
        ),
      );

   OutlineInputBorder get greenCircularRadius24 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(24),
        borderSide: const BorderSide(
          color: ColorConstant.green,
          width: 1,
        ),
      );

   OutlineInputBorder get greyCircularRadius12 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: ColorConstant.greyNeutral3,
          width: 1,
        ),
      );

   OutlineInputBorder get blackCircularRadius18 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(
          color: ColorConstant.black,
          width: 1,
        ),
      );
}
