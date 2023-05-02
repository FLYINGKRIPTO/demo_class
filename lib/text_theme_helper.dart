import 'package:demo_class_project/app_color_helper.dart';
import 'package:flutter/material.dart';

import 'app_theme.dart';

class TextThemeHelper {
  static const String TAG = "TextThemeHelper";

  static ThemeData theme = AppThemes.getTheme();

  static TextStyle bodySmallBlack400Inter8 = theme.textTheme.bodySmall!.copyWith(
    fontWeight: FontWeight.w400,
    fontFamily: "Inter",
    color: ColorConstant.black,
    fontSize: 8
  );

  static TextStyle bodySmallWhite400Inter8 = theme.textTheme.bodySmall!.copyWith(
    fontWeight: FontWeight.w400,
    fontFamily: "Inter",
    color: ColorConstant.white
  );

}
