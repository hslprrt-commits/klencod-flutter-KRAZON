
import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const Color background = Color(0xFF0B0E13);
  static const Color surface = Color(0xFF151A23);
  static const Color primary = Color(0xFF39D353);
  static const Color secondary = Color(0xFF8B9BB4);

  static ThemeData get darkTheme {
    final colorScheme = ColorScheme.fromSeed(
      seedColor: primary,
      brightness: Brightness.dark,
      surface: surface,
    );

    return ThemeData(
      useMaterial3: true,

      brightness: Brightness.dark,

      colorScheme: colorScheme,

      scaffoldBackgroundColor: background,

      fontFamily: null,

      appBarTheme: const AppBarTheme(
        backgroundColor: background,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
      ),

      cardTheme: CardThemeData(
        color: surface,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surface,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide.none,
        ),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: Colors.black,
          minimumSize: const Size(double.infinity, 50),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
      ),

      dividerColor: Colors.white12,
    );
  }
}
