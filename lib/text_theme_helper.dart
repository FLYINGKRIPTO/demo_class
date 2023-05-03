import 'package:demo_class_project/app_color_helper.dart';
import 'package:flutter/material.dart';

import 'app_theme.dart';

/// Helper class, acts as dictionary for all text styles used in the app

class TextThemeHelper {
  static const String TAG = "TextThemeHelper";

  static ThemeData theme = AppThemes.getTheme();

  static get bodySmallBlack400 => theme.textTheme.bodySmall!.copyWith(
        fontWeight: FontWeight.w400,
        color: ColorConstant.black,
      );

  static get bodySmallWhite800 => theme.textTheme.bodySmall!
      .copyWith(fontWeight: FontWeight.w800, color: ColorConstant.white);
}
