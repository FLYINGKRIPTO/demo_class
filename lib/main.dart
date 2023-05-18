import 'package:demo_class_project/core/app_color_helper.dart';
import 'package:demo_class_project/core/app_theme.dart';
import 'package:demo_class_project/widgets/custom_checkbox.dart';
import 'package:demo_class_project/widgets/custom_elevated_button.dart';
import 'package:demo_class_project/widgets/custom_floating_button.dart';
import 'package:demo_class_project/widgets/custom_radio_button.dart';
import 'package:demo_class_project/widgets/custom_serach_view.dart';
import 'package:demo_class_project/widgets/custom_switch.dart';
import 'package:demo_class_project/widgets/custom_text_button.dart';
import 'package:demo_class_project/core/text_theme_helper.dart';
import 'package:demo_class_project/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

import 'core/button_theme_helper.dart';
import 'widgets/custom_outlined_button.dart';

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
      theme: AppThemes.appLightTheme,
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
  bool currentCheckBoxState = false;
  bool currentSwitchState = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomSearchView(
              fillColor: ColorConstant.blackOlive,
            ),
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
              text: "Outline Gradient Button",
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
              text: " Elevated Button",
              onTap: () {},
              buttonStyle: ButtonThemeHelper.elevatedButtonWhite,
              icon: const Icon(Icons.access_alarm_outlined),
              label: const Text("Elevated Button Icon"),
            ),
            const SizedBox(
              height: 12,
            ),
            CustomElevatedButton(
              text: " Elevated Button",
              onTap: () {},
              buttonStyle: ButtonThemeHelper.elevatedButtonWhite,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.access_alarm_outlined),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Elevated Button",
                    style: TextThemeHelper.displaySmallGreen600,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            CustomElevatedButton(
              text: "Gradient Elevated Button",
              onTap: () {},
              buttonStyle: ButtonThemeHelper.elevatedButtonWhite,
              gradient: const LinearGradient(colors: [
                ColorConstant.cosmicLatte,
                ColorConstant.yellow,
              ]),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(Icons.access_alarm_outlined),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Gradient Elevated Button",
                    style: TextThemeHelper.displaySmallGreen600,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            CustomTextFormField(
              textStyle: TextThemeHelper.displaySmallGreen600,
              fillColor: ColorConstant.aeroBlue,
              // textFieldBackgroundGradient: const LinearGradient(
              //   colors: [
              //     ColorConstant.lightCyn,
              //     ColorConstant.blanchedAlmond,
              //   ],
              // ),
            ),
            CustomTextButton(
              text: "What",
              buttonStyle: ButtonThemeHelper.textButtonBlack,
            ),
            const SizedBox(
              height: 12,
            ),
            CustomSwitch(
              activeColor: ColorConstant.green5,
              value: currentSwitchState,
              activeText: "COOL BOSS",
              onChanged: (f) {
                setState(() {
                  currentSwitchState = f;
                });
              },
              inactiveText: "BOSSSS",
            ),
            CustomCheckbox(
              value: currentCheckBoxState,
              textStyle: TextThemeHelper.displaySmallGreen600,
              isRightCheck: true,
              onChange: (t) {
                setState(() {
                  currentCheckBoxState = t;
                });
              },
              alignment: Alignment.bottomRight,
              text: "Data",
            ),
            CustomRadioButton(
              onChange: (t) {},
              text: "Lock it",
            ),
            CustomFloatingButton(
              alignment: Alignment.bottomRight,
              backgroundColor: ColorConstant.blanchedAlmond,
              width: 100,
              child: Row(
                children: const [
                  Icon(Icons.access_alarm_outlined),
                  Text("T")
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
