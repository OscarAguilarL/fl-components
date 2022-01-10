import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    // Color primario
    primaryColor: Colors.indigo,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),

    // TextButtonTheme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: primary),
    ),

    // Floating Action Buttons
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5,
    ),

    // elevatedButtonTheme
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: primary,
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    // Color primario
    primaryColor: Colors.indigo,
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
  );
}
