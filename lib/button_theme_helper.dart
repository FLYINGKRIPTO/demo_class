import 'package:demo_class_project/core/text_theme_helper.dart';
import 'package:flutter/material.dart';

import 'core/app_color_helper.dart';
import 'core/app_theme.dart';

/// [ButtonThemeHelper] class contains static methods and properties that define the style of different types of buttons in the app.
/// Each property defines the style of the corresponding button type with different properties such as background color, text style, and padding.

class ButtonThemeHelper {
  static const String TAG = "ButtonThemeHelper";

  static ThemeData theme = AppThemes.getTheme();

  static get outlineButtonBlack => theme.outlinedButtonTheme.style!.copyWith(
      backgroundColor: MaterialStateProperty.all<Color>(ColorConstant.black),
      textStyle: MaterialStateProperty.all(TextThemeHelper.bodySmallWhite800));

  static get outlineButtonWhite => theme.outlinedButtonTheme.style!.copyWith(
        backgroundColor: MaterialStateProperty.all<Color>(ColorConstant.white),
      );

  static get elevatedButtonWhite => theme.elevatedButtonTheme.style!.copyWith(
      backgroundColor: MaterialStateProperty.all<Color>(
        ColorConstant.white,
      ),
      elevation: MaterialStateProperty.all(
        8.0,
      ),
      textStyle:
          MaterialStateProperty.all(TextThemeHelper.displaySmallGreen600));

  /// Optional way where the function can serve as common function to return expected style
  static elevatedButtonStyle(
      {Color? color,
      double? elevation,
      TextStyle? textStyle,
      Alignment? alignment}) {
    return theme.elevatedButtonTheme.style!.copyWith(
        backgroundColor:
            MaterialStateProperty.all<Color>(color ?? theme.primaryColor),
        elevation: MaterialStateProperty.all(
          elevation,
        ),
        textStyle: MaterialStateProperty.all(textStyle));
  }

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

  static get transparentButtonStyle => theme.textButtonTheme.style!.copyWith(
        backgroundColor: MaterialStateProperty.all(ColorConstant.transparent),
        shadowColor: MaterialStateProperty.all(ColorConstant.transparent),
      );
}
