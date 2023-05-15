import 'package:demo_class_project/app_color_helper.dart';
import 'package:demo_class_project/border_decoration_helper.dart';
import 'package:demo_class_project/text_theme_helper.dart';
import 'package:flutter/material.dart';

class CustomDropDown extends StatelessWidget {
  const CustomDropDown({
    super.key,
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
  });

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
        border: BorderDecorationHelper.blackCircularRadius18,
        enabledBorder: BorderDecorationHelper.blackCircularRadius18,
        focusedBorder: BorderDecorationHelper.greenCircularRadius24,
        prefixIcon: prefix,
        prefixIconConstraints: prefixConstraints,
        fillColor: ColorConstant.cosmicLatte,
        filled: filled,
        isDense: true,
        contentPadding: contentPadding,
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