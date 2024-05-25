import 'package:flutter/material.dart';

class AppColors {
  static const int _primaryValue = 0xFF15053F;
  static const MaterialColor primary = MaterialColor(
    _primaryValue,
    <int, Color>{
      50: Color(_primaryValue),
      100: Color(_primaryValue),
      200: Color(_primaryValue),
      300: Color(_primaryValue),
      400: Color(_primaryValue),
      500: Color(_primaryValue),
      600: Color(_primaryValue),
      700: Color(_primaryValue),
      800: Color(_primaryValue),
      900: Color(_primaryValue),
    },
  );

  static const text = Color(0xFF161616);

  static const secondary = Color(0xFFB370FF);

  static const green = Color(0xFF2CD2A8);

  static const red = Color(0xFFEF766B);

  static const white = Color(0xFFFFFFFF);
}
