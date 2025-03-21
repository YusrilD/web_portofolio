// text_theme.dart
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  static TextTheme getTextTheme() {
    return TextTheme(
      headlineLarge: GoogleFonts.poppins(
        fontWeight: FontWeight.w600,
        fontSize: 36,
        color: const Color(0xFFCECECE),
      ),
      titleLarge: GoogleFonts.poppins(
        fontWeight: FontWeight.w600,
        fontSize: 20,
        color: const Color(0xFFCECECE),
      ),
      titleMedium: GoogleFonts.poppins(
        fontWeight: FontWeight.w600,
        fontSize: 18,
        color: const Color(0xFFCECECE),
      ),
      bodyMedium: GoogleFonts.poppins(
        fontWeight: FontWeight.w400,
        fontSize: 16,
        color: const Color(0xFFCECECE),
      ),
      bodySmall: GoogleFonts.poppins(
        fontWeight: FontWeight.w400,
        fontSize: 14,
        color: const Color(0xFFCECECE),
      ),
    );
  }
}
