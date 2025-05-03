import 'package:flutter/material.dart';

class MazayaCheckBoxTheme {
  MazayaCheckBoxTheme._();

  static CheckboxThemeData lightCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
      return states.contains(WidgetState.selected) ? Colors.white : Colors.black;
    }),
    fillColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
      return states.contains(WidgetState.selected) ? Colors.blue : Colors.transparent;
    }),
  );

  static CheckboxThemeData darkCheckboxTheme = CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
      return states.contains(WidgetState.selected) ? Colors.white : Colors.black;
    }),
    fillColor: WidgetStateProperty.resolveWith<Color>((Set<WidgetState> states) {
      return states.contains(WidgetState.selected) ? Colors.blue : Colors.transparent;
    }),
  );
}