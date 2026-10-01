import 'package:flutter/material.dart';

class AppTheme {
  static const primaryColor = Color(0xff8B5CF6);
  static const secondaryColor = Color(0xff6366F1);
  static const accentColor = Color(0xFF9D06D4);
  static const surfaceColorLight = Color(0xFFFBF8FC);
  static const surfaceColorDark = Color(0xFF2E1E3B);
  static const backgroundColorLight = Color(0xfffffbff);
  static const backgroundColorDark = Color(0xFF1C0F2A);
  static const errorColor = Color(0xffef4444);
  static const successColor = Color(0xff10b981);
  static const warningColor = Color(0xfff59e0b);

  AppTheme._();

  static ThemeData get lightTheme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
        brightness: Brightness.light,
        primary: primaryColor,
        secondary: secondaryColor,
        tertiary: accentColor,
        surface: backgroundColorLight,
        error: errorColor,
      ),
      scaffoldBackgroundColor: backgroundColorLight,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          color: Color(0xff1E293B),
        ),
        headlineMedium: TextStyle(
          fontSize: 28,
          fontWeight: FontWeight.bold,
          color: Color(0xff1E293B),
        ),
        titleLarge: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: Color(0xff1E293B),
        ),
        titleMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
          color: Color(0xff1E293B),
        ),
        bodyLarge: TextStyle(
          fontSize: 16,
          color: Color(0xff475569),
        ),
        bodyMedium: TextStyle(
          fontSize: 14,
          color: Color(0xff64748B),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surfaceColorLight,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: primaryColor.withValues(alpha: 0.3)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: primaryColor.withValues(alpha: 0.3)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: primaryColor, width: 2),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide(color: errorColor, width: 2),
        ),
        labelStyle: TextStyle(color: primaryColor.withValues(alpha: 0.8)),
        hintStyle: TextStyle(color: Colors.grey.shade500),
        iconColor: primaryColor,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primaryColor,
          foregroundColor: Colors.white,
          elevation: 3,
          shadowColor: primaryColor.withValues(alpha: 0.3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(12),
          ),
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
          textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
        brightness: Brightness.dark,
        primary: primaryColor,
        secondary: secondaryColor,
        tertiary: accentColor,
        surface: surfaceColorDark,
        error: errorColor,
      ),
      scaffoldBackgroundColor: backgroundColorDark,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
    );
  }
}
