import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color primaryColor = Color(0xFF6A5AE0);
  static const Color primaryTextColor = Colors.white;
  static const Color secondaryTextColor = Colors.black87;
  static const Color backgroundColor = Color(0xFFF5F5F5);
}

final ThemeData appTheme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: AppColors.primaryColor,
    primary: AppColors.primaryColor,
    background: AppColors.backgroundColor,
  ),

  textTheme: TextTheme(
    displayLarge: GoogleFonts.poppins(fontSize: 24, fontWeight: FontWeight.bold, color: AppColors.secondaryTextColor),
    titleLarge: GoogleFonts.poppins(fontSize: 30, fontWeight: FontWeight.w600, color: AppColors.secondaryTextColor),
    bodyMedium: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.normal, color: AppColors.secondaryTextColor),
    labelLarge: GoogleFonts.poppins(fontSize: 16, fontWeight: FontWeight.w500, color: AppColors.primaryTextColor),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: AppColors.primaryColor,
      foregroundColor: AppColors.primaryTextColor,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      textStyle: GoogleFonts.poppins(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      ),
    ),
  ),
);
