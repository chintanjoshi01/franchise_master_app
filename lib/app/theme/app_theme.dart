// lib/app/theme/app_theme.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

// A central place for your app's colors
class AppColors {
  static const Color primaryRed = Color(0xFFB9262C);
  static const Color darkText = Color(0xFF333333);
  static const Color lightGrey = Color(0xFFF5F5F5);
}

ThemeData createTheme() {
  final baseTheme = ThemeData(
    useMaterial3: true,
    // Use fromSeed to generate a harmonious color palette
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryRed,
      primary: AppColors.primaryRed,
      brightness: Brightness.light,
    ),
    scaffoldBackgroundColor: Colors.white,
  );

  return baseTheme.copyWith(
    // Apply the Nunito font to the entire app's text theme
    textTheme: GoogleFonts.nunitoTextTheme(baseTheme.textTheme).apply(
      bodyColor: AppColors.darkText,
      displayColor: AppColors.darkText,
    ),

    // Define a consistent style for all text input fields
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.lightGrey,
      contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none, // No border by default
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: AppColors.primaryRed, width: 1.5),
      ),
    ),

    // Define a consistent style for all elevated buttons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryRed,
        foregroundColor: Colors.white, // Text color
        minimumSize: const Size(double.infinity, 50), // Full width, 50px high
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        textStyle: GoogleFonts.nunito(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    ),
  );
}