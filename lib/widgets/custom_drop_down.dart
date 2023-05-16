import 'package:demo_class_project/core/app_color_helper.dart';
import 'package:demo_class_project/core/text_theme_helper.dart';
import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown(
      {super.key,
      this.alignment,
      this.width,
      this.margin,
      this.focusNode,
      this.icon,
      this.hintText,
      this.prefix,
      this.prefixConstraints,
      this.items,
      this.onChanged,
      this.validator,
      this.filled = false,
      this.contentPadding,
      this.fillColor,
      this.focusColor,
      this.prefixIconColor,
      this.suffixIconColor,
      this.hoverColor,
      this.labelText});

  final Alignment? alignment;

  final double? width;

  final EdgeInsetsGeometry? margin;

  final FocusNode? focusNode;

  final Widget? icon;

  final String? hintText;

  final Widget? prefix;

  final BoxConstraints? prefixConstraints;

  final List<SelectionPopupModel>? items;

  final Function(SelectionPopupModel)? onChanged;

  final FormFieldValidator<SelectionPopupModel>? validator;

  final EdgeInsetsGeometry? contentPadding;

  final bool? filled;

  final String? labelText;

  final Color? fillColor;

  final Color? focusColor;

  final Color? prefixIconColor;

  final Color? suffixIconColor;

  final Color? hoverColor;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: dropDownWidget,
          )
        : dropDownWidget;
  }

  Widget get dropDownWidget => Container(
        width: width ?? double.maxFinite,
        margin: margin,
        child: DropdownButtonFormField<SelectionPopupModel>(
          focusNode: focusNode,
          icon: icon,
          style: TextThemeHelper.bodySmallWhite800,
          decoration: decoration,
          items: items?.map((SelectionPopupModel item) {
            return DropdownMenuItem<SelectionPopupModel>(
              value: item,
              child: Text(
                item.title,
                overflow: TextOverflow.ellipsis,
              ),
            );
          }).toList(),
          onChanged: (value) {
            onChanged!(value!);
          },
          validator: validator,
        ),
      );

  InputDecoration get decoration => InputDecoration(
        hintText: hintText ?? "",
        hintStyle: TextThemeHelper.bodySmallBlack400,
        border: blackCircularRadius18,
        enabledBorder: yellowCircularRadius12,
        focusedBorder: greenCircularRadius24,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        fillColor: fillColor,
        filled: filled,
        isDense: true,
        contentPadding: contentPadding,
        labelText: labelText,
        labelStyle: TextThemeHelper.displaySmallGreen600,
      );
}

///SelectionPopupModel is common model
///used for setting data into dropdowns
class SelectionPopupModel {
  int? id;
  String title;
  dynamic value;
  bool isSelected;

  SelectionPopupModel({
    this.id,
    required this.title,
    this.value,
    this.isSelected = false,
  });
}

extension ScreenStyleHelper on CustomDropDown {
  static OutlineInputBorder get greyCircularRadius12 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: ColorConstant.greyNeutral3,
          width: 1,
        ),
      );

  static OutlineInputBorder get greenCircularRadius24 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(24),
        borderSide: const BorderSide(
          color: ColorConstant.green,
          width: 1,
        ),
      );

  static OutlineInputBorder get blackCircularRadius18 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(
          color: ColorConstant.black,
          width: 1,
        ),
      );

  static OutlineInputBorder get yellowCircularRadius12 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: ColorConstant.yellow,
          width: 1,
        ),
      );
}
