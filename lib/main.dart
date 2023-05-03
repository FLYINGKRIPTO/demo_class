import 'package:demo_class_project/app_theme.dart';
import 'package:demo_class_project/custom_elevated_button.dart';
import 'package:demo_class_project/custom_text_button.dart';
import 'package:flutter/material.dart';

import 'button_theme_helper.dart';
import 'custom_outlined_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppThemes.getTheme(),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomTextButton(
              text: "Text Button 1",
              onTap: () {
                const snackBar = SnackBar(
                  content: Text('Tapped Text Button 1'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              buttonStyle: ButtonThemeHelper.textButtonBlack,
            ),
            CustomTextButton(
              text: "Text Button 2",
              onTap: () {
                const snackBar = SnackBar(
                  content: Text('Tapped Text Button 2'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              buttonStyle: ButtonThemeHelper.textButtonWhite,
            ),
            const SizedBox(
              height: 12,
            ),
            CustomOutlinedButton(
              text: "Outline Button",
              onTap: () {
                const snackBar = SnackBar(
                  content: Text('Tapped Outlined Button 1'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              buttonStyle: ButtonThemeHelper.outlineButtonBlack,
            ),
            const SizedBox(
              height: 12,
            ),
            CustomOutlinedButton(
              text: "Outline Button",
              onTap: () {
                const snackBar = SnackBar(
                  content: Text('Tapped Outlined Button 2'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              buttonStyle: ButtonThemeHelper.outlineButtonWhite,
            ),
            const SizedBox(
              height: 12,
            ),
            CustomElevatedButton(
              text: "Elevated Button",
              onTap: () {},
              buttonStyle: ButtonThemeHelper.elevatedButtonBlack,
            ),
            const SizedBox(
              height: 12,
            ),
            CustomElevatedButton(
              text: "Elevated Button",
              onTap: () {},
              buttonStyle: ButtonThemeHelper.elevatedButtonWhite,
            )
          ],
        ),
      ),
    );
  }
}
