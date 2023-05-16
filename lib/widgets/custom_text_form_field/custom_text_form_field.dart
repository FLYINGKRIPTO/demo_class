import 'package:demo_class_project/core/app_color_helper.dart';
import 'package:demo_class_project/border_decoration_helper.dart';
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

  const CustomTextFormField(
      {Key? key,
      this.alignment,
      this.focusNode,
      this.isObscureText,
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
      this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.maxFinite,
      margin: margin,
      child: TextFormField(
        controller: controller,
        focusNode: focusNode,
        style: TextThemeHelper.displaySmallGreen600,
        obscureText: isObscureText!,
        textInputAction: textInputAction,
        keyboardType: textInputType,
        maxLines: maxLines ?? 1,
        decoration: decoration,
        validator: validator,
      ),
    );
  }

  InputDecoration get decoration => InputDecoration(
      hintText: hintText ?? "",
      hintStyle: TextThemeHelper.displaySmallGreen600,
      border: BorderDecorationHelper.greyCircularRadius12,
      enabledBorder: BorderDecorationHelper.blackCircularRadius18,
      focusedBorder: BorderDecorationHelper.greenCircularRadius24,
      disabledBorder: BorderDecorationHelper.yellowCircularRadius12,
      prefixIcon: prefix,
      prefixIconConstraints: prefixConstraints,
      suffixIcon: suffix,
      suffixIconConstraints: suffixConstraints,
      fillColor: ColorConstant.cosmicLatte,
      filled: true,
      isDense: true,
      contentPadding: contentPadding);
}
