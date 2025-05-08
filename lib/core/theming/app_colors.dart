import 'package:flutter/material.dart';

class AppColors {
  static const Color white = Color(0XFFFFFFFF);
  static const Color deepTeal = Color(0XFF375885);
  static const Color skyBlue = Color(0XFF59A3D4);
  static const Color paleSkyBlue = Color(0XFFB8D8ED);
  static const Color tealGreen = Color(0XFF129A7F);
  static const Color eerieBlack = Color(0XFF101720);
  static const Color lightGray = Color(0XFFB3B3B3);
  static const Color gray = Color(0XFFB6B6B6);
  static const Color softGray = Color(0XFFF0F0F0);
  static const Color mediumGray = Color(0XFF777777);
  static const Color brightTeal = Color(0XFF17C09F);
  static const Color star = Color(0XFF51819E);
  static const Color iceBlue = Color(0XFF74B9E2);
  static const Color ice = Color(0XFFE7EAEF);
  static const Color deepRed = Color(0XFF9A263B);
  static const Color transparent = Colors.transparent;

  // Optional: Add a method to create a MaterialColor from a single Color
  static MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    final swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }

    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }

    return MaterialColor(color.value, swatch);
  }
}
