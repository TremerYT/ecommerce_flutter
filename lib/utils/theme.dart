import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  AppColors._();

  static const Color primary = Color(0xFF6A5AE0);
  static const Color accent = Color(0xFFF47B20);

  static const Color textPrimary = Color(0xFF1F2937);
  static const Color textSecondary = Color(0xFF6B7280);
  static const Color textOnPrimary = Colors.white;
  static const Color textOnSurface = Color(0xFF1F2937);

  static const Color background = Color(0xFFFFFFFF);
  static const Color surface = Color(0xFFF9FAFB);

  static const Color success = Color(0xFF22C55E);
  static const Color error = Color(0xFFEF4444);
  static const Color warning = Color(0xFFF59E0B);

  static const Color border = Color(0xFFE5E7EB);
  static const Color divider = Color(0xFFF3F4F6);
}

final ThemeData appTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.primary,
    primary: AppColors.primary,
    error: AppColors.error,
    surface: AppColors.surface,
    background: AppColors.background,
  ),

  scaffoldBackgroundColor: AppColors.background,
  dividerTheme: const DividerThemeData(
    color: AppColors.divider,
    thickness: 1.5,
  ),

  textTheme: TextTheme(
    headlineLarge: GoogleFonts.pacifico(
      fontSize: 32,
      fontWeight: FontWeight.w400,
      color: AppColors.textPrimary,
    ),
    displayLarge: GoogleFonts.poppins(
      fontSize: 32,
      fontWeight: FontWeight.normal,
      color: AppColors.textPrimary,
    ),
    displayMedium: GoogleFonts.poppins(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      color: AppColors.textPrimary,
    ),
    displaySmall: GoogleFonts.poppins(
      fontSize: 22,
      fontWeight: FontWeight.w500,
      color: AppColors.textPrimary,
    ),

    titleLarge: GoogleFonts.poppins(
      fontSize: 20,
      fontWeight: FontWeight.w600,
      color: AppColors.textPrimary,
    ),
    titleMedium: GoogleFonts.poppins(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: AppColors.textPrimary,
    ),
    titleSmall: GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.w500,
      color: AppColors.textPrimary,
    ),

    bodyLarge: GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.normal,
      color: AppColors.textSecondary,
    ),
    bodyMedium: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: AppColors.textSecondary,
    ),
    bodySmall: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.textSecondary,
    ),

    labelLarge: GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.w600,
      color: AppColors.textOnPrimary,
    ),
    labelMedium: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: AppColors.textOnPrimary,
    ),
    labelSmall: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w400,
      color: AppColors.textSecondary,
    ),
  ),

  appBarTheme: AppBarTheme(
    elevation: 0,
    scrolledUnderElevation: 1,
    backgroundColor: AppColors.background,
    surfaceTintColor: Colors.transparent,
    iconTheme: const IconThemeData(color: AppColors.textPrimary, size: 24),
    titleTextStyle: GoogleFonts.poppins(
      color: AppColors.textPrimary,
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primary,
      foregroundColor: AppColors.textOnPrimary,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      textStyle: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      ),
      elevation: 2,
    ),
  ),

  inputDecorationTheme: InputDecorationTheme(
    contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: AppColors.border),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: AppColors.border),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: AppColors.primary, width: 2.0),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(color: AppColors.error, width: 1.5),
    ),
    labelStyle: GoogleFonts.poppins(color: AppColors.textSecondary),
    hintStyle: GoogleFonts.poppins(
      color: AppColors.textSecondary.withOpacity(0.7),
    ),
    floatingLabelStyle: GoogleFonts.poppins(color: AppColors.primary),
    errorStyle: GoogleFonts.poppins(
      color: AppColors.error,
      fontWeight: FontWeight.w500,
    ),
  ),
);
