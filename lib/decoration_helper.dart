import 'package:demo_class_project/core/app_color_helper.dart';
import 'package:flutter/material.dart';

class DecorationHelper {
  static BoxDecoration get circleOrange1_w3 => BoxDecoration(
    borderRadius: BorderRadius.circular(48),
    border: Border.all(
      width: 3,
      color: ColorConstant.chineseBlack,
      style: BorderStyle.solid,
    ),
  );

  static BoxDecoration get roundGreenGradient => const BoxDecoration(
    color: ColorConstant.white,
    shape: BoxShape.rectangle,
    gradient: LinearGradient(
      colors: [
        ColorConstant.lightCyn,
        ColorConstant.darkCyn,
      ],
    ),
  );
}

extension DecorationBorderRadiis on BoxDecoration {
  BoxDecoration get r8 => copyWith(
        borderRadius: BorderRadius.circular(8.0),
      );

  BoxDecoration get r12 => copyWith(
    borderRadius: BorderRadius.circular(12.0),
  );

  BoxDecoration get r16 => copyWith(
    borderRadius: BorderRadius.circular(16.0),
  );

  BoxDecoration custom({required BorderRadius borderRadius}) {
    return copyWith(borderRadius: borderRadius);
  }
}
