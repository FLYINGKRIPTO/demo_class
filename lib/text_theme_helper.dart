import 'package:flutter/material.dart';

import 'app_theme.dart';
import 'color_constant.dart';

class TextThemeHelper {
  static const String TAG = "TextThemeHelper";

  static ThemeData theme = AppThemes.getTheme();

  static TextStyle black_8_400 = theme.textTheme.bodySmall!.copyWith(
    fontWeight: FontWeight.w400,
    fontFamily: "Inter",
  );

  static get manropeBold16White700 => theme.textTheme.titleMedium!.copyWith(
        color: ColorConstant.whiteA700,
      );
}
