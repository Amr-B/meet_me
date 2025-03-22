import 'package:flutter/material.dart';
import 'package:online_meeting/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:online_meeting/utils/theme/custom_themes/chip_theme.dart';
import 'package:online_meeting/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:online_meeting/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:online_meeting/utils/theme/custom_themes/text_field_theme.dart';
import 'package:online_meeting/utils/theme/custom_themes/text_theme.dart';
import '../constants/colors.dart';
import 'custom_themes/appbar_theme.dart';

class KAppTheme {
  KAppTheme._();

  // light mode
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: KTextTheme.lightTextTheme,
    scaffoldBackgroundColor: KColors.light,
    // appbar theme
    appBarTheme: KAppBarTheme.lightAppBarTheme,
    // elevated button theme
    elevatedButtonTheme: KElevatedButtonTheme.darkElevatedButtonTheme,
    // outlined button theme
    outlinedButtonTheme: KOutlinedButtonTheme.lightOutlinedButtonTheme,
    // checkbox theme
    checkboxTheme: KCheckBoxTheme.lightCheckboxTheme,
    // chip theme
    chipTheme: KChipTheme.lightChipTheme,
    //input decoration theme (text field)
    inputDecorationTheme: KTextFormFieldTheme.lightInputDecorationTheme,
  );

  // dark theme

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: KTextTheme.darkTextTheme,
    scaffoldBackgroundColor: KColors.dark,
    // appbar theme
    appBarTheme: KAppBarTheme.darkAppBarTheme,
    // elevated button theme
    elevatedButtonTheme: KElevatedButtonTheme.darkElevatedButtonTheme,
    // outlined button theme
    outlinedButtonTheme: KOutlinedButtonTheme.darkOutlinedButtonTheme,
    // checkbox theme
    checkboxTheme: KCheckBoxTheme.darkCheckboxTheme,
    // chip theme
    chipTheme: KChipTheme.darkChipTheme,
    //input decoration theme (text field)
    inputDecorationTheme: KTextFormFieldTheme.darkInputDecorationTheme,
  );
}
