import 'package:demo_class_project/text_theme_helper.dart';
import 'package:flutter/material.dart';

import 'app_color_helper.dart';
import 'app_theme.dart';

class ButtonThemeHelper {
  static const String TAG = "ButtonThemeHelper";

  static ThemeData theme = AppThemes.getTheme();

  static get outlineButtonBlack => theme.outlinedButtonTheme.style!.copyWith(
      backgroundColor: MaterialStateProperty.all<Color>(ColorConstant.black),
      textStyle: MaterialStateProperty.all<TextStyle>(
          TextThemeHelper.bodySmallWhite800));

  static get outlineButtonWhite => theme.outlinedButtonTheme.style!.copyWith(
      backgroundColor: MaterialStateProperty.all<Color>(ColorConstant.white));

  static get elevatedButtonWhite => theme.elevatedButtonTheme.style!.copyWith(
      backgroundColor: MaterialStateProperty.all<Color>(ColorConstant.white));

  static get elevatedButtonBlack => theme.elevatedButtonTheme.style!.copyWith(
      backgroundColor:
          MaterialStateProperty.all<Color>(ColorConstant.blanchedAlmond));

  static get textButtonBlack => theme.textButtonTheme.style!.copyWith(
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.all(2.0),
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextThemeHelper.bodySmallBlack400,
        ),
      );

  static get textButtonWhite => theme.textButtonTheme.style!.copyWith(
        padding: MaterialStateProperty.all<EdgeInsets>(
          const EdgeInsets.all(4.0),
        ),
        textStyle: MaterialStateProperty.all<TextStyle>(
          TextThemeHelper.bodySmallWhite800,
        ),
      );
}
