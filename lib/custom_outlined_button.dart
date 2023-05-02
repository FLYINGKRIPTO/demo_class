import 'package:demo_class_project/base_button.dart';
import 'package:flutter/material.dart';

class CustomOutlinedButton extends BaseButton {

  const CustomOutlinedButton({
    Key? key,
    required VoidCallback onTap,
    required String text,
  }) : super(
          key: key,
          text: text,
          onTap: onTap,
        );

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: super.onTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            text,
          ),
        ],
      ),
    );
  }
}
