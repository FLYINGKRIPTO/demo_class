import 'package:demo_class_project/app_color_helper.dart';
import 'package:demo_class_project/border_decoration_helper.dart';
import 'package:demo_class_project/text_theme_helper.dart';
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
          style: TextThemeHelper.bodySmallWhite800,
          decoration: decoration,
        ),
      );

  get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: TextThemeHelper.displaySmallGreen600,
        border: BorderDecorationHelper.yellowCircularRadius12,
        enabledBorder: BorderDecorationHelper.greenCircularRadius24,
        focusedBorder: BorderDecorationHelper.greyCircularRadius12,
        disabledBorder: BorderDecorationHelper.blackCircularRadius18,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        suffixIcon: suffix,
        suffixIconConstraints: suffixConstraints,
        fillColor: ColorConstant.cosmicLatte,
        filled: filled,
        isDense: true,
        contentPadding: contentPadding,
      );
}
