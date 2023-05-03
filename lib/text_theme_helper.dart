import 'package:demo_class_project/app_color_helper.dart';
import 'package:flutter/material.dart';

import 'app_theme.dart';

class TextThemeHelper {
  static const String TAG = "TextThemeHelper";

  static ThemeData theme = AppThemes.getTheme();

  static get bodySmallBlack400 => theme.textTheme.bodySmall!.copyWith(
        fontWeight: FontWeight.w400,
        fontFamily: "Manrope",
        color: ColorConstant.lavender,
      );

  static get bodySmallWhite800 => theme.textTheme.bodySmall!
      .copyWith(fontWeight: FontWeight.w800, color: ColorConstant.white);
}
