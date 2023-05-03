import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  final String text;
  final VoidCallback? onTap;
  final ButtonStyle? buttonStyle;

  const BaseButton(
      {Key? key,
      required this.text,
      this.onTap,
      this.buttonStyle,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
