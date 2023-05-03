import 'dart:io';

import 'package:flutter/material.dart';

import 'app_color_helper.dart';

///This code file contains the AppThemes class which provides the default light theme
///for the app using ThemeData.
///It also defines a ColorScheme for both the light and dark themes used in the app.
///The lightColorScheme and darkColorScheme provide a set of predefined colors for various components in the app.
///The getTheme() method returns the default light theme.


class AppThemes {
  static var isDarkTheme = false;
  static const _lightFillColor = Colors.black;
  static const _darkFillColor = Colors.white;
  static const int _primaryColor = 0xFFFF6300;
  static const int textFieldColor = 0xFFF4F4F4;

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
    visualDensity: VisualDensity.adaptivePlatformDensity,
    dividerTheme: const DividerThemeData(color: ColorConstant.gray, thickness: 1),
    // Define the default TextTheme. Use this to specify the default
    // text styling for headlines, titles, bodies of text, and more.
    outlinedButtonTheme: OutlinedButtonThemeData(
        style: ButtonStyle(
            textStyle: MaterialStateProperty.all<TextStyle>(
                const TextStyle(color: ColorConstant.blackOlive)),
            padding: MaterialStateProperty.all<EdgeInsets>(
                const EdgeInsets.all(4.0)))),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        textStyle: MaterialStateProperty.all<TextStyle>(
            const TextStyle(color: ColorConstant.strongYellow)),
      )
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(ColorConstant.lavender),
      )
    ),
    textTheme:  const TextTheme(
      displayLarge:
          TextStyle(fontSize: 72.0, fontWeight: FontWeight.w500),
      headlineMedium: TextStyle(
          fontSize: 24,
          color: ColorConstant.blanchedAlmond,
          fontWeight: FontWeight.w500,
          fontFamily: 'Manrope'),
      titleLarge:
          TextStyle(fontSize: 36.0, fontWeight: FontWeight.normal),
      titleSmall: TextStyle(
          fontSize: 18.0,
          color: ColorConstant.black,
          fontWeight: FontWeight.normal,
          fontFamily: 'Manrope'),
      titleMedium: TextStyle(
          fontSize: 16.0,
          color: ColorConstant.blackNeutral2,
          fontWeight: FontWeight.normal,
          fontFamily: 'Manrope'),
      bodyLarge: TextStyle(
          fontSize: 14.0,
          color: ColorConstant.blackNeutral3,
          fontWeight: FontWeight.normal,
          fontFamily: 'Manrope'),
      bodyMedium: TextStyle(
          fontSize: 12.0,
          color: ColorConstant.blackOlive,
          fontWeight: FontWeight.normal,
          fontFamily: 'Manrope'),
      bodySmall: TextStyle(
          fontSize: 8.0,
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
