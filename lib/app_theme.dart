import 'dart:io';

import 'package:flutter/material.dart';

import 'color_constant.dart';

class AppThemes {
  static var isDarkTheme = false;
  static const _lightFillColor = Colors.black;
  static const _darkFillColor = Colors.white;

  static var appLightTheme = ThemeData(
    colorScheme: isDarkTheme ? darkColorScheme : lightColorScheme,
    fontFamily: "Manrope",
    // Define the default brightness and colors.
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
    brightness: Brightness.light,
    platform: Platform.isAndroid ? TargetPlatform.android : TargetPlatform.iOS,
    primaryColor: ColorConstant.whiteA700,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    dividerTheme: DividerThemeData(color: ColorConstant.gray50, thickness: 1),
    // Define the default TextTheme. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
            textStyle: MaterialStateProperty.all<TextStyle>(
                TextStyle(color: ColorConstant.black900)),
            padding: MaterialStateProperty.all<EdgeInsets>(
                const EdgeInsets.all(4.0)))),
    textTheme: TextTheme(
      displayLarge:
          const TextStyle(fontSize: 72.0, fontWeight: FontWeight.w500),
      headlineMedium: TextStyle(
          fontSize: 24,
          color: ColorConstant.black900,
          fontWeight: FontWeight.w500,
          fontFamily: 'Manrope'),
      titleLarge:
          const TextStyle(fontSize: 36.0, fontWeight: FontWeight.normal),
      titleSmall: TextStyle(
          fontSize: 18.0,
          color: ColorConstant.black900,
          fontWeight: FontWeight.normal,
          fontFamily: 'Manrope'),
      titleMedium: TextStyle(
          fontSize: 16.0,
          color: ColorConstant.black900,
          fontWeight: FontWeight.normal,
          fontFamily: 'Manrope'),
      bodyLarge: TextStyle(
          fontSize: 14.0,
          color: ColorConstant.black900,
          fontWeight: FontWeight.normal,
          fontFamily: 'Manrope'),
      bodyMedium: TextStyle(
          fontSize: 12.0,
          color: ColorConstant.black900,
          fontWeight: FontWeight.normal,
          fontFamily: 'Manrope'),
      bodySmall: TextStyle(
          fontSize: 8.0,
          color: ColorConstant.black900,
          fontWeight: FontWeight.normal,
          fontFamily: 'Manrope'),
    ),
  );
  static const ColorScheme lightColorScheme = ColorScheme(
    primary: Color(0xFFB93C5D),
    primaryContainer: Color(0xFF117378),
    secondary: Color(0xFFEFF3F3),
    secondaryContainer: Color(0xFFFAFBFB),
    background: Color(0xFFE6EBEB),
    surface: Color(0xFFFAFBFB),
    onBackground: Colors.white,
    error: _lightFillColor,
    onError: _lightFillColor,
    onPrimary: _lightFillColor,
    onSecondary: Color(0xFF322942),
    onSurface: Color(0xFF241E30),
    brightness: Brightness.light,
  );

  static const ColorScheme darkColorScheme = ColorScheme(
    primary: Color(0xFFFF8383),
    primaryContainer: Color(0xFF1CDEC9),
    secondary: Color(0xFF4D1F7C),
    secondaryContainer: Color(0xFF451B6F),
    background: Color(0xFF241E30),
    surface: Color(0xFF1F1929),
    onBackground: Color(0x0DFFFFFF),
    // White with 0.05 opacity
    error: _darkFillColor,
    onError: _darkFillColor,
    onPrimary: _darkFillColor,
    onSecondary: _darkFillColor,
    onSurface: _darkFillColor,
    brightness: Brightness.dark,
  );

  static ThemeData getTheme() => appLightTheme;
}
