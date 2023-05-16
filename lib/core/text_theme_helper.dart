import 'package:demo_class_project/core/app_color_helper.dart';
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

  static get bodySmallWhite800 => theme.textTheme.bodySmall!.roboto
      .copyWith(fontWeight: FontWeight.w800, color: ColorConstant.white);

  static get displaySmallGreen600 => theme.textTheme.displaySmall!.manrope
      .copyWith(fontWeight: FontWeight.w800, color: ColorConstant.green);
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(fontFamily: "Roboto");
  }

  TextStyle get  manrope {
    return copyWith(fontFamily: "Manrope");
  }

  TextStyle get inter {
    return copyWith(fontFamily: 'Inter');
  }
}
