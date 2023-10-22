import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum AppTheme {
  lightTheme,
  darkTheme,
}

class AppThemes {
  static ThemeData light() {
    return ThemeData(
      primarySwatch: Colors.pink,
      primaryColor: Colors.white,
      brightness: Brightness.light,
      dividerColor: const Color(0xff757575),
      colorScheme: const ColorScheme(
        primary: Colors.white,
        secondary: Colors.white,
        surface: Colors.white,
        background: Color(0xFFE5E5E5),
        error: Colors.white,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        onSurface: Colors.white,
        onBackground: Colors.white,
        onError: Colors.white,
        brightness: Brightness.light,
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
        iconSize: 60,
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.black),
        ),
      ),
      textTheme: TextTheme(
        titleMedium: TextStyle(color: Colors.black),
        displayMedium: GoogleFonts.oswald(
          fontSize: 40,
          fontWeight: FontWeight.w500,
          color: Colors.black,
          backgroundColor: Colors.transparent,
        ),
        displaySmall: TextStyle(
          color: Colors.black,
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.grey,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white),
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
        titleTextStyle: TextStyle(
          color: Colors.grey.shade700,
          fontWeight: FontWeight.normal,
          fontSize: 20,
        ),
      ),
      snackBarTheme: SnackBarThemeData(
        contentTextStyle: TextStyle(color: Colors.black),
      ),
    );
  }
}
