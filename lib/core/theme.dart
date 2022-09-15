import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  //LIGHT THEME
  static Color lightPrimaryToneColor = Colors.blue.shade50;
  static Color lightPrimaryColor = Colors.blue.shade200;
  static Color lightPrimaryVariantColor = Colors.blue.shade700;
  static Color lightSecondaryToneColor = Colors.teal.shade50;
  static Color lightSecondaryColor = Colors.teal.shade200;
  static Color lightSecondaryVariantColor = Colors.teal.shade700;
  static Color lightErrorColor = Colors.red.shade700;
  static Color lightBackgroundColor = Color.fromARGB(255, 196, 22, 22);
  static Color lightSurfaceColor = Color.fromARGB(255, 224, 20, 20);

  static Color lightOnPrimaryToneColor = Colors.black;
  static Color lightOnPrimaryColor = Colors.black;
  static Color lightOnPrimaryVariantColor = Colors.black;
  static Color lightOnSecondaryToneColor = Colors.black;
  static Color lightOnSecondaryColor = Colors.black;
  static Color lightOnSecondaryVariantColor = Colors.black;
  static Color lightOnSurfaceColor = Colors.black;
  static Color lightOnBackgroundColor = Colors.black;
  static Color lightOnErrorColor = Colors.black;

  static ColorScheme appColorSchemeLight = ColorScheme(
    primary: lightPrimaryColor,
    secondary: lightSecondaryColor,
    surface: lightSurfaceColor,
    background: lightBackgroundColor,
    error: lightErrorColor,
    onPrimary: lightOnPrimaryColor,
    onSecondary: lightOnSecondaryColor,
    onSurface: lightOnSurfaceColor,
    onBackground: lightOnBackgroundColor,
    onError: lightOnErrorColor,
    brightness: Brightness.light,
  );

  static ThemeData lightTheme = ThemeData(
    primaryColor: lightPrimaryToneColor,
    colorScheme: appColorSchemeLight,
    iconTheme: const IconThemeData(color: Colors.white),
    scaffoldBackgroundColor: Color.fromARGB(255, 240, 236, 236),
  );

//DARK THEME
  static Color darkPrimaryToneColor = Colors.grey.shade50;
  static Color darkPrimaryColor = Colors.grey.shade200;
  static Color darkPrimaryVariantColor = Colors.grey.shade700;
  static Color darkSecondaryToneColor = Colors.teal.shade50;
  static Color darkSecondaryColor = Colors.teal.shade200;
  static Color darkSecondaryVariantColor = Colors.teal.shade700;
  static Color darkErrorColor = Colors.red.shade700;
  static Color darkBackgroundColor = Colors.white;
  static Color darkSurfaceColor = Colors.white;

  static Color darkOnPrimaryToneColor = Colors.white;
  static Color darkOnPrimaryColor = Colors.white;
  static Color darkOnPrimaryVariantColor = Colors.white;
  static Color darkOnSecondaryToneColor = Colors.white;
  static Color darkOnSecondaryColor = Colors.white;
  static Color darkOnSecondaryVariantColor = Colors.white;
  static Color darkOnSurfaceColor = Colors.white;
  static Color darkOnBackgroundColor = Colors.white;
  static Color darkOnErrorColor = Colors.white;

  static ColorScheme appColorSchemeDark = ColorScheme(
    primary: darkPrimaryColor,
    secondary: darkSecondaryColor,
    surface: darkSurfaceColor,
    background: darkBackgroundColor,
    error: darkErrorColor,
    onPrimary: darkOnPrimaryColor,
    onSecondary: darkOnSecondaryColor,
    onSurface: darkOnSurfaceColor,
    onBackground: darkOnBackgroundColor,
    onError: darkOnErrorColor,
    brightness: Brightness.dark,
  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: darkPrimaryToneColor,
    colorScheme: appColorSchemeLight,
    scaffoldBackgroundColor: Color.fromARGB(255, 48, 58, 65),
  );
}
