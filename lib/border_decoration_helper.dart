import 'package:demo_class_project/core/app_color_helper.dart';
import 'package:flutter/material.dart';

class BorderDecorationHelper {
  static OutlineInputBorder get greyCircularRadius12 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: ColorConstant.greyNeutral3,
          width: 1,
        ),
      );

  static OutlineInputBorder get greenCircularRadius24 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(24),
        borderSide: const BorderSide(
          color: ColorConstant.green,
          width: 1,
        ),
      );

  static OutlineInputBorder get blackCircularRadius18 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(
          color: ColorConstant.black,
          width: 1,
        ),
      );

  static OutlineInputBorder get yellowCircularRadius12 => OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(
          color: ColorConstant.yellow,
          width: 1,
        ),
      );
}
