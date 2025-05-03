import 'package:flutter/material.dart';

import 'custom_themes/appbar_theme.dart';
import 'custom_themes/botton_sheet_theme.dart';
import 'custom_themes/checkbox_theme.dart';
import 'custom_themes/chip_theme.dart';
import 'custom_themes/elevated_button_theme.dart';
import 'custom_themes/outline_button_theme.dart';
import 'custom_themes/text_field_theme.dart';
import 'custom_themes/text_theme.dart';


class MazayaAppTheme {
  MazayaAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Arial",
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: MazayaTextTheme.lightTextTheme,
    chipTheme: MazayaChipTheme.lightChipTheme,
    appBarTheme: MazayaAppBarTheme.lightAppbarTheme,
    checkboxTheme: MazayaCheckBoxTheme.lightCheckboxTheme,
    bottomSheetTheme: MazayaBottonSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: MazayaElevetedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: MazayaOutlineButtonTheme.lightOutlineButtonTheme,
    inputDecorationTheme: MazayaTextFormFieldTheme.lightInputDecorationTheme
  );
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      fontFamily: "Arial",
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: MazayaTextTheme.darkTextTheme,
      chipTheme: MazayaChipTheme.darkChipTheme,
      appBarTheme: MazayaAppBarTheme.darkAppbarTheme,
      checkboxTheme: MazayaCheckBoxTheme.darkCheckboxTheme,
      bottomSheetTheme: MazayaBottonSheetTheme.darkBottomSheetTheme,
      elevatedButtonTheme: MazayaElevetedButtonTheme.darkElevatedButtonTheme,
      outlinedButtonTheme: MazayaOutlineButtonTheme.darkOutlineButtonTheme,
      inputDecorationTheme: MazayaTextFormFieldTheme.darkInputDecorationTheme
  );
}