import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: Colors.grey.shade200,
    secondary: Colors.grey.shade100,
    inversePrimary: Colors.grey.shade700,
    surface: Colors.grey.shade300,
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    primary: Colors.grey.shade700,
    secondary: Colors.grey.shade800,
    inversePrimary: Colors.grey.shade200,
    surface: Colors.grey.shade900,
  ),
);
