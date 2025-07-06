import 'package:flutter/material.dart';
import 'package:islami_app_c15_sun_7pm/core/constants/colors_pallete.dart';

abstract class ThemeManager {
  static ThemeData themeData = ThemeData(
    primaryColor: ColorsPallete.primaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(
        color: ColorsPallete.primaryColor
      ),
      titleTextStyle: TextStyle(
        fontFamily: "Janna",
        color: ColorsPallete.primaryColor,
        fontWeight: FontWeight.w700,
        fontSize: 20,
      ),
      backgroundColor: ColorsPallete.quranDetailsBackgroundColor,
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: ColorsPallete.primaryColor,
      showSelectedLabels: true,
      selectedItemColor: Colors.white,
      selectedLabelStyle: TextStyle(
        fontFamily: "Janna",
        color: Colors.white,
        fontWeight: FontWeight.w700,
        fontSize: 12,
      ),
      unselectedItemColor: Colors.black87,
      showUnselectedLabels: false,
    ),
    textTheme: TextTheme(
      headlineSmall: TextStyle(
        fontFamily: "Janna",
        fontSize: 24,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      titleLarge: TextStyle(
        fontFamily: "Janna",
        fontSize: 20,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      bodyLarge: TextStyle(
        fontFamily: "Janna",
        fontSize: 16,
        fontWeight: FontWeight.w700,
        color: Color(0xFFFEFFE8),
      ),
      bodyMedium: TextStyle(
        fontFamily: "Janna",
        fontSize: 14,
        fontWeight: FontWeight.w700,
        color: Color(0xFFFEFFE8),
      ),
      bodySmall: TextStyle(
        fontFamily: "Janna",
        fontSize: 12,
        fontWeight: FontWeight.w700,
        color: Color(0xFFFEFFE8),
      ),
    ),
  );
}
