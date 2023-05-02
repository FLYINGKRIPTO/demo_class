import 'package:flutter/material.dart';

import 'app_color_helper.dart';
import 'app_theme.dart';

class ButtonThemeHelper {
  static const String TAG = "ButtonThemeHelper";

  static ThemeData theme = AppThemes.getTheme();

  static ButtonStyle black_8_400 = theme.outlinedButtonTheme.style!.copyWith(
    backgroundColor: MaterialStateProperty.all<Color>(ColorConstant.black)
  );

}