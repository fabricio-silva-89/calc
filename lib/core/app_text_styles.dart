import 'package:calc/core/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextStyles {
  static final TextStyle keyboardNumber = GoogleFonts.roboto(
    color: AppColors.white,
    fontSize: 24.0,
  );

  static final TextStyle keyboardSymbol = GoogleFonts.roboto(
    color: AppColors.gold,
    fontSize: 24.0,
  );

  static final TextStyle result = GoogleFonts.roboto(
    color: AppColors.white,
    fontSize: 78.0,
  );

  static final TextStyle input = GoogleFonts.roboto(
    color: AppColors.white,
    fontSize: 32.0,
  );
}
