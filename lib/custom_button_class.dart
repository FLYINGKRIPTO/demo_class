import 'package:demo_class_project/text_theme_helper.dart';
import 'package:flutter/material.dart';

import 'button_theme_helper.dart';

class NewCustomButton extends StatelessWidget {
  final Alignment? alignment;

  final VoidCallback? onTap;

  final String text;

  final Widget? prefixWidget;

  final Widget? suffixWidget;

  const NewCustomButton(
      {Key? key,
      this.alignment,
      this.onTap,
      required this.text,
      this.prefixWidget,
      this.suffixWidget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onTap,
        style: ButtonThemeHelper.black_8_400,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (prefixWidget != null) prefixWidget!,
            Text(
              text,
              style: TextThemeHelper.black_8_400,
            ),
            if (suffixWidget != null) suffixWidget!,
          ],
        ),
      );
  }
}
